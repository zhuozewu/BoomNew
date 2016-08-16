package com.aode.bn.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * Created by 匆匆の过客 on 2016/8/16.
 */
@Retention(RetentionPolicy.RUNTIME)  //起作用的时限
@Target(ElementType.METHOD) //作用的范围
public @interface Auth {
    String value() default "" ;
    String name() default "" ;
}
