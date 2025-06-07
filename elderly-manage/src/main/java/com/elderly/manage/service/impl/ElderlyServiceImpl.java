package com.elderly.manage.service.impl;

import java.util.List;
import com.elderly.common.utils.DateUtils;
import com.elderly.manage.domain.Elderly;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.elderly.manage.mapper.ElderlyMapper;
import com.elderly.manage.service.IElderlyService;

/**
 * 客户信息Service业务层处理
 * 
 * @author rj
 * @date 2025-04-23
 */
@Service
public class ElderlyServiceImpl implements IElderlyService
{
    @Autowired
    private ElderlyMapper elderlyMapper;

    /**
     * 查询客户信息
     * 
     * @param id 客户信息主键
     * @return 客户信息
     */
    @Override
    public Elderly selectElderlyById(String id)
    {
        return elderlyMapper.selectElderlyById(id);
    }

    /**
     * 查询客户信息列表
     * 
     * @param elderly 客户信息
     * @return 客户信息
     */
    @Override
    public List<Elderly> selectElderlyList(Elderly elderly)
    {
        return elderlyMapper.selectElderlyList(elderly);
    }

    /**
     * 新增客户信息
     * 
     * @param elderly 客户信息
     * @return 结果
     */
    @Override
    public int insertElderly(Elderly elderly)
    {
        elderly.setCreateTime(DateUtils.getNowDate());
        return elderlyMapper.insertElderly(elderly);
    }

    /**
     * 修改客户信息
     * 
     * @param elderly 客户信息
     * @return 结果
     */
    @Override
    public int updateElderly(Elderly elderly)
    {
        elderly.setUpdateTime(DateUtils.getNowDate());
        return elderlyMapper.updateElderly(elderly);
    }

    /**
     * 批量删除客户信息
     * 
     * @param ids 需要删除的客户信息主键
     * @return 结果
     */
    @Override
    public int deleteElderlyByIds(String[] ids)
    {
        return elderlyMapper.deleteElderlyByIds(ids);
    }

    /**
     * 删除客户信息信息
     * 
     * @param id 客户信息主键
     * @return 结果
     */
    @Override
    public int deleteElderlyById(String id)
    {
        return elderlyMapper.deleteElderlyById(id);
    }
}
