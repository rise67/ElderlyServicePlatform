package com.elderly.manage.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.elderly.common.annotation.Excel;
import com.elderly.common.core.domain.BaseEntity;

/**
 * 活动参与对象 tb_activity_participant
 * 
 * @author rj
 * @date 2025-04-27
 */
public class ActivityParticipant extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private String participantId;

    /** 活动ID */
    @Excel(name = "活动ID")
    private String activityId;

    /** 用户ID */
    @Excel(name = "用户ID")
    private String userId;

    /** 报名时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "报名时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private Date registerTime;

    /** 参与状态 */
    @Excel(name = "参与状态")
    private int participantStatus;

    /** 签到时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "签到时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private Date signInTime;

    /** 参与反馈 */
    @Excel(name = "参与反馈")
    private String feedback;

    /** 活动评分(1-5分) */
    @Excel(name = "活动评分(1-5分)")
    private Long rating;

    public void setParticipantId(String participantId) 
    {
        this.participantId = participantId;
    }

    public String getParticipantId() 
    {
        return participantId;
    }

    public void setActivityId(String activityId) 
    {
        this.activityId = activityId;
    }

    public String getActivityId() 
    {
        return activityId;
    }

    public void setUserId(String userId) 
    {
        this.userId = userId;
    }

    public String getUserId() 
    {
        return userId;
    }

    public void setRegisterTime(Date registerTime) 
    {
        this.registerTime = registerTime;
    }

    public Date getRegisterTime() 
    {
        return registerTime;
    }

    public void setParticipantStatus(int participantStatus)
    {
        this.participantStatus = participantStatus;
    }

    public int getParticipantStatus()
    {
        return participantStatus;
    }

    public void setSignInTime(Date signInTime) 
    {
        this.signInTime = signInTime;
    }

    public Date getSignInTime() 
    {
        return signInTime;
    }

    public void setFeedback(String feedback) 
    {
        this.feedback = feedback;
    }

    public String getFeedback() 
    {
        return feedback;
    }

    public void setRating(Long rating) 
    {
        this.rating = rating;
    }

    public Long getRating() 
    {
        return rating;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("participantId", getParticipantId())
            .append("activityId", getActivityId())
            .append("userId", getUserId())
            .append("registerTime", getRegisterTime())
            .append("participantStatus", getParticipantStatus())
            .append("signInTime", getSignInTime())
            .append("feedback", getFeedback())
            .append("rating", getRating())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .append("createBy", getCreateBy())
            .append("updateBy", getUpdateBy())
            .append("remark", getRemark())
            .toString();
    }
}
