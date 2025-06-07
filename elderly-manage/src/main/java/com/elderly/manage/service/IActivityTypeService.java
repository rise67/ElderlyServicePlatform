package com.elderly.manage.service;

import java.util.List;
import com.elderly.manage.domain.ActivityType;

/**
 * 活动类型Service接口
 * 
 * @author rj
 * @date 2025-04-26
 */
public interface IActivityTypeService 
{
    /**
     * 查询活动类型
     * 
     * @param typeId 活动类型主键
     * @return 活动类型
     */
    public ActivityType selectActivityTypeByTypeId(String typeId);

    /**
     * 查询活动类型列表
     * 
     * @param activityType 活动类型
     * @return 活动类型集合
     */
    public List<ActivityType> selectActivityTypeList(ActivityType activityType);

    /**
     * 新增活动类型
     * 
     * @param activityType 活动类型
     * @return 结果
     */
    public int insertActivityType(ActivityType activityType);

    /**
     * 修改活动类型
     * 
     * @param activityType 活动类型
     * @return 结果
     */
    public int updateActivityType(ActivityType activityType);

    /**
     * 批量删除活动类型
     * 
     * @param typeIds 需要删除的活动类型主键集合
     * @return 结果
     */
    public int deleteActivityTypeByTypeIds(String[] typeIds);

    /**
     * 删除活动类型信息
     * 
     * @param typeId 活动类型主键
     * @return 结果
     */
    public int deleteActivityTypeByTypeId(String typeId);
}
