package com.elderly.manage.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.elderly.common.annotation.Excel;
import com.elderly.common.core.domain.BaseEntity;

/**
 * 活动类型对象 tb_activity_type
 * 
 * @author rj
 * @date 2025-04-26
 */
public class ActivityType extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 活动类型ID */
    private String typeId;

    /** 类型名称 */
    @Excel(name = "类型名称")
    private String typeName;

    /** 类型描述 */
    @Excel(name = "类型描述")
    private String typeDesc;

    public void setTypeId(String typeId) 
    {
        this.typeId = typeId;
    }

    public String getTypeId() 
    {
        return typeId;
    }

    public void setTypeName(String typeName) 
    {
        this.typeName = typeName;
    }

    public String getTypeName() 
    {
        return typeName;
    }

    public void setTypeDesc(String typeDesc) 
    {
        this.typeDesc = typeDesc;
    }

    public String getTypeDesc() 
    {
        return typeDesc;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("typeId", getTypeId())
            .append("typeName", getTypeName())
            .append("typeDesc", getTypeDesc())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .append("createBy", getCreateBy())
            .append("updateBy", getUpdateBy())
            .append("remark", getRemark())
            .toString();
    }
}
