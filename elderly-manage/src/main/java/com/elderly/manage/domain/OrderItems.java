package com.elderly.manage.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.elderly.common.annotation.Excel;
import com.elderly.common.core.domain.BaseEntity;

/**
 * 订单明细对象 tb_order_items
 * 
 * @author rj
 * @date 2025-04-22
 */
public class OrderItems extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private String itemId;

    /** 关联订单号 */
    @Excel(name = "关联订单号")
    private String orderId;

    /** 服务人员 */
    @Excel(name = "服务人员")
    private String serviceId;

    /** 小时单价 */
    @Excel(name = "小时单价")
    private BigDecimal hourlyRate;

    /** 服务时长（小时） */
    @Excel(name = "服务时长", readConverterExp = "小=时")
    private BigDecimal serviceHours;

    /** 服务开始时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "服务开始时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private Date startTime;

    /** 服务结束时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "服务结束时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private Date endTime;

    /** 单项金额 */
    @Excel(name = "单项金额")
    private BigDecimal itemAmount;

    public void setItemId(String itemId) 
    {
        this.itemId = itemId;
    }

    public String getItemId() 
    {
        return itemId;
    }

    public void setOrderId(String orderId) 
    {
        this.orderId = orderId;
    }

    public String getOrderId() 
    {
        return orderId;
    }

    public void setServiceId(String serviceId) 
    {
        this.serviceId = serviceId;
    }

    public String getServiceId() 
    {
        return serviceId;
    }

    public void setHourlyRate(BigDecimal hourlyRate) 
    {
        this.hourlyRate = hourlyRate;
    }

    public BigDecimal getHourlyRate() 
    {
        return hourlyRate;
    }

    public void setServiceHours(BigDecimal serviceHours) 
    {
        this.serviceHours = serviceHours;
    }

    public BigDecimal getServiceHours() 
    {
        return serviceHours;
    }

    public void setStartTime(Date startTime) 
    {
        this.startTime = startTime;
    }

    public Date getStartTime() 
    {
        return startTime;
    }

    public void setEndTime(Date endTime) 
    {
        this.endTime = endTime;
    }

    public Date getEndTime() 
    {
        return endTime;
    }

    public void setItemAmount(BigDecimal itemAmount) 
    {
        this.itemAmount = itemAmount;
    }

    public BigDecimal getItemAmount() 
    {
        return itemAmount;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("itemId", getItemId())
            .append("orderId", getOrderId())
            .append("serviceId", getServiceId())
            .append("hourlyRate", getHourlyRate())
            .append("serviceHours", getServiceHours())
            .append("startTime", getStartTime())
            .append("endTime", getEndTime())
            .append("itemAmount", getItemAmount())
            .toString();
    }
}
