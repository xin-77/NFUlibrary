package com.nfu.library.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.nfu.library.dto.LoginDto;
import com.nfu.library.entity.BorrowCard;
import com.nfu.library.entity.Reader;
import com.nfu.library.mapper.ReaderMapper;
import com.nfu.library.service.BorrowCardService;
import com.nfu.library.service.ReaderService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.log4j.Log4j2;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author xin_77
 * @since 2022-10-17
 */
@Service
@Log4j2
public class ReaderServiceImpl extends ServiceImpl<ReaderMapper, Reader> implements ReaderService {
    @Resource
    private BorrowCardService borrowCardService;

    @Override
    public LoginDto login(String readerId, String password) {
        LambdaQueryWrapper<Reader> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(Reader::getId, readerId);
        queryWrapper.eq(Reader::getPassword, password);
        Reader reader = this.getOne(queryWrapper);

        if (reader != null) {
            // 登陆成功
            LoginDto loginDto = new LoginDto();
            loginDto.setId(reader.getId());
            loginDto.setReaderName(reader.getReaderName());
            loginDto.setSex(reader.getSex());
            loginDto.setAuth(reader.getAuth());
            // 查询借阅证信息
            LambdaQueryWrapper<BorrowCard> borrowQueryWrapper = new LambdaQueryWrapper<>();
            borrowQueryWrapper.eq(BorrowCard::getReaderId, readerId);
            BorrowCard borrowCard = borrowCardService.getOne(borrowQueryWrapper);

            loginDto.setVisaDate(borrowCard.getVisaDate());
            log.info(loginDto.getVisaDate());
            loginDto.setBorrowNumber(borrowCard.getBorrowNumber());
            loginDto.setId(borrowCard.getId());


            return loginDto;
        }


        return null;
    }
}
