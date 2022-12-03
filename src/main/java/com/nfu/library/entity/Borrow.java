package com.nfu.library.entity;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Date;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * <p>
 * 
 * </p>
 *
 * @author xin_77
 * @since 2022-10-17
 */
@ApiModel(value = "Borrow对象", description = "")
@Data
public class Borrow implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long bookId;

    private Long readerId;

    private Long borrowCardId;

    @ApiModelProperty("借书时间")
    private LocalDateTime borrowDate;

    @ApiModelProperty("还书时间")
    private LocalDateTime returnDate;

    @ApiModelProperty("是否续借")
    private Integer isRenew;



}
