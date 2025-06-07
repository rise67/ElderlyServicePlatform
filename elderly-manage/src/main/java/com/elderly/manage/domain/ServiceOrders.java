package com.elderly.manage.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.elderly.common.annotation.Excel;
import com.elderly.common.core.domain.BaseEntity;

/**
 * 服务订单对象 tb_service_orders
 * 
 * @author rj
 * @date 2025-04-22
 */
public class ServiceOrders extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 订单号 */
    private String orderId;

    /** 用户ID */
    @Excel(name = "老人ID")
    private String elderlyId;

    /** 服务人员ID */
    @Excel(name = "服务人员ID")
    private String providerId;

    /** 服务地址 */
    @Excel(name = "服务地址")
    private String serviceAddress;

    /** 订单总金额 */
    @Excel(name = "订单总金额")
    private BigDecimal totalAmount;

    /** 订单状态 */
    @Excel(name = "订单状态")
    private String orderStatus;
    public void setOrderId(String orderId) 
    {
        this.orderId = orderId;
    }

    public String getOrderId() 
    {
        return orderId;
    }

    public void setElderlyId(String elderlyId)
    {
        this.elderlyId = elderlyId;
    }

    public String getElderlyId()
    {
        return elderlyId;
    }

    public void setProviderId(String providerId) 
    {
        this.providerId = providerId;
    }

    public String getProviderId() 
    {
        return providerId;
    }

    public void setServiceAddress(String serviceAddress) 
    {
        this.serviceAddress = serviceAddress;
    }

    public String getServiceAddress() 
    {
        return serviceAddress;
    }

    public void setTotalAmount(BigDecimal totalAmount) 
    {
        this.totalAmount = totalAmount;
    }

    public BigDecimal getTotalAmount() 
    {
        return totalAmount;
    }

    public void setOrderStatus(String orderStatus) 
    {
        this.orderStatus = orderStatus;
    }

    public String getOrderStatus() 
    {
        return orderStatus;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("orderId", getOrderId())
            .append("elderlyId", getElderlyId())
            .append("providerId", getProviderId())
            .append("serviceAddress", getServiceAddress())
            .append("totalAmount", getTotalAmount())
            .append("orderStatus", getOrderStatus())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
