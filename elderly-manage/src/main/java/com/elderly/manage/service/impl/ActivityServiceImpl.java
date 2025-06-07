package com.elderly.manage.service.impl;

import java.util.List;
import java.util.Map;

import com.elderly.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.elderly.manage.mapper.ActivityMapper;
import com.elderly.manage.domain.Activity;
import com.elderly.manage.service.IActivityService;

/**
 * 活动信息Service业务层处理
 * 
 * @author rj
 * @date 2025-04-26
 */
@Service
public class ActivityServiceImpl implements IActivityService 
{
    @Autowired
    private ActivityMapper activityMapper;

    /**
     * 查询活动信息
     * 
     * @param activityId 活动信息主键
     * @return 活动信息
     */
    @Override
    public Activity selectActivityByActivityId(String activityId)
    {
        return activityMapper.selectActivityByActivityId(activityId);
    }

    /**
     * 查询活动信息列表
     * 
     * @param activity 活动信息
     * @return 活动信息
     */
    @Override
    public List<Activity> selectActivityList(Activity activity)
    {
        return activityMapper.selectActivityList(activity);
    }

    /**
     * 新增活动信息
     * 
     * @param activity 活动信息
     * @return 结果
     */
    @Override
    public int insertActivity(Activity activity)
    {
        activity.setCreateTime(DateUtils.getNowDate());
        return activityMapper.insertActivity(activity);
    }

    /**
     * 修改活动信息
     * 
     * @param activity 活动信息
     * @return 结果
     */
    @Override
    public int updateActivity(Activity activity)
    {
        activity.setUpdateTime(DateUtils.getNowDate());
        return activityMapper.updateActivity(activity);
    }

    /**
     * 批量删除活动信息
     * 
     * @param activityIds 需要删除的活动信息主键
     * @return 结果
     */
    @Override
    public int deleteActivityByActivityIds(String[] activityIds)
    {
        return activityMapper.deleteActivityByActivityIds(activityIds);
    }

    /**
     * 删除活动信息信息
     * 
     * @param activityId 活动信息主键
     * @return 结果
     */
    @Override
    public int deleteActivityByActivityId(String activityId)
    {
        return activityMapper.deleteActivityByActivityId(activityId);
    }

    @Override
    public List<Map<String, Object>> getActivityDetailStats(Map<String, Object> params) {
        return activityMapper.getActivityDetailStats(params);
    }
}
