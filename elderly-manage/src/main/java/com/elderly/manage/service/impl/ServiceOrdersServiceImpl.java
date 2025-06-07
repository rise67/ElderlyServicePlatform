package com.elderly.manage.service.impl;

import java.util.List;
import com.elderly.common.utils.DateUtils;
import com.elderly.manage.domain.OrderItems;
import com.elderly.manage.mapper.OrderItemsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.elderly.manage.mapper.ServiceOrdersMapper;
import com.elderly.manage.domain.ServiceOrders;
import com.elderly.manage.service.IServiceOrdersService;

/**
 * 服务订单Service业务层处理
 * 
 * @author rj
 * @date 2025-04-22
 */
@Service
public class ServiceOrdersServiceImpl implements IServiceOrdersService 
{
    @Autowired
    private ServiceOrdersMapper serviceOrdersMapper;
    @Autowired
    private OrderItemsMapper orderItemsMapper;

    /**
     * 查询服务订单
     * 
     * @param orderId 服务订单主键
     * @return 服务订单
     */
    @Override
    public ServiceOrders selectServiceOrdersByOrderId(String orderId)
    {
        return serviceOrdersMapper.selectServiceOrdersByOrderId(orderId);
    }

    @Override
    public List<OrderItems> selectOrderItemsByOrderId(String orderId) {
        // 验证订单是否存在
        ServiceOrders order = serviceOrdersMapper.selectServiceOrdersByOrderId(orderId);
        if (order == null) {
            System.out.println("订单不存在");
        }
        // 查询订单明细
        return serviceOrdersMapper.selectOrderItemsByOrderId(orderId);
    }


    /**
     * 查询服务订单列表
     * 
     * @param serviceOrders 服务订单
     * @return 服务订单
     */
    @Override
    public List<ServiceOrders> selectServiceOrdersList(ServiceOrders serviceOrders)
    {
        return serviceOrdersMapper.selectServiceOrdersList(serviceOrders);
    }

    /**
     * 新增服务订单
     * 
     * @param serviceOrders 服务订单
     * @return 结果
     */
    @Override
    public int insertServiceOrders(ServiceOrders serviceOrders)
    {
        serviceOrders.setCreateTime(DateUtils.getNowDate());
        return serviceOrdersMapper.insertServiceOrders(serviceOrders);
    }

    /**
     * 修改服务订单
     * 
     * @param serviceOrders 服务订单
     * @return 结果
     */
    @Override
    public int updateServiceOrders(ServiceOrders serviceOrders)
    {
        serviceOrders.setUpdateTime(DateUtils.getNowDate());
        return serviceOrdersMapper.updateServiceOrders(serviceOrders);
    }

    /**
     * 批量删除服务订单
     * 
     * @param orderIds 需要删除的服务订单主键
     * @return 结果
     */
    @Override
    public int deleteServiceOrdersByOrderIds(String[] orderIds)
    {
        for (String orderId : orderIds) {
            orderItemsMapper.deleteOrderItemsByOrderId(orderId);
        }
        return serviceOrdersMapper.deleteServiceOrdersByOrderIds(orderIds);
    }

    /**
     * 删除服务订单信息
     * 
     * @param orderId 服务订单主键
     * @return 结果
     */
    @Override
    public int deleteServiceOrdersByOrderId(String orderId)
    {
        orderItemsMapper.deleteOrderItemsByOrderId(orderId);
        return serviceOrdersMapper.deleteServiceOrdersByOrderId(orderId);
    }
}
