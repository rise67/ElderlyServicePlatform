package com.elderly.manage.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.elderly.common.annotation.Excel;
import com.elderly.common.core.domain.BaseEntity;

/**
 * 服务人员对象 tb_service_providers
 * 
 * @author ry
 * @date 2025-04-22
 */
public class ServiceProviders extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private String id;

    /** 姓名 */
    @Excel(name = "姓名")
    private String name;

    /** 性别 */
    @Excel(name = "性别")
    private String gender;

    /** 住址地址 */
    @Excel(name = "住址地址")
    private String address;

    /** 手机号 */
    @Excel(name = "手机号")
    private String contactNumber;

    /** 年龄 */
    @Excel(name = "年龄")
    private String age;

    /** 工作年限 */
    @Excel(name = "工作年限")
    private String experienceYears;

    /** 具体详情 */
    @Excel(name = "具体详情")
    private String details;

    public void setId(String id) 
    {
        this.id = id;
    }

    public String getId() 
    {
        return id;
    }

    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }

    public void setGender(String gender) 
    {
        this.gender = gender;
    }

    public String getGender() 
    {
        return gender;
    }

    public void setAddress(String address) 
    {
        this.address = address;
    }

    public String getAddress() 
    {
        return address;
    }

    public void setContactNumber(String contactNumber) 
    {
        this.contactNumber = contactNumber;
    }

    public String getContactNumber() 
    {
        return contactNumber;
    }

    public void setAge(String age) 
    {
        this.age = age;
    }

    public String getAge() 
    {
        return age;
    }

    public void setExperienceYears(String experienceYears) 
    {
        this.experienceYears = experienceYears;
    }

    public String getExperienceYears() 
    {
        return experienceYears;
    }

    public void setDetails(String details) 
    {
        this.details = details;
    }

    public String getDetails() 
    {
        return details;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("gender", getGender())
            .append("address", getAddress())
            .append("contactNumber", getContactNumber())
            .append("age", getAge())
            .append("experienceYears", getExperienceYears())
            .append("details", getDetails())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .append("createBy", getCreateBy())
            .append("updateBy", getUpdateBy())
            .append("remark", getRemark())
            .toString();
    }
}
