package com.nfu.library.service;

import com.nfu.library.entity.Borrow;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author xin_77
 * @since 2022-10-17
 */
public interface BorrowService extends IService<Borrow> {

    boolean borrowBook(Long bookId, Long readerId);
    boolean backBook(Long bookId, Long readerId);

}
