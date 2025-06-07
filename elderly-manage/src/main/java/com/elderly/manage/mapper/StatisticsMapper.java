package com.elderly.manage.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.MapKey;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

@Mapper
public interface StatisticsMapper {

    // 查询订单数量
    Integer selectOrderCount(@Param("startDate") String startDate,
                             @Param("endDate") String endDate,
                             @Param("orderStatus") String orderStatus);

    // 查询总收入
    BigDecimal selectTotalIncome(@Param("startDate") String startDate,
                                 @Param("endDate") String endDate,
                                 @Param("orderStatus") String orderStatus);

    // 查询活跃用户数
    Integer selectActiveUserCount(@Param("startDate") String startDate,
                                  @Param("endDate") String endDate);

    // 查询订单趋势 - 修改为明确返回List<Map>
    List<Map<String, Object>> selectOrderTrend(@Param("interval") String interval,
                                               @Param("startDate") String startDate,
                                               @Param("endDate") String endDate);

    // 查询服务类型分布 - 修改为明确返回List<Map>
    List<Map<String, Object>> selectServiceDistribution(@Param("startDate") String startDate,
                                                        @Param("endDate") String endDate);

    // 查询订单状态分布 - 修改为明确返回List<Map>
    List<Map<String, Object>> selectOrderStatusDistribution(@Param("startDate") String startDate,
                                                            @Param("endDate") String endDate);

    // 查询服务人员排行 - 修改为明确返回List<Map>
    List<Map<String, Object>> selectProviderRanking(@Param("startDate") String startDate,
                                                    @Param("endDate") String endDate);

    // 查询服务类型详细统计 - 修改为明确返回List<Map>
    List<Map<String, Object>> selectServiceDetailStats(@Param("startDate") String startDate,
                                                       @Param("endDate") String endDate);

}