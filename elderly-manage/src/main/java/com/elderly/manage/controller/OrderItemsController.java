package com.elderly.manage.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
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
import com.elderly.manage.domain.OrderItems;
import com.elderly.manage.service.IOrderItemsService;
import com.elderly.common.utils.poi.ExcelUtil;
import com.elderly.common.core.page.TableDataInfo;

/**
 * 订单明细Controller
 * 
 * @author rj
 * @date 2025-04-22
 */
@RestController
@RequestMapping("/manage/items")
public class OrderItemsController extends BaseController
{
    @Autowired
    private IOrderItemsService orderItemsService;

    /**
     * 查询订单明细列表
     */
    @PreAuthorize("@ss.hasPermi('manage:items:list')")
    @GetMapping("/list")
    public TableDataInfo list(OrderItems orderItems)
    {
        startPage();
        List<OrderItems> list = orderItemsService.selectOrderItemsList(orderItems);
        return getDataTable(list);
    }

    /**
     * 导出订单明细列表
     */
    @PreAuthorize("@ss.hasPermi('manage:items:export')")
    @Log(title = "订单明细", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, OrderItems orderItems)
    {
        List<OrderItems> list = orderItemsService.selectOrderItemsList(orderItems);
        ExcelUtil<OrderItems> util = new ExcelUtil<OrderItems>(OrderItems.class);
        util.exportExcel(response, list, "订单明细数据");
    }

    /**
     * 获取订单明细详细信息
     */
    @PreAuthorize("@ss.hasPermi('manage:items:query')")
    @GetMapping(value = "/{itemId}")
    public AjaxResult getInfo(@PathVariable("itemId") String itemId)
    {
        return success(orderItemsService.selectOrderItemsByItemId(itemId));
    }

    /**
     * 新增订单明细
     */
    @PreAuthorize("@ss.hasPermi('manage:items:add')")
    @Log(title = "订单明细", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody OrderItems orderItems)
    {
        return toAjax(orderItemsService.insertOrderItems(orderItems));
    }

    /**
     * 修改订单明细
     */
    @PreAuthorize("@ss.hasPermi('manage:items:edit')")
    @Log(title = "订单明细", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody OrderItems orderItems)
    {
        return toAjax(orderItemsService.updateOrderItems(orderItems));
    }

    /**
     * 删除订单明细
     */
    @PreAuthorize("@ss.hasPermi('manage:items:remove')")
    @Log(title = "订单明细", businessType = BusinessType.DELETE)
	@DeleteMapping("/{itemIds}")
    public AjaxResult remove(@PathVariable String[] itemIds)
    {
        return toAjax(orderItemsService.deleteOrderItemsByItemIds(itemIds));
    }
}
