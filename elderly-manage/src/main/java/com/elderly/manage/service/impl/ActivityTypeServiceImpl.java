package com.elderly.manage.service.impl;

import java.util.List;
import com.elderly.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.elderly.manage.mapper.ActivityTypeMapper;
import com.elderly.manage.domain.ActivityType;
import com.elderly.manage.service.IActivityTypeService;

/**
 * 活动类型Service业务层处理
 * 
 * @author rj
 * @date 2025-04-26
 */
@Service
public class ActivityTypeServiceImpl implements IActivityTypeService 
{
    @Autowired
    private ActivityTypeMapper activityTypeMapper;

    /**
     * 查询活动类型
     * 
     * @param typeId 活动类型主键
     * @return 活动类型
     */
    @Override
    public ActivityType selectActivityTypeByTypeId(String typeId)
    {
        return activityTypeMapper.selectActivityTypeByTypeId(typeId);
    }

    /**
     * 查询活动类型列表
     * 
     * @param activityType 活动类型
     * @return 活动类型
     */
    @Override
    public List<ActivityType> selectActivityTypeList(ActivityType activityType)
    {
        return activityTypeMapper.selectActivityTypeList(activityType);
    }

    /**
     * 新增活动类型
     * 
     * @param activityType 活动类型
     * @return 结果
     */
    @Override
    public int insertActivityType(ActivityType activityType)
    {
        activityType.setCreateTime(DateUtils.getNowDate());
        return activityTypeMapper.insertActivityType(activityType);
    }

    /**
     * 修改活动类型
     * 
     * @param activityType 活动类型
     * @return 结果
     */
    @Override
    public int updateActivityType(ActivityType activityType)
    {
        activityType.setUpdateTime(DateUtils.getNowDate());
        return activityTypeMapper.updateActivityType(activityType);
    }

    /**
     * 批量删除活动类型
     * 
     * @param typeIds 需要删除的活动类型主键
     * @return 结果
     */
    @Override
    public int deleteActivityTypeByTypeIds(String[] typeIds)
    {
        return activityTypeMapper.deleteActivityTypeByTypeIds(typeIds);
    }

    /**
     * 删除活动类型信息
     * 
     * @param typeId 活动类型主键
     * @return 结果
     */
    @Override
    public int deleteActivityTypeByTypeId(String typeId)
    {
        return activityTypeMapper.deleteActivityTypeByTypeId(typeId);
    }
}
