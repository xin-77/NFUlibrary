package com.nfu.library.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.nfu.library.common.R;
import com.nfu.library.entity.Book;
import com.nfu.library.entity.Borrow;
import com.nfu.library.service.BorrowService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
@RequestMapping("/library/borrow")
@Api(tags = "借书模块")
public class BorrowController {

    @Resource
    private BorrowService borrowService;

    @ApiOperation(value = "借书", notes = "根据传入的bookId和readerId添加借阅记录。")
    @PostMapping()
    public R<String> borrow(Long bookId, Long borrowCardId){
        boolean b = borrowService.borrowBook(bookId, borrowCardId);
        if(b){
            return R.success("借书成功！");
        }else {
            return R.error("借书失败！");
        }


    }

    @ApiOperation(value = "查询所借图书", notes = "查询借阅证所借阅的图书列表，根据读者id查询,需要传入page页数、pageSize页面尺寸。")
    @GetMapping("/page")
    public R<Page> page(int page, int pageSize, Long bookId , Long readerId, Long borrowCardId ){

        Page<Borrow> pageInfo = new Page<>(page, pageSize);

        LambdaQueryWrapper<Borrow> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.like(bookId != null, Borrow::getBookId, bookId);
        queryWrapper.like(readerId != null, Borrow::getReaderId, readerId);
        queryWrapper.like(borrowCardId != null, Borrow::getBorrowCardId, borrowCardId);

        borrowService.page(pageInfo, queryWrapper);

        return R.success(pageInfo);

    }

    @ApiOperation(value = "归还图书", notes = "传入图书ID和借阅证ID进行图书归还操作。")
    @GetMapping("/backBook")
    public R<String> back(Long bookId, Long borrowCardId){
        boolean b = borrowService.backBook(bookId, borrowCardId);

        if (!b) return R.error("归还失败！");
        return R.success("归还成功！");
    }




}
