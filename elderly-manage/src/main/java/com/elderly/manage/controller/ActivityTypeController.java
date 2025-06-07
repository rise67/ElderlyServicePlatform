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
import com.elderly.manage.domain.ActivityType;
import com.elderly.manage.service.IActivityTypeService;
import com.elderly.common.utils.poi.ExcelUtil;
import com.elderly.common.core.page.TableDataInfo;

/**
 * 活动类型Controller
 * 
 * @author rj
 * @date 2025-04-26
 */
@RestController
@RequestMapping("/manage/type")
public class ActivityTypeController extends BaseController
{
    @Autowired
    private IActivityTypeService activityTypeService;

    /**
     * 查询活动类型列表
     */
    @PreAuthorize("@ss.hasPermi('manage:type:list')")
    @GetMapping("/list")
    public TableDataInfo list(ActivityType activityType)
    {
        startPage();
        List<ActivityType> list = activityTypeService.selectActivityTypeList(activityType);
        return getDataTable(list);
    }

    /**
     * 导出活动类型列表
     */
    @PreAuthorize("@ss.hasPermi('manage:type:export')")
    @Log(title = "活动类型", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ActivityType activityType)
    {
        List<ActivityType> list = activityTypeService.selectActivityTypeList(activityType);
        ExcelUtil<ActivityType> util = new ExcelUtil<ActivityType>(ActivityType.class);
        util.exportExcel(response, list, "活动类型数据");
    }

    /**
     * 获取活动类型详细信息
     */
    @PreAuthorize("@ss.hasPermi('manage:type:query')")
    @GetMapping(value = "/{typeId}")
    public AjaxResult getInfo(@PathVariable("typeId") String typeId)
    {
        return success(activityTypeService.selectActivityTypeByTypeId(typeId));
    }

    /**
     * 新增活动类型
     */
    @PreAuthorize("@ss.hasPermi('manage:type:add')")
    @Log(title = "活动类型", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ActivityType activityType)
    {
        return toAjax(activityTypeService.insertActivityType(activityType));
    }

    /**
     * 修改活动类型
     */
    @PreAuthorize("@ss.hasPermi('manage:type:edit')")
    @Log(title = "活动类型", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ActivityType activityType)
    {
        return toAjax(activityTypeService.updateActivityType(activityType));
    }

    /**
     * 删除活动类型
     */
    @PreAuthorize("@ss.hasPermi('manage:type:remove')")
    @Log(title = "活动类型", businessType = BusinessType.DELETE)
	@DeleteMapping("/{typeIds}")
    public AjaxResult remove(@PathVariable String[] typeIds)
    {
        return toAjax(activityTypeService.deleteActivityTypeByTypeIds(typeIds));
    }
}
