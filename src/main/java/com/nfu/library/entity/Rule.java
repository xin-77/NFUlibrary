package com.nfu.library.entity;

import java.io.Serializable;
import java.math.BigDecimal;

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
@ApiModel(value = "Rule规则对象", description = "")
@Data
public class Rule implements Serializable {

    private static final long serialVersionUID = 1L;


    @ApiModelProperty("图书ID")
    private Long bookId;

    @ApiModelProperty("借书证ID")
    private Long borrowCardId;

    @ApiModelProperty("超期天数")
    private Integer overdueDays;

    @ApiModelProperty("罚款")
    private BigDecimal overdueFine;

    @ApiModelProperty("超期本数")
    private Integer overdueNum;


}


