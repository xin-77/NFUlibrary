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
@ApiModel(value = "Reader读者对象", description = "")
@Data
public class Reader implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty("读者编号")
    private Long id;

    @ApiModelProperty("读者姓名")
    private String readerName;

    @ApiModelProperty("读者性别")
    private String sex;

    @ApiModelProperty("读者密码")
    private String password;

    @ApiModelProperty("权限")
    private Integer auth;


}
