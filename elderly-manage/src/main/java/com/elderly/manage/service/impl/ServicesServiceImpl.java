package com.elderly.manage.service.impl;

import java.util.List;
import com.elderly.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.elderly.manage.mapper.ServicesMapper;
import com.elderly.manage.domain.Services;
import com.elderly.manage.service.IServicesService;

/**
 * 服务信息Service业务层处理
 * 
 * @author rj
 * @date 2025-04-22
 */
@Service
public class ServicesServiceImpl implements IServicesService 
{
    @Autowired
    private ServicesMapper servicesMapper;

    /**
     * 查询服务信息
     * 
     * @param id 服务信息主键
     * @return 服务信息
     */
    @Override
    public Services selectServicesById(String id)
    {
        return servicesMapper.selectServicesById(id);
    }

    /**
     * 查询服务信息列表
     * 
     * @param services 服务信息
     * @return 服务信息
     */
    @Override
    public List<Services> selectServicesList(Services services)
    {
        return servicesMapper.selectServicesList(services);
    }

    /**
     * 新增服务信息
     * 
     * @param services 服务信息
     * @return 结果
     */
    @Override
    public int insertServices(Services services)
    {
        services.setCreateTime(DateUtils.getNowDate());
        return servicesMapper.insertServices(services);
    }

    /**
     * 修改服务信息
     * 
     * @param services 服务信息
     * @return 结果
     */
    @Override
    public int updateServices(Services services)
    {
        return servicesMapper.updateServices(services);
    }

    /**
     * 批量删除服务信息
     * 
     * @param ids 需要删除的服务信息主键
     * @return 结果
     */
    @Override
    public int deleteServicesByIds(String[] ids)
    {
        return servicesMapper.deleteServicesByIds(ids);
    }

    /**
     * 删除服务信息信息
     * 
     * @param id 服务信息主键
     * @return 结果
     */
    @Override
    public int deleteServicesById(String id)
    {
        return servicesMapper.deleteServicesById(id);
    }
}
