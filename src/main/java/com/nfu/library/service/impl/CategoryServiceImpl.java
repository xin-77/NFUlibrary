package com.nfu.library.service.impl;

import com.nfu.library.entity.Category;
import com.nfu.library.mapper.CategoryMapper;
import com.nfu.library.service.CategoryService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author xin_77
 * @since 2022-10-17
 */
@Service
public class CategoryServiceImpl extends ServiceImpl<CategoryMapper, Category> implements CategoryService {

}
