package com.nfu.library.service.impl;

import com.nfu.library.entity.Book;
import com.nfu.library.mapper.BookMapper;
import com.nfu.library.service.BookService;
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
public class BookServiceImpl extends ServiceImpl<BookMapper, Book> implements BookService {

}
