package com.elderly.manage.mapper;

import java.util.List;
import java.util.Map;

import com.elderly.manage.domain.Activity;
import org.apache.ibatis.annotations.Mapper;

/**
 * 活动信息Mapper接口
 * 
 * @author rj
 * @date 2025-04-26
 */
@Mapper
public interface ActivityMapper 
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
     * 删除活动信息
     * 
     * @param activityId 活动信息主键
     * @return 结果
     */
    public int deleteActivityByActivityId(String activityId);

    /**
     * 批量删除活动信息
     * 
     * @param activityIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteActivityByActivityIds(String[] activityIds);

    public List<Map<String, Object>> getActivityDetailStats(Map<String, Object> params);
}
