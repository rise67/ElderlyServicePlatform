package com.elderly.manage.service;

import java.util.List;
import com.elderly.manage.domain.Elderly;

/**
 * 客户信息Service接口
 * 
 * @author rj
 * @date 2025-04-23
 */
public interface IElderlyService
{
    /**
     * 查询客户信息
     * 
     * @param id 客户信息主键
     * @return 客户信息
     */
    public Elderly selectElderlyById(String id);

    /**
     * 查询客户信息列表
     * 
     * @param elderly 客户信息
     * @return 客户信息集合
     */
    public List<Elderly> selectElderlyList(Elderly elderly);

    /**
     * 新增客户信息
     * 
     * @param elderly 客户信息
     * @return 结果
     */
    public int insertElderly(Elderly elderly);

    /**
     * 修改客户信息
     * 
     * @param elderly 客户信息
     * @return 结果
     */
    public int updateElderly(Elderly elderly);

    /**
     * 批量删除客户信息
     * 
     * @param ids 需要删除的客户信息主键集合
     * @return 结果
     */
    public int deleteElderlyByIds(String[] ids);

    /**
     * 删除客户信息信息
     * 
     * @param id 客户信息主键
     * @return 结果
     */
    public int deleteElderlyById(String id);
}
