package com.entity.view;

import com.entity.JihuadakaEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 计划打卡
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-04-21 23:48:42
 */
@TableName("jihuadaka")
public class JihuadakaView  extends JihuadakaEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JihuadakaView(){
	}
 
 	public JihuadakaView(JihuadakaEntity jihuadakaEntity){
 	try {
			BeanUtils.copyProperties(this, jihuadakaEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
