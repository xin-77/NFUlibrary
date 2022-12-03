package com.nfu.library.entity;

import java.io.Serializable;
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
@ApiModel(value = "Category对象", description = "")
@Data
public class Category implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty("类别编号")
    private Long id;

    @ApiModelProperty("类别名")
    private String category;

    @ApiModelProperty("书本编号")
    private Integer bookId;


}
