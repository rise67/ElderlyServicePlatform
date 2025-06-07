package com.elderly.manage.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.elderly.manage.mapper.OrderItemsMapper;
import com.elderly.manage.domain.OrderItems;
import com.elderly.manage.service.IOrderItemsService;

/**
 * 订单明细Service业务层处理
 * 
 * @author rj
 * @date 2025-04-22
 */
@Service
public class OrderItemsServiceImpl implements IOrderItemsService 
{
    @Autowired
    private OrderItemsMapper orderItemsMapper;

    /**
     * 查询订单明细
     * 
     * @param itemId 订单明细主键
     * @return 订单明细
     */
    @Override
    public OrderItems selectOrderItemsByItemId(String itemId)
    {
        return orderItemsMapper.selectOrderItemsByItemId(itemId);
    }

    /**
     * 查询订单明细列表
     * 
     * @param orderItems 订单明细
     * @return 订单明细
     */
    @Override
    public List<OrderItems> selectOrderItemsList(OrderItems orderItems)
    {
        return orderItemsMapper.selectOrderItemsList(orderItems);
    }

    /**
     * 新增订单明细
     * 
     * @param orderItems 订单明细
     * @return 结果
     */
    @Override
    public int insertOrderItems(OrderItems orderItems)
    {
        return orderItemsMapper.insertOrderItems(orderItems);
    }

    /**
     * 修改订单明细
     * 
     * @param orderItems 订单明细
     * @return 结果
     */
    @Override
    public int updateOrderItems(OrderItems orderItems)
    {
        return orderItemsMapper.updateOrderItems(orderItems);
    }

    /**
     * 批量删除订单明细
     * 
     * @param itemIds 需要删除的订单明细主键
     * @return 结果
     */
    @Override
    public int deleteOrderItemsByItemIds(String[] itemIds)
    {
        return orderItemsMapper.deleteOrderItemsByItemIds(itemIds);
    }

    /**
     * 删除订单明细信息
     * 
     * @param itemId 订单明细主键
     * @return 结果
     */
    @Override
    public int deleteOrderItemsByItemId(String itemId)
    {
        return orderItemsMapper.deleteOrderItemsByItemId(itemId);
    }
}
