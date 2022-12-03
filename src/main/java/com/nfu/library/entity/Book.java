package com.nfu.library.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDate;
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
@ApiModel(value = "Book对象", description = "")
@Data
public class Book implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty("图书编号")
    private Long id;

    @ApiModelProperty("库存")
    private Integer stock;

    @ApiModelProperty("剩余量")
    private Integer residue;

    @ApiModelProperty("图书名")
    private String bookName;

    @ApiModelProperty("作者名")
    private String author;

    @ApiModelProperty("出版社")
    private String publish;

    @ApiModelProperty("印刷时间")
    private LocalDate publishDate;

    @ApiModelProperty("价格")
    private BigDecimal price;


}
