package com.elderly.manage.service;

import java.util.List;
import com.elderly.manage.domain.Services;

/**
 * 服务信息Service接口
 * 
 * @author rj
 * @date 2025-04-22
 */
public interface IServicesService 
{
    /**
     * 查询服务信息
     * 
     * @param id 服务信息主键
     * @return 服务信息
     */
    public Services selectServicesById(String id);

    /**
     * 查询服务信息列表
     * 
     * @param services 服务信息
     * @return 服务信息集合
     */
    public List<Services> selectServicesList(Services services);

    /**
     * 新增服务信息
     * 
     * @param services 服务信息
     * @return 结果
     */
    public int insertServices(Services services);

    /**
     * 修改服务信息
     * 
     * @param services 服务信息
     * @return 结果
     */
    public int updateServices(Services services);

    /**
     * 批量删除服务信息
     * 
     * @param ids 需要删除的服务信息主键集合
     * @return 结果
     */
    public int deleteServicesByIds(String[] ids);

    /**
     * 删除服务信息信息
     * 
     * @param id 服务信息主键
     * @return 结果
     */
    public int deleteServicesById(String id);
}
