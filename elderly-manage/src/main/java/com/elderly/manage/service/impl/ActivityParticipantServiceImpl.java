package com.elderly.manage.service.impl;

import java.util.List;
import java.util.Map;

import com.elderly.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.elderly.manage.mapper.ActivityParticipantMapper;
import com.elderly.manage.domain.ActivityParticipant;
import com.elderly.manage.service.IActivityParticipantService;

/**
 * 活动参与Service业务层处理
 * 
 * @author rj
 * @date 2025-04-27
 */
@Service
public class ActivityParticipantServiceImpl implements IActivityParticipantService 
{
    @Autowired
    private ActivityParticipantMapper activityParticipantMapper;

    /**
     * 查询活动参与
     * 
     * @param participantId 活动参与主键
     * @return 活动参与
     */
    @Override
    public ActivityParticipant selectActivityParticipantByParticipantId(String participantId)
    {
        return activityParticipantMapper.selectActivityParticipantByParticipantId(participantId);
    }

    /**
     * 查询活动参与列表
     * 
     * @param activityParticipant 活动参与
     * @return 活动参与
     */
    @Override
    public List<ActivityParticipant> selectActivityParticipantList(ActivityParticipant activityParticipant)
    {
        return activityParticipantMapper.selectActivityParticipantList(activityParticipant);
    }

    /**
     * 新增活动参与
     * 
     * @param activityParticipant 活动参与
     * @return 结果
     */
    @Override
    public int insertActivityParticipant(ActivityParticipant activityParticipant)
    {
        activityParticipant.setCreateTime(DateUtils.getNowDate());
        return activityParticipantMapper.insertActivityParticipant(activityParticipant);
    }

    /**
     * 修改活动参与
     * 
     * @param activityParticipant 活动参与
     * @return 结果
     */
    @Override
    public int updateActivityParticipant(ActivityParticipant activityParticipant)
    {
        activityParticipant.setUpdateTime(DateUtils.getNowDate());
        return activityParticipantMapper.updateActivityParticipant(activityParticipant);
    }

    /**
     * 批量删除活动参与
     * 
     * @param participantIds 需要删除的活动参与主键
     * @return 结果
     */
    @Override
    public int deleteActivityParticipantByParticipantIds(String[] participantIds)
    {
        return activityParticipantMapper.deleteActivityParticipantByParticipantIds(participantIds);
    }

    /**
     * 删除活动参与信息
     * 
     * @param participantId 活动参与主键
     * @return 结果
     */
    @Override
    public int deleteActivityParticipantByParticipantId(String participantId)
    {
        return activityParticipantMapper.deleteActivityParticipantByParticipantId(participantId);
    }

    @Override
    public List<Map<String, Object>> getActivityParticipantStats(Map<String, Object> params) {
        return activityParticipantMapper.getActivityParticipantStats(params);
    }
}
