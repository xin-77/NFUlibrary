package com.nfu.library.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Date;

/**
 * @author Xin
 * @date 2022/10/28 15:31
 */

@ApiModel(value = "BorrowCard借阅证对象", description = "")
@Data
public class BorrowCard implements Serializable {
    private static final long serialVersionUID = 1L;

    @ApiModelProperty("借阅证号")
    private Long id;

    @ApiModelProperty("签证日期")
    private LocalDateTime visaDate;

    @ApiModelProperty("读者编号")
    private Long readerId;

    @ApiModelProperty("说明")
    private String state;

    @ApiModelProperty("可借数量")
    private Integer borrowNumber;

    @ApiModelProperty("是否可借")
    private Integer isBorrow;

}
