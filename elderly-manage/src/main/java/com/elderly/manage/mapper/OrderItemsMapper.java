package com.elderly.manage.mapper;

import java.util.List;
import com.elderly.manage.domain.OrderItems;
import org.apache.ibatis.annotations.Mapper;

/**
 * 订单明细Mapper接口
 * 
 * @author rj
 * @date 2025-04-22
 */
@Mapper
public interface OrderItemsMapper 
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
     * 删除订单明细
     * 
     * @param itemId 订单明细主键
     * @return 结果
     */
    public int deleteOrderItemsByItemId(String itemId);

    /**
     * 批量删除订单明细
     * 
     * @param itemIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteOrderItemsByItemIds(String[] itemIds);

    /**
     * 根据订单ID删除订单项
     *
     * @param orderId 订单ID
     * @return 结果
     */
    public int deleteOrderItemsByOrderId(String orderId);
}
