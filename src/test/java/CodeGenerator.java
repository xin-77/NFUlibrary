import com.baomidou.mybatisplus.annotation.DbType;
import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.FastAutoGenerator;
import com.baomidou.mybatisplus.generator.config.*;
import com.baomidou.mybatisplus.generator.config.rules.DateType;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;
import com.baomidou.mybatisplus.generator.engine.FreemarkerTemplateEngine;
import com.baomidou.mybatisplus.generator.fill.Column;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/**
 * @author Xin
 * @date 2022/10/16 22:55
 */
public class CodeGenerator {

    public static void main(String[] args) {
        FastAutoGenerator.create("jdbc:mysql://localhost:3306/nfulibrary?useSSL=false&useUnicode=true&characterEncoding=utf-8&serverTimezone=GMT%2B8", "root", "123456")
                .globalConfig(builder -> {
                    builder.author("xin_77") // 设置作者
                            .enableSwagger() // 开启 swagger 模式
                            .fileOverride() // 覆盖已生成文件
                            .outputDir("D:\\code\\bkcode\\nfulibrary\\src\\main\\java") // 指定输出目录
                            .dateType(DateType.ONLY_DATE);
                })
                .packageConfig(builder -> {
                    builder.parent("com.nfu") // 设置父包名
                            .moduleName("library") // 设置父包模块名
                            .pathInfo(Collections.singletonMap(OutputFile.xml, "D:\\code\\bkcode\\nfulibrary\\src\\main\\resources\\mapper"))// 设置mapperXml生成路径
                            .entity("entity")
                            .service("service")
                            .controller("controller");
                })
                .strategyConfig(builder -> {
                    builder.addInclude("borrow,category,employee,reader,rule") // 设置需要生成的表名
                            ; // 设置过滤表前缀

                })
                 // 使用Freemarker引擎模板，默认的是Velocity引擎模板
                .execute();


    }

    // 处理 all 情况
    protected static List<String> getTables(String tables) {
        return "all".equals(tables) ? Collections.emptyList() : Arrays.asList(tables.split(","));
    }
}