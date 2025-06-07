package com.elderly.manage.mapper;

import java.util.List;
import java.util.Map;

import com.elderly.manage.domain.ActivityParticipant;
import org.apache.ibatis.annotations.Mapper;

/**
 * 活动参与Mapper接口
 * 
 * @author rj
 * @date 2025-04-27
 */
@Mapper
public interface ActivityParticipantMapper 
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
     * 删除活动参与
     * 
     * @param participantId 活动参与主键
     * @return 结果
     */
    public int deleteActivityParticipantByParticipantId(String participantId);

    /**
     * 批量删除活动参与
     * 
     * @param participantIds 需要删除的数据主键集合
     * @return 结果
     */

    public int deleteActivityParticipantByParticipantIds(String[] participantIds);

    List<Map<String, Object>> getActivityParticipantStats(Map<String, Object> params);
}
