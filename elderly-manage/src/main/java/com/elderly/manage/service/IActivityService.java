package com.elderly.manage.service;

import java.util.List;
import java.util.Map;

import com.elderly.manage.domain.Activity;

/**
 * 活动信息Service接口
 * 
 * @author rj
 * @date 2025-04-26
 */
public interface IActivityService 
{
    /**
     * 查询活动信息
     * 
     * @param activityId 活动信息主键
     * @return 活动信息
     */
    public Activity selectActivityByActivityId(String activityId);

    /**
     * 查询活动信息列表
     * 
     * @param activity 活动信息
     * @return 活动信息集合
     */
    public List<Activity> selectActivityList(Activity activity);

    /**
     * 新增活动信息
     * 
     * @param activity 活动信息
     * @return 结果
     */
    public int insertActivity(Activity activity);

    /**
     * 修改活动信息
     * 
     * @param activity 活动信息
     * @return 结果
     */
    public int updateActivity(Activity activity);

    /**
     * 批量删除活动信息
     * 
     * @param activityIds 需要删除的活动信息主键集合
     * @return 结果
     */
    public int deleteActivityByActivityIds(String[] activityIds);

    /**
     * 删除活动信息信息
     * 
     * @param activityId 活动信息主键
     * @return 结果
     */
    public int deleteActivityByActivityId(String activityId);

    List<Map<String, Object>> getActivityDetailStats(Map<String, Object> params);
}
