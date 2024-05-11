package com.entity.view;

import com.entity.JihualishiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 计划历史
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-04-21 23:48:42
 */
@TableName("jihualishi")
public class JihualishiView  extends JihualishiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JihualishiView(){
	}
 
 	public JihualishiView(JihualishiEntity jihualishiEntity){
 	try {
			BeanUtils.copyProperties(this, jihualishiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
