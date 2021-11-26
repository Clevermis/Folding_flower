package com.clevermis.pojo;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

/**
 * @program: Folding_flower
 * @description: 这是flo_user实体类
 * @author: Clevermis
 * @create: 2021-11-26 21:27
 **/
public class User {

    @Getter @Setter
    private Integer u_id;
    @Getter @Setter
    private Integer u_num;
    @Getter @Setter
    private String u_name;
    @Getter @Setter
    private String u_sex;
    @Getter @Setter
    private Integer u_age;
    @Getter @Setter
    private String u_synopsis;
    @Getter @Setter
    private String u_region;
    @Getter @Setter
    private Integer u_phone;
    @Getter @Setter
    private String u_password;
    @Getter @Setter
    private Integer u_sta;
    @Getter @Setter
    private Integer u_role;
    @Getter @Setter
    private Date u_creation;
    @Getter @Setter
    private Integer u_creator;
    @Getter @Setter
    private Date u_modifier;
    @Getter @Setter
    private Date u_modification;

}
