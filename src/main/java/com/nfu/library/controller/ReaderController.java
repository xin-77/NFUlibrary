package com.nfu.library.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.nfu.library.common.R;
import com.nfu.library.dto.LoginDto;
import com.nfu.library.entity.Book;
import com.nfu.library.entity.Reader;
import com.nfu.library.service.ReaderService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;
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
@RestController
@RequestMapping("/library/reader")
@Api(tags = "读者模块")
public class ReaderController {

    @Resource
    private ReaderService readerService;

    @ApiOperation(value = "用户登录", notes = "Read")
    @GetMapping("/login")
    public R<LoginDto> login(String username, String password){
        LoginDto loginDto = readerService.login(username, password);

        if(loginDto != null){
            return R.success(loginDto, "登陆成功!");
        }

        return R.error("登陆失败!");
    }


    @ApiOperation("添加读者")
    @PostMapping
    public R<String> save(@RequestBody Reader reader){

        boolean isSave = readerService.save(reader);

        if (isSave){
            return R.success("添加读者成功");
        }

        return R.error("添加读者失败");
    }

    @ApiOperation(value = "查询用户信息",notes = "根据ID获取用户,需要传入page页数、pageSize页面尺寸。")
    @GetMapping("/page")
    public R<Page> page(int page, int pageSize, Long id){

        Page<Reader> pageInfo = new Page<>(page, pageSize);
        LambdaQueryWrapper<Reader> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(id != null, Reader::getId, id);

        readerService.page(pageInfo,queryWrapper);

        return R.success(pageInfo);


    }

    @ApiOperation(value = "修改用户信息", notes = "根据Id修改指定Reader用户内容")
    @PutMapping
    public R<String> update(@RequestBody Reader reader){

        boolean isUpdate = readerService.updateById(reader);

        if (isUpdate){
            return R.success("修改成功");
        }

        return R.error("修改失败");
    }

    @ApiOperation(value = "删除用户信息", notes = "根据Id删除指定用户")
    @DeleteMapping
    public R<String> delete(Long id){

        boolean isRemove = readerService.removeById(id);

        if (isRemove) {
            return R.success("删除成功");
        }

        return R.error("删除失败");
    }


}
