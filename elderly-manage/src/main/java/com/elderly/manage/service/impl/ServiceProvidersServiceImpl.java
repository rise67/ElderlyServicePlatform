package com.elderly.manage.service.impl;

import java.util.List;
import com.elderly.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.elderly.manage.mapper.ServiceProvidersMapper;
import com.elderly.manage.domain.ServiceProviders;
import com.elderly.manage.service.IServiceProvidersService;

/**
 * 服务人员Service业务层处理
 * 
 * @author ry
 * @date 2025-04-22
 */
@Service
public class ServiceProvidersServiceImpl implements IServiceProvidersService 
{
    @Autowired
    private ServiceProvidersMapper serviceProvidersMapper;

    /**
     * 查询服务人员
     * 
     * @param id 服务人员主键
     * @return 服务人员
     */
    @Override
    public ServiceProviders selectServiceProvidersById(String id)
    {
        return serviceProvidersMapper.selectServiceProvidersById(id);
    }

    /**
     * 查询服务人员列表
     * 
     * @param serviceProviders 服务人员
     * @return 服务人员
     */
    @Override
    public List<ServiceProviders> selectServiceProvidersList(ServiceProviders serviceProviders)
    {
        return serviceProvidersMapper.selectServiceProvidersList(serviceProviders);
    }

    /**
     * 新增服务人员
     * 
     * @param serviceProviders 服务人员
     * @return 结果
     */
    @Override
    public int insertServiceProviders(ServiceProviders serviceProviders)
    {
        serviceProviders.setCreateTime(DateUtils.getNowDate());
        return serviceProvidersMapper.insertServiceProviders(serviceProviders);
    }

    /**
     * 修改服务人员
     * 
     * @param serviceProviders 服务人员
     * @return 结果
     */
    @Override
    public int updateServiceProviders(ServiceProviders serviceProviders)
    {
        serviceProviders.setUpdateTime(DateUtils.getNowDate());
        return serviceProvidersMapper.updateServiceProviders(serviceProviders);
    }

    /**
     * 批量删除服务人员
     * 
     * @param ids 需要删除的服务人员主键
     * @return 结果
     */
    @Override
    public int deleteServiceProvidersByIds(String[] ids)
    {
        return serviceProvidersMapper.deleteServiceProvidersByIds(ids);
    }

    /**
     * 删除服务人员信息
     * 
     * @param id 服务人员主键
     * @return 结果
     */
    @Override
    public int deleteServiceProvidersById(String id)
    {
        return serviceProvidersMapper.deleteServiceProvidersById(id);
    }
}
