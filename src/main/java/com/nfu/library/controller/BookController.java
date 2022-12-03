package com.nfu.library.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.nfu.library.common.R;
import com.nfu.library.entity.Book;
import com.nfu.library.service.BookService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import javax.websocket.server.PathParam;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author xin_77
 * @since 2022-10-17
 */
@RestController
@RequestMapping("/library/book")
@Slf4j
@Api(tags = "图书模块")
public class BookController {

    @Resource
    private BookService bookService;



    @ApiOperation(value = "查询图书信息", notes = "根据ID或者图书名、作者名、出版社获取图书信息,需要传入page页数、pageSize页面尺寸。")
    @GetMapping("/page")
    public R<Page> page(int page,int pageSize,Long id , String bookName, String author, String publish){

        Page<Book> pageInfo = new Page<>(page, pageSize);

        LambdaQueryWrapper<Book> queryWrapper = new LambdaQueryWrapper<>();

        queryWrapper.like(bookName != null, Book::getBookName, bookName);
        queryWrapper.like(id != null, Book::getId, id);
        queryWrapper.like(publish != null, Book::getPublish, publish);
        queryWrapper.like(author != null, Book::getAuthor, author);

        bookService.page(pageInfo, queryWrapper);

        return R.success(pageInfo);

    }

    @ApiOperation("添加Book")
    @PostMapping
    public R<String> add(@RequestBody Book book) {
        boolean isAdd = bookService.save(book);
        if(isAdd){
            return R.success("添加成功");
        }

        return R.error("添加失败");
    }

    @ApiOperation(value = "修改图书信息", notes = "根据Id修改指定Book内容")
    @PutMapping
    public R<String> update(@RequestBody Book book){

        boolean isUpdate = bookService.updateById(book);

        if (isUpdate){
            return R.success("修改成功");
        }

        return R.error("修改失败");
    }

//    @DeleteMapping
//    public R<String> delete(List<Long> ids){
//
//
//        boolean isRemove = bookService.removeByIds(ids);
//
//        if (isRemove) {
//            return R.success("删除成功");
//        }
//
//        return R.error("删除失败");
//    }

    @ApiOperation(value = "删除图书", notes = "根据Id删除指定Book")
    @DeleteMapping
    public R<String> delete(Long id){

        boolean isRemove = bookService.removeById(id);

        if (isRemove) {
            return R.success("删除成功");
        }

        return R.error("删除失败");
    }

}
