package com.elderly.manage.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.elderly.manage.domain.Elderly;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.elderly.common.annotation.Log;
import com.elderly.common.core.controller.BaseController;
import com.elderly.common.core.domain.AjaxResult;
import com.elderly.common.enums.BusinessType;
import com.elderly.manage.service.IElderlyService;
import com.elderly.common.utils.poi.ExcelUtil;
import com.elderly.common.core.page.TableDataInfo;

/**
 * 老人信息Controller
 * 
 * @author rj
 * @date 2025-04-23
 */
@RestController
@RequestMapping("/manage/elderly")
public class ElderlyController extends BaseController
{
    @Autowired
    private IElderlyService elderlyService;

    /**
     * 查询老人信息列表
     */
    @PreAuthorize("@ss.hasPermi('manage:elderly:list')")
    @GetMapping("/list")
    public TableDataInfo list(Elderly elderly)
    {
        startPage();
        List<Elderly> list = elderlyService.selectElderlyList(elderly);
        return getDataTable(list);
    }

    /**
     * 导出老人信息列表
     */
    @PreAuthorize("@ss.hasPermi('manage:elderly:export')")
    @Log(title = "老人信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Elderly elderly)
    {
        List<Elderly> list = elderlyService.selectElderlyList(elderly);
        ExcelUtil<Elderly> util = new ExcelUtil<Elderly>(Elderly.class);
        util.exportExcel(response, list, "老人信息数据");
    }

    /**
     * 获取老人信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('manage:elderly:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return success(elderlyService.selectElderlyById(id));
    }

    /**
     * 新增老人信息
     */
    @PreAuthorize("@ss.hasPermi('manage:elderly:add')")
    @Log(title = "老人信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Elderly elderly)
    {
        return toAjax(elderlyService.insertElderly(elderly));
    }

    /**
     * 修改老人信息
     */
    @PreAuthorize("@ss.hasPermi('manage:elderly:edit')")
    @Log(title = "老人信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Elderly elderly)
    {
        return toAjax(elderlyService.updateElderly(elderly));
    }

    /**
     * 删除老人信息
     */
    @PreAuthorize("@ss.hasPermi('manage:elderly:remove')")
    @Log(title = "老人信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(elderlyService.deleteElderlyByIds(ids));
    }
}
