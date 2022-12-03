package com.nfu.library.controller;

import com.nfu.library.service.CategoryService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author xin_77
 * @since 2022-10-17
 */
@Controller
@RequestMapping("/library/category")
@Api(tags = "分类模块")
public class CategoryController {

    @Resource
    private CategoryService categoryService;




}
