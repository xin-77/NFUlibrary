package com.nfu.library.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.nfu.library.common.R;
import com.nfu.library.entity.Rule;
import com.nfu.library.service.RuleService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author xin_77
 * @since 2022-10-17
 */
@RestController
@RequestMapping("/library/rule")
@Api(tags = "罚款模块")
public class RuleController {

    @Resource
    private RuleService ruleService;

    @ApiOperation(value = "查询超期罚款记录" , notes = "传入借阅证ID查询罚款记录,需要传入page页数、pageSize页面尺寸。")
    @GetMapping
    public R<Page> getRule(Long borrowCardId,int page,int pageSize){

        Page<Rule> rulePage = new Page<>(page, pageSize);

        LambdaQueryWrapper<Rule> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(Rule::getBorrowCardId, borrowCardId);
        ruleService.page(rulePage, queryWrapper);

        return R.success(rulePage);
    }

}
