package com.elderly.manage.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.elderly.common.annotation.Excel;
import com.elderly.common.core.domain.BaseEntity;

/**
 * 服务信息对象 tb_services
 * 
 * @author rj
 * @date 2025-04-22
 */
public class Services extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private String id;

    /** 服务名称 */
    @Excel(name = "服务名称")
    private String serviceName;

    /** 服务描述 */
    @Excel(name = "服务描述")
    private String serviceDesc;

    /** 服务价格 */
    @Excel(name = "服务价格")
    private BigDecimal price;

    /** 服务类别 */
    @Excel(name = "服务类别")
    private String serviceCategory;

    /** 具体详情 */
    @Excel(name = "具体详情")
    private String details;

    /** 修改时间 */
    private Date dateTime;

    public void setId(String id) 
    {
        this.id = id;
    }

    public String getId() 
    {
        return id;
    }

    public void setServiceName(String serviceName) 
    {
        this.serviceName = serviceName;
    }

    public String getServiceName() 
    {
        return serviceName;
    }

    public void setServiceDesc(String serviceDesc) 
    {
        this.serviceDesc = serviceDesc;
    }

    public String getServiceDesc() 
    {
        return serviceDesc;
    }

    public void setPrice(BigDecimal price) 
    {
        this.price = price;
    }

    public BigDecimal getPrice() 
    {
        return price;
    }

    public void setServiceCategory(String serviceCategory) 
    {
        this.serviceCategory = serviceCategory;
    }

    public String getServiceCategory() 
    {
        return serviceCategory;
    }

    public void setDetails(String details) 
    {
        this.details = details;
    }

    public String getDetails() 
    {
        return details;
    }

    public void setDateTime(Date dateTime) 
    {
        this.dateTime = dateTime;
    }

    public Date getDateTime() 
    {
        return dateTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("serviceName", getServiceName())
            .append("serviceDesc", getServiceDesc())
            .append("price", getPrice())
            .append("serviceCategory", getServiceCategory())
            .append("details", getDetails())
            .append("createTime", getCreateTime())
            .append("dateTime", getDateTime())
            .append("createBy", getCreateBy())
            .append("updateBy", getUpdateBy())
            .append("remark", getRemark())
            .toString();
    }
}
