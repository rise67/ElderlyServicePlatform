package com.elderly.manage.service;

import java.util.List;

import com.elderly.manage.domain.OrderItems;
import com.elderly.manage.domain.ServiceOrders;

/**
 * 服务订单Service接口
 * 
 * @author rj
 * @date 2025-04-22
 */
public interface IServiceOrdersService 
{
    /**
     * 查询服务订单
     * 
     * @param orderId 服务订单主键
     * @return 服务订单
     */
    public ServiceOrders selectServiceOrdersByOrderId(String orderId);
    /**
     * 查询服务订单
     *
     * @param orderId 服务订单主键
     * @return 服务订单
     */
    public List<OrderItems> selectOrderItemsByOrderId(String orderId);
    /**
     * 查询服务订单列表
     * 
     * @param serviceOrders 服务订单
     * @return 服务订单集合
     */
    public List<ServiceOrders> selectServiceOrdersList(ServiceOrders serviceOrders);

    /**
     * 新增服务订单
     * 
     * @param serviceOrders 服务订单
     * @return 结果
     */
    public int insertServiceOrders(ServiceOrders serviceOrders);

    /**
     * 修改服务订单
     * 
     * @param serviceOrders 服务订单
     * @return 结果
     */
    public int updateServiceOrders(ServiceOrders serviceOrders);

    /**
     * 批量删除服务订单
     * 
     * @param orderIds 需要删除的服务订单主键集合
     * @return 结果
     */
    public int deleteServiceOrdersByOrderIds(String[] orderIds);

    /**
     * 删除服务订单信息
     * 
     * @param orderId 服务订单主键
     * @return 结果
     */
    public int deleteServiceOrdersByOrderId(String orderId);
}
