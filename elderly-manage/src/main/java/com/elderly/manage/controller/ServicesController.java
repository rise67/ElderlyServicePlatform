package com.elderly.manage.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
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
import com.elderly.manage.domain.Services;
import com.elderly.manage.service.IServicesService;
import com.elderly.common.utils.poi.ExcelUtil;
import com.elderly.common.core.page.TableDataInfo;

/**
 * 服务信息Controller
 * 
 * @author rj
 * @date 2025-04-22
 */
@RestController
@RequestMapping("/manage/services")
public class ServicesController extends BaseController
{
    @Autowired
    private IServicesService servicesService;

    /**
     * 查询服务信息列表
     */
    @PreAuthorize("@ss.hasPermi('manage:services:list')")
    @GetMapping("/list")
    public TableDataInfo list(Services services)
    {
        startPage();
        List<Services> list = servicesService.selectServicesList(services);
        return getDataTable(list);
    }

    /**
     * 导出服务信息列表
     */
    @PreAuthorize("@ss.hasPermi('manage:services:export')")
    @Log(title = "服务信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Services services)
    {
        List<Services> list = servicesService.selectServicesList(services);
        ExcelUtil<Services> util = new ExcelUtil<Services>(Services.class);
        util.exportExcel(response, list, "服务信息数据");
    }

    /**
     * 获取服务信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('manage:services:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return success(servicesService.selectServicesById(id));
    }

    /**
     * 新增服务信息
     */
    @PreAuthorize("@ss.hasPermi('manage:services:add')")
    @Log(title = "服务信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Services services)
    {
        return toAjax(servicesService.insertServices(services));
    }

    /**
     * 修改服务信息
     */
    @PreAuthorize("@ss.hasPermi('manage:services:edit')")
    @Log(title = "服务信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Services services)
    {
        return toAjax(servicesService.updateServices(services));
    }

    /**
     * 删除服务信息
     */
    @PreAuthorize("@ss.hasPermi('manage:services:remove')")
    @Log(title = "服务信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(servicesService.deleteServicesByIds(ids));
    }
}
