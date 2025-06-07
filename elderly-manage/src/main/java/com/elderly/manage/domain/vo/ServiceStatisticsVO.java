package com.elderly.manage.domain.vo;

import com.elderly.common.annotation.Excel;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 服务统计数据导出对象
 */
public class ServiceStatisticsVO {
    
    @Excel(name = "服务类型")
    private String serviceName;
    
    @Excel(name = "订单数量")
    private Integer orderCount;
    
    @Excel(name = "总收入(元)")
    private BigDecimal totalIncome;
    
    @Excel(name = "服务用户数")
    private Integer userCount;
    
    @Excel(name = "平均单价(元)")
    private BigDecimal avgPrice;
    
    @Excel(name = "环比增长(%)")
    private Integer growth;
    
    @Excel(name = "统计开始日期", dateFormat = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date startDate;
    
    @Excel(name = "统计结束日期", dateFormat = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date endDate;
    
    // getter 和 setter 方法
    
    public String getServiceName() {
        return serviceName;
    }
    
    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }
    
    public Integer getOrderCount() {
        return orderCount;
    }
    
    public void setOrderCount(Integer orderCount) {
        this.orderCount = orderCount;
    }
    
    public BigDecimal getTotalIncome() {
        return totalIncome;
    }
    
    public void setTotalIncome(BigDecimal totalIncome) {
        this.totalIncome = totalIncome;
    }
    
    public Integer getUserCount() {
        return userCount;
    }
    
    public void setUserCount(Integer userCount) {
        this.userCount = userCount;
    }
    
    public BigDecimal getAvgPrice() {
        return avgPrice;
    }
    
    public void setAvgPrice(BigDecimal avgPrice) {
        this.avgPrice = avgPrice;
    }
    
    public Integer getGrowth() {
        return growth;
    }
    
    public void setGrowth(Integer growth) {
        this.growth = growth;
    }
    
    public Date getStartDate() {
        return startDate;
    }
    
    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }
    
    public Date getEndDate() {
        return endDate;
    }
    
    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }
}