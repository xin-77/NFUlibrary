package com.nfu.library.service;

import com.nfu.library.dto.LoginDto;
import com.nfu.library.entity.Reader;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author xin_77
 * @since 2022-10-17
 */
public interface ReaderService extends IService<Reader> {
    LoginDto login(String readerId, String password);
}
