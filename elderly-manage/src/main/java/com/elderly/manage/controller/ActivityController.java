package com.elderly.manage.controller;

import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.elderly.manage.domain.ActivityParticipant;
import com.elderly.manage.service.IActivityParticipantService;
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
import com.elderly.manage.domain.Activity;
import com.elderly.manage.service.IActivityService;
import com.elderly.common.utils.poi.ExcelUtil;
import com.elderly.common.core.page.TableDataInfo;

/**
 * 活动信息Controller
 * 
 * @author rj
 * @date 2025-04-26
 */
@RestController
@RequestMapping("/manage/activity")
public class ActivityController extends BaseController
{
    @Autowired
    private IActivityService activityService;

    /**
     * 查询活动信息列表
     */
    @PreAuthorize("@ss.hasPermi('manage:activity:list')")
    @GetMapping("/list")
    public TableDataInfo list(Activity activity)
    {
        startPage();
        List<Activity> list = activityService.selectActivityList(activity);
        return getDataTable(list);
    }

    /**
     * 导出活动信息列表
     */
    @PreAuthorize("@ss.hasPermi('manage:activity:export')")
    @Log(title = "活动信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Activity activity)
    {
        List<Activity> list = activityService.selectActivityList(activity);
        ExcelUtil<Activity> util = new ExcelUtil<Activity>(Activity.class);
        util.exportExcel(response, list, "活动信息数据");
    }

    /**
     * 获取活动信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('manage:activity:query')")
    @GetMapping(value = "/{activityId}")
    public AjaxResult getInfo(@PathVariable("activityId") String activityId)
    {
        return success(activityService.selectActivityByActivityId(activityId));
    }

    /**
     * 新增活动信息
     */
    @PreAuthorize("@ss.hasPermi('manage:activity:add')")
    @Log(title = "活动信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Activity activity)
    {
        System.out.println("Received startTime: " + activity.getStartTime());
        System.out.println("Received endTime: " + activity.getEndTime());
        return toAjax(activityService.insertActivity(activity));
    }

    /**
     * 修改活动信息
     */
    @PreAuthorize("@ss.hasPermi('manage:activity:edit')")
    @Log(title = "活动信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Activity activity)
    {
        return toAjax(activityService.updateActivity(activity));
    }

    /**
     * 删除活动信息
     */
    @PreAuthorize("@ss.hasPermi('manage:activity:remove')")
    @Log(title = "活动信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{activityIds}")
    public AjaxResult remove(@PathVariable String[] activityIds)
    {
        return toAjax(activityService.deleteActivityByActivityIds(activityIds));
    }

}
