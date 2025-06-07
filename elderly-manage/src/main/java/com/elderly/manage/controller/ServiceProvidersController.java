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
import com.elderly.manage.domain.ServiceProviders;
import com.elderly.manage.service.IServiceProvidersService;
import com.elderly.common.utils.poi.ExcelUtil;
import com.elderly.common.core.page.TableDataInfo;

/**
 * 服务人员Controller
 * 
 * @author ry
 * @date 2025-04-22
 */
@RestController
@RequestMapping("/manage/providers")
public class ServiceProvidersController extends BaseController
{
    @Autowired
    private IServiceProvidersService serviceProvidersService;

    /**
     * 查询服务人员列表
     */
    @PreAuthorize("@ss.hasPermi('manage:providers:list')")
    @GetMapping("/list")
    public TableDataInfo list(ServiceProviders serviceProviders)
    {
        startPage();
        List<ServiceProviders> list = serviceProvidersService.selectServiceProvidersList(serviceProviders);
        return getDataTable(list);
    }

    /**
     * 导出服务人员列表
     */
    @PreAuthorize("@ss.hasPermi('manage:providers:export')")
    @Log(title = "服务人员", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ServiceProviders serviceProviders)
    {
        List<ServiceProviders> list = serviceProvidersService.selectServiceProvidersList(serviceProviders);
        ExcelUtil<ServiceProviders> util = new ExcelUtil<ServiceProviders>(ServiceProviders.class);
        util.exportExcel(response, list, "服务人员数据");
    }

    /**
     * 获取服务人员详细信息
     */
    @PreAuthorize("@ss.hasPermi('manage:providers:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return success(serviceProvidersService.selectServiceProvidersById(id));
    }

    /**
     * 新增服务人员
     */
    @PreAuthorize("@ss.hasPermi('manage:providers:add')")
    @Log(title = "服务人员", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ServiceProviders serviceProviders)
    {
        return toAjax(serviceProvidersService.insertServiceProviders(serviceProviders));
    }

    /**
     * 修改服务人员
     */
    @PreAuthorize("@ss.hasPermi('manage:providers:edit')")
    @Log(title = "服务人员", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ServiceProviders serviceProviders)
    {
        return toAjax(serviceProvidersService.updateServiceProviders(serviceProviders));
    }

    /**
     * 删除服务人员
     */
    @PreAuthorize("@ss.hasPermi('manage:providers:remove')")
    @Log(title = "服务人员", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(serviceProvidersService.deleteServiceProvidersByIds(ids));
    }
}
