package com.elderly.manage.service;

import java.util.List;
import java.util.Map;

import com.elderly.manage.domain.ActivityParticipant;

/**
 * 活动参与Service接口
 * 
 * @author rj
 * @date 2025-04-27
 */
public interface IActivityParticipantService 
{
    /**
     * 查询活动参与
     * 
     * @param participantId 活动参与主键
     * @return 活动参与
     */
    public ActivityParticipant selectActivityParticipantByParticipantId(String participantId);

    /**
     * 查询活动参与列表
     * 
     * @param activityParticipant 活动参与
     * @return 活动参与集合
     */
    public List<ActivityParticipant> selectActivityParticipantList(ActivityParticipant activityParticipant);

    /**
     * 新增活动参与
     * 
     * @param activityParticipant 活动参与
     * @return 结果
     */
    public int insertActivityParticipant(ActivityParticipant activityParticipant);

    /**
     * 修改活动参与
     * 
     * @param activityParticipant 活动参与
     * @return 结果
     */
    public int updateActivityParticipant(ActivityParticipant activityParticipant);

    /**
     * 批量删除活动参与
     * 
     * @param participantIds 需要删除的活动参与主键集合
     * @return 结果
     */
    public int deleteActivityParticipantByParticipantIds(String[] participantIds);

    /**
     * 删除活动参与信息
     * 
     * @param participantId 活动参与主键
     * @return 结果
     */

    public int deleteActivityParticipantByParticipantId(String participantId);

    List<Map<String, Object>> getActivityParticipantStats(Map<String, Object> params);

}
