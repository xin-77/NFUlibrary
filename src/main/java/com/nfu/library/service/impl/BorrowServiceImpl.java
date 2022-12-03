package com.nfu.library.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.nfu.library.entity.*;
import com.nfu.library.mapper.BorrowMapper;
import com.nfu.library.service.*;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.time.Duration;
import java.time.LocalDateTime;

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
public class BorrowServiceImpl extends ServiceImpl<BorrowMapper, Borrow> implements BorrowService {

    @Resource
    private BorrowCardService borrowCardService;
    @Resource
    private BookService bookService;
    @Resource
    private ReaderService readerService;
    @Resource
    private RuleService ruleService;


    @Override
    @Transactional
    public boolean borrowBook(Long bookId, Long borrowCardId) {
        Book book = bookService.getById(bookId);
        BorrowCard borrowCard = borrowCardService.getById(borrowCardId);
        LambdaQueryWrapper<Borrow> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(Borrow::getBookId,bookId);
        queryWrapper.eq(Borrow::getBorrowCardId, borrowCardId);
        queryWrapper.eq(Borrow::getIsRenew, 1);

        Borrow one = this.getOne(queryWrapper);


        if(one == null && borrowCard != null && book != null && book.getStock() > 0 && borrowCard.getBorrowNumber() > 0) {
            Borrow borrow =  new Borrow();
            // 更新书本数量
            book.setStock(book.getStock() - 1);
            bookService.updateById(book);
            // 更新借阅证数量
            borrowCard.setBorrowNumber(borrowCard.getBorrowNumber() - 1);
            borrowCardService.updateById(borrowCard);
            // 插入借阅记录
            borrow.setReaderId(borrowCard.getReaderId());
            borrow.setBookId(bookId);
            borrow.setBorrowCardId(borrowCardId);
            borrow.setBorrowDate(LocalDateTime.now());
            borrow.setIsRenew(1);
            this.save(borrow);
            return true;
        }

        return false;
    }

    @Override
    @Transactional
    public boolean backBook(Long bookId, Long borrowCardId) {

        // 查询借书记录
        LambdaQueryWrapper<Borrow> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(Borrow::getBookId, bookId);
        queryWrapper.eq(Borrow::getBorrowCardId, borrowCardId);
        queryWrapper.eq(Borrow::getIsRenew, 1);
        Borrow one = this.getOne(queryWrapper);
        // 计算是否超过7天
        if(one == null) return false;
        LocalDateTime borrowDate = one.getBorrowDate();
        LocalDateTime backDate = LocalDateTime.now();
        Duration duration = Duration.between(borrowDate,backDate);
        long day = duration.toDays();
        if(day > 7){
            // 超期处罚
            LambdaQueryWrapper<Rule> ruleQueryWrapper = new LambdaQueryWrapper<>();
            ruleQueryWrapper.eq(Rule::getBorrowCardId, borrowCardId);
            ruleQueryWrapper.eq(Rule::getBookId, bookId);
            Rule rule = ruleService.getOne(ruleQueryWrapper);
            if(rule == null){
                rule = new Rule();
                rule.setBookId(bookId);
                rule.setBorrowCardId(borrowCardId);
                rule.setOverdueDays((int)day - 7);
                rule.setOverdueNum(1);
                rule.setOverdueFine(BigDecimal.valueOf(1).multiply(BigDecimal.valueOf(rule.getOverdueDays())));
                ruleService.save(rule);
            }else {
                rule.setOverdueDays((int)day - 7);
                rule.setOverdueFine(BigDecimal.valueOf(1).multiply(BigDecimal.valueOf(rule.getOverdueDays())) );
                rule.setOverdueNum(rule.getOverdueNum()+1);
                ruleService.update(rule, ruleQueryWrapper);
            }

        }
        // 图书库存加一
        Book book = bookService.getById(bookId);
        book.setStock(book.getStock() + 1);
        bookService.updateById(book);

        // 添加归还日期
        one.setReturnDate(LocalDateTime.now());
        one.setIsRenew(0);

        boolean b = this.update(one,queryWrapper);


        return b;
    }


}
