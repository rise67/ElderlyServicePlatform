package com.elderly.manage.service.impl;

import com.elderly.manage.mapper.StatisticsMapper;
import com.elderly.manage.service.IStatisticsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

@Service
public class StatisticsServiceImpl implements IStatisticsService {

    @Autowired
    private StatisticsMapper statisticsMapper;

    @Override
    public Integer getOrderCount(String startDate, String endDate, String orderStatus) {
        return statisticsMapper.selectOrderCount(startDate, endDate, orderStatus);
    }

    @Override
    public BigDecimal getTotalIncome(String startDate, String endDate, String orderStatus) {
        return statisticsMapper.selectTotalIncome(startDate, endDate, orderStatus);
    }

    @Override
    public Integer getActiveUserCount(String startDate, String endDate) {
        return statisticsMapper.selectActiveUserCount(startDate, endDate);
    }

    @Override
    public List<Map<String, Object>> getOrderTrend(String interval, String startDate, String endDate) {
        return statisticsMapper.selectOrderTrend(interval, startDate, endDate);
    }

    @Override
    public List<Map<String, Object>> getServiceDistribution(String startDate, String endDate) {
        return statisticsMapper.selectServiceDistribution(startDate, endDate);
    }

    @Override
    public List<Map<String, Object>> getOrderStatusDistribution(String startDate, String endDate) {
        return statisticsMapper.selectOrderStatusDistribution(startDate, endDate);
    }

    @Override
    public List<Map<String, Object>> getProviderRanking(String startDate, String endDate) {
        return statisticsMapper.selectProviderRanking(startDate, endDate);
    }

    @Override
    public List<Map<String, Object>> getServiceDetailStats(String startDate, String endDate) {
        return statisticsMapper.selectServiceDetailStats(startDate, endDate);
    }
}