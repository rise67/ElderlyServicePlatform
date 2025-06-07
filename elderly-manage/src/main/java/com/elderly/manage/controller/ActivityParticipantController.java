package com.elderly.manage.controller;

import java.util.Date;
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
import com.elderly.manage.domain.ActivityParticipant;
import com.elderly.manage.service.IActivityParticipantService;
import com.elderly.common.utils.poi.ExcelUtil;
import com.elderly.common.core.page.TableDataInfo;

/**
 * 活动参与Controller
 * 
 * @author rj
 * @date 2025-04-27
 */
@RestController
@RequestMapping("/manage/participant")
public class ActivityParticipantController extends BaseController
{
    @Autowired
    private IActivityParticipantService activityParticipantService;

    /**
     * 查询活动参与列表
     */
    @PreAuthorize("@ss.hasPermi('manage:participant:list')")
    @GetMapping("/list")
    public TableDataInfo list(ActivityParticipant activityParticipant)
    {
        startPage();
        List<ActivityParticipant> list = activityParticipantService.selectActivityParticipantList(activityParticipant);
        return getDataTable(list);
    }

    /**
     * 导出活动参与列表
     */
    @PreAuthorize("@ss.hasPermi('manage:participant:export')")
    @Log(title = "活动参与", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ActivityParticipant activityParticipant)
    {
        List<ActivityParticipant> list = activityParticipantService.selectActivityParticipantList(activityParticipant);
        ExcelUtil<ActivityParticipant> util = new ExcelUtil<ActivityParticipant>(ActivityParticipant.class);
        util.exportExcel(response, list, "活动参与数据");
    }

    /**
     * 获取活动参与详细信息
     */
    @PreAuthorize("@ss.hasPermi('manage:participant:query')")
    @GetMapping(value = "/{participantId}")
    public AjaxResult getInfo(@PathVariable("participantId") String participantId)
    {
        return success(activityParticipantService.selectActivityParticipantByParticipantId(participantId));
    }

    /**
     * 新增活动参与
     */
    @PreAuthorize("@ss.hasPermi('manage:participant:add')")
    @Log(title = "活动参与", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ActivityParticipant activityParticipant)
    {
        return toAjax(activityParticipantService.insertActivityParticipant(activityParticipant));
    }

    /**
     * 修改活动参与
     */
    @PreAuthorize("@ss.hasPermi('manage:participant:edit')")
    @Log(title = "活动参与", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ActivityParticipant activityParticipant)
    {
        return toAjax(activityParticipantService.updateActivityParticipant(activityParticipant));
    }

    /**
     * 删除活动参与
     */
    @PreAuthorize("@ss.hasPermi('manage:participant:remove')")
    @Log(title = "活动参与", businessType = BusinessType.DELETE)
	@DeleteMapping("/{participantIds}")
    public AjaxResult remove(@PathVariable String[] participantIds)
    {
        return toAjax(activityParticipantService.deleteActivityParticipantByParticipantIds(participantIds));
    }
    /**
     * 活动签到
     */
    @PreAuthorize("@ss.hasPermi('manage:participant:edit')")
    @Log(title = "活动签到", businessType = BusinessType.UPDATE)
    @PutMapping  ("/signin")
    public AjaxResult signIn(@RequestBody ActivityParticipant activityParticipant)
    {
        // 验证参数
        if (activityParticipant.getParticipantId() == null) {
            return error("参与ID不能为空");
        }

        // 设置签到时间和状态
        activityParticipant.setSignInTime(new Date());
        activityParticipant.setParticipantStatus(1); // 1-已签到

        return toAjax(activityParticipantService.updateActivityParticipant(activityParticipant));
    }

    /**
     * 取消报名
     */
    @PreAuthorize("@ss.hasPermi('manage:participant:edit')")
    @Log(title = "取消活动报名", businessType = BusinessType.UPDATE)
    @PutMapping("/cancel/{participantId}")
    public AjaxResult cancelRegistration(@PathVariable("participantId") String participantId)
    {
        // 获取参与记录
        ActivityParticipant participant = activityParticipantService.selectActivityParticipantByParticipantId(participantId);
        if (participant == null) {
            return error("参与记录不存在");
        }

        // 检查状态是否允许取消
        if (participant.getParticipantStatus() > 0) {
            return error("已签到或已完成的活动不能取消");
        }

        // 删除参与记录
        return toAjax(activityParticipantService.deleteActivityParticipantByParticipantId(participantId));
    }

    /**
     * 提交活动反馈
     */
    @PreAuthorize("@ss.hasPermi('manage:participant:edit')")
    @Log(title = "提交活动反馈", businessType = BusinessType.UPDATE)
    @PutMapping("/feedback")
    public AjaxResult submitFeedback(@RequestBody ActivityParticipant activityParticipant)
    {
        // 验证参数
        if (activityParticipant.getParticipantId() == null) {
            return error("参与ID不能为空");
        }

        if (activityParticipant.getRating() == null) {
            return error("评分不能为空");
        }

        // 设置反馈时间和状态
        activityParticipant.setUpdateTime(new Date());
        activityParticipant.setParticipantStatus(2); // 2-已完成

        return toAjax(activityParticipantService.updateActivityParticipant(activityParticipant));
    }


}
