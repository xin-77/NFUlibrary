package com.nfu.library.dto;

import com.nfu.library.entity.BorrowCard;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

/**
 * @author Xin
 * @date 2022/12/3 8:42
 */
@ApiModel(value = "登录对象", description = "")
@Data
public class LoginDto extends BorrowCard implements Serializable {

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
