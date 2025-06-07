package com.elderly.manage.service;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

public interface IStatisticsService {

    // 查询订单数量
    Integer getOrderCount(String startDate, String endDate, String orderStatus);

    // 查询总收入
    BigDecimal getTotalIncome(String startDate, String endDate, String orderStatus);

    // 查询活跃用户数
    Integer getActiveUserCount(String startDate, String endDate);

    // 查询订单趋势
    List<Map<String, Object>> getOrderTrend(String interval, String startDate, String endDate);

    // 查询服务类型分布
    List<Map<String, Object>> getServiceDistribution(String startDate, String endDate);

    // 查询订单状态分布
    List<Map<String, Object>> getOrderStatusDistribution(String startDate, String endDate);

    // 查询服务人员排行
    List<Map<String, Object>> getProviderRanking(String startDate, String endDate);

    // 查询服务类型详细统计
    List<Map<String, Object>> getServiceDetailStats(String startDate, String endDate);
}