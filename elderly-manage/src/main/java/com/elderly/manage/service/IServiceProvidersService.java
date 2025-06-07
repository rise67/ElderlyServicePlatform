package com.elderly.manage.service;

import java.util.List;
import com.elderly.manage.domain.ServiceProviders;

/**
 * 服务人员Service接口
 * 
 * @author ry
 * @date 2025-04-22
 */
public interface IServiceProvidersService 
{
    /**
     * 查询服务人员
     * 
     * @param id 服务人员主键
     * @return 服务人员
     */
    public ServiceProviders selectServiceProvidersById(String id);

    /**
     * 查询服务人员列表
     * 
     * @param serviceProviders 服务人员
     * @return 服务人员集合
     */
    public List<ServiceProviders> selectServiceProvidersList(ServiceProviders serviceProviders);

    /**
     * 新增服务人员
     * 
     * @param serviceProviders 服务人员
     * @return 结果
     */
    public int insertServiceProviders(ServiceProviders serviceProviders);

    /**
     * 修改服务人员
     * 
     * @param serviceProviders 服务人员
     * @return 结果
     */
    public int updateServiceProviders(ServiceProviders serviceProviders);

    /**
     * 批量删除服务人员
     * 
     * @param ids 需要删除的服务人员主键集合
     * @return 结果
     */
    public int deleteServiceProvidersByIds(String[] ids);

    /**
     * 删除服务人员信息
     * 
     * @param id 服务人员主键
     * @return 结果
     */
    public int deleteServiceProvidersById(String id);
}
