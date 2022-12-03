package com.nfu.library.mapper;

import com.nfu.library.entity.Book;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author xin_77
 * @since 2022-10-17
 */
@Mapper
public interface BookMapper extends BaseMapper<Book> {

}
