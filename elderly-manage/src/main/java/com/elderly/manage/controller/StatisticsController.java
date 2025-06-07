package com.elderly.manage.controller;

import com.elderly.common.core.domain.AjaxResult;
import com.elderly.manage.service.IActivityParticipantService;
import com.elderly.manage.service.IActivityService;
import com.elderly.manage.service.IStatisticsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/manage/statistics")
public class StatisticsController {

    @Autowired
    private IStatisticsService IStatisticsService;

    @Autowired
    private IActivityService IActivityService;

    @Autowired
    private IActivityParticipantService activityParticipantService;

    // 查询订单数量
    @GetMapping("/orderCount")
    public Integer getOrderCount(@RequestParam(required = false) String startDate,
                                 @RequestParam(required = false) String endDate,
                                 @RequestParam(required = false) String orderStatus) {
        return IStatisticsService.getOrderCount(startDate, endDate, orderStatus);
    }

    // 查询总收入
    @GetMapping("/totalIncome")
    public BigDecimal getTotalIncome(@RequestParam(required = false) String startDate,
                                     @RequestParam(required = false) String endDate,
                                     @RequestParam(required = false) String orderStatus) {
        return IStatisticsService.getTotalIncome(startDate, endDate, orderStatus);
    }

    // 查询活跃用户数
    @GetMapping("/activeUserCount")
    public Integer getActiveUserCount(@RequestParam(required = false) String startDate,
                                      @RequestParam(required = false) String endDate) {
        return IStatisticsService.getActiveUserCount(startDate, endDate);
    }

    // 查询订单趋势
    @GetMapping("/orderTrend")
    public List<Map<String, Object>> getOrderTrend(@RequestParam String interval,
                                                   @RequestParam(required = false) String startDate,
                                                   @RequestParam(required = false) String endDate) {
        return IStatisticsService.getOrderTrend(interval, startDate, endDate);
    }

    // 查询服务类型分布
    @GetMapping("/serviceDistribution")
    public List<Map<String, Object>> getServiceDistribution(@RequestParam(required = false) String startDate,
                                                            @RequestParam(required = false) String endDate) {
        return IStatisticsService.getServiceDistribution(startDate, endDate);
    }

    // 查询订单状态分布
    @GetMapping("/orderStatusDistribution")
    public List<Map<String, Object>> getOrderStatusDistribution(@RequestParam(required = false) String startDate,
                                                                @RequestParam(required = false) String endDate) {
        return IStatisticsService.getOrderStatusDistribution(startDate, endDate);
    }

    // 查询服务人员排行
    @GetMapping("/providerRanking")
    public List<Map<String, Object>> getProviderRanking(@RequestParam(required = false) String startDate,
                                                        @RequestParam(required = false) String endDate) {
        return IStatisticsService.getProviderRanking(startDate, endDate);
    }

    // 查询服务类型详细统计
    @GetMapping("/serviceDetailStats")
    public List<Map<String, Object>> getServiceDetailStats(@RequestParam(required = false) String startDate,
                                                           @RequestParam(required = false) String endDate) {
        return IStatisticsService.getServiceDetailStats(startDate, endDate);
    }

    /**
     * 获取活动详情统计
     */
    @GetMapping("/activityDetailStats")
    public AjaxResult getActivityDetailStats(
            @RequestParam(value = "startDate", required = false) String startDate,
            @RequestParam(value = "endDate", required = false) String endDate) {

        try {
            Map<String, Object> params = new HashMap<>();
            params.put("startDate", startDate);
            params.put("endDate", endDate);

            // 调用服务层获取活动详情统计数据
            List<Map<String, Object>> data = IActivityService.getActivityDetailStats(params);
            return AjaxResult.success(data);
        } catch (Exception e) {
            //log.error("获取活动详情统计失败", e);
            return AjaxResult.error("获取活动详情统计失败");
        }
    }

}