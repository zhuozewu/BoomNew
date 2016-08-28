package com.aode.bn.util;

import java.util.List;

/**
 * Created by 匆匆の过客 on 2016/8/27.
 */
public class DealWithNewsType {
    public   static   List  removeDuplicate(List list)   {
        for  ( int  i  =   0 ; i  <  list.size()  -   1 ; i ++ )   {
            for  ( int  j  =  list.size()  -   1 ; j  >  i; j -- )   {
                if  (list.get(j).equals(list.get(i)))   {
                    list.remove(j);
                }
            }
        }
        return list;
    }
}
