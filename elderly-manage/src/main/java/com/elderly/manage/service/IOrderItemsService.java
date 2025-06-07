package com.elderly.manage.service;

import java.util.List;
import com.elderly.manage.domain.OrderItems;

/**
 * 订单明细Service接口
 * 
 * @author rj
 * @date 2025-04-22
 */
public interface IOrderItemsService 
{
    /**
     * 查询订单明细
     * 
     * @param itemId 订单明细主键
     * @return 订单明细
     */
    public OrderItems selectOrderItemsByItemId(String itemId);

    /**
     * 查询订单明细列表
     * 
     * @param orderItems 订单明细
     * @return 订单明细集合
     */
    public List<OrderItems> selectOrderItemsList(OrderItems orderItems);

    /**
     * 新增订单明细
     * 
     * @param orderItems 订单明细
     * @return 结果
     */
    public int insertOrderItems(OrderItems orderItems);

    /**
     * 修改订单明细
     * 
     * @param orderItems 订单明细
     * @return 结果
     */
    public int updateOrderItems(OrderItems orderItems);

    /**
     * 批量删除订单明细
     * 
     * @param itemIds 需要删除的订单明细主键集合
     * @return 结果
     */
    public int deleteOrderItemsByItemIds(String[] itemIds);

    /**
     * 删除订单明细信息
     * 
     * @param itemId 订单明细主键
     * @return 结果
     */
    public int deleteOrderItemsByItemId(String itemId);
}
