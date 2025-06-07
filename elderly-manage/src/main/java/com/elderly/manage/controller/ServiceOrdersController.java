package com.elderly.manage.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.elderly.manage.domain.OrderItems;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.elderly.common.annotation.Log;
import com.elderly.common.core.controller.BaseController;
import com.elderly.common.core.domain.AjaxResult;
import com.elderly.common.enums.BusinessType;
import com.elderly.manage.domain.ServiceOrders;
import com.elderly.manage.service.IServiceOrdersService;
import com.elderly.common.utils.poi.ExcelUtil;
import com.elderly.common.core.page.TableDataInfo;

/**
 * 服务订单Controller
 * 
 * @author rj
 * @date 2025-04-22
 */
@RestController
@RequestMapping("/manage/orders")
public class ServiceOrdersController extends BaseController
{
    @Autowired
    private IServiceOrdersService serviceOrdersService;

    /**
     * 查询服务订单列表
     */
    @PreAuthorize("@ss.hasPermi('manage:orders:list')")
    @GetMapping("/list")
    public TableDataInfo list(ServiceOrders serviceOrders)
    {
        startPage();
        List<ServiceOrders> list = serviceOrdersService.selectServiceOrdersList(serviceOrders);
        return getDataTable(list);
    }
//查询订单项
    @PreAuthorize("@ss.hasPermi('manage:orders:items')")
    @GetMapping("/items/{orderId}")
    public AjaxResult getOrderItems(@PathVariable String orderId) {
        List<OrderItems> items = serviceOrdersService.selectOrderItemsByOrderId(orderId);
        System.out.println(items);
        return success(items);
    }


    /**
     * 导出服务订单列表
     */
    @PreAuthorize("@ss.hasPermi('manage:orders:export')")
    @Log(title = "服务订单", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ServiceOrders serviceOrders)
    {
        List<ServiceOrders> list = serviceOrdersService.selectServiceOrdersList(serviceOrders);
        ExcelUtil<ServiceOrders> util = new ExcelUtil<ServiceOrders>(ServiceOrders.class);
        util.exportExcel(response, list, "服务订单数据");
    }

    /**
     * 获取服务订单详细信息
     */
    @PreAuthorize("@ss.hasPermi('manage:orders:query')")
    @GetMapping(value = "/{orderId}")
    public AjaxResult getInfo(@PathVariable("orderId") String orderId)
    {
        return success(serviceOrdersService.selectServiceOrdersByOrderId(orderId));
    }

    /**
     * 新增服务订单
     */
    @PreAuthorize("@ss.hasPermi('manage:orders:add')")
    @Log(title = "服务订单", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ServiceOrders serviceOrders)
    {
        return toAjax(serviceOrdersService.insertServiceOrders(serviceOrders));
    }

    /**
     * 修改服务订单
     */
    @PreAuthorize("@ss.hasPermi('manage:orders:edit')")
    @Log(title = "服务订单", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ServiceOrders serviceOrders)
    {
        return toAjax(serviceOrdersService.updateServiceOrders(serviceOrders));
    }

    /**
     * 删除服务订单
     */
    @PreAuthorize("@ss.hasPermi('manage:orders:remove')")
    @Log(title = "服务订单", businessType = BusinessType.DELETE)
	@DeleteMapping("/{orderIds}")
    public AjaxResult remove(@PathVariable String[] orderIds)
    {
        return toAjax(serviceOrdersService.deleteServiceOrdersByOrderIds(orderIds));
    }
}
