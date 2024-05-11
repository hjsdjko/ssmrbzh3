package com.entity.model;

import com.entity.XuexijihuaEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 学习计划
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2021-04-21 23:48:42
 */
public class XuexijihuaModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 计划图片
	 */
	
	private String jihuatupian;
		
	/**
	 * 开始日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date kaishiriqi;
		
	/**
	 * 计划内容
	 */
	
	private String jihuaneirong;
		
	/**
	 * 结束时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date jieshushijian;
		
	/**
	 * 计划天数
	 */
	
	private String jihuatianshu;
		
	/**
	 * 完成度
	 */
	
	private String wanchengdu;
		
	/**
	 * 账号
	 */
	
	private String zhanghao;
		
	/**
	 * 姓名
	 */
	
	private String xingming;
		
	/**
	 * 用户id
	 */
	
	private Long userid;
				
	
	/**
	 * 设置：计划图片
	 */
	 
	public void setJihuatupian(String jihuatupian) {
		this.jihuatupian = jihuatupian;
	}
	
	/**
	 * 获取：计划图片
	 */
	public String getJihuatupian() {
		return jihuatupian;
	}
				
	
	/**
	 * 设置：开始日期
	 */
	 
	public void setKaishiriqi(Date kaishiriqi) {
		this.kaishiriqi = kaishiriqi;
	}
	
	/**
	 * 获取：开始日期
	 */
	public Date getKaishiriqi() {
		return kaishiriqi;
	}
				
	
	/**
	 * 设置：计划内容
	 */
	 
	public void setJihuaneirong(String jihuaneirong) {
		this.jihuaneirong = jihuaneirong;
	}
	
	/**
	 * 获取：计划内容
	 */
	public String getJihuaneirong() {
		return jihuaneirong;
	}
				
	
	/**
	 * 设置：结束时间
	 */
	 
	public void setJieshushijian(Date jieshushijian) {
		this.jieshushijian = jieshushijian;
	}
	
	/**
	 * 获取：结束时间
	 */
	public Date getJieshushijian() {
		return jieshushijian;
	}
				
	
	/**
	 * 设置：计划天数
	 */
	 
	public void setJihuatianshu(String jihuatianshu) {
		this.jihuatianshu = jihuatianshu;
	}
	
	/**
	 * 获取：计划天数
	 */
	public String getJihuatianshu() {
		return jihuatianshu;
	}
				
	
	/**
	 * 设置：完成度
	 */
	 
	public void setWanchengdu(String wanchengdu) {
		this.wanchengdu = wanchengdu;
	}
	
	/**
	 * 获取：完成度
	 */
	public String getWanchengdu() {
		return wanchengdu;
	}
				
	
	/**
	 * 设置：账号
	 */
	 
	public void setZhanghao(String zhanghao) {
		this.zhanghao = zhanghao;
	}
	
	/**
	 * 获取：账号
	 */
	public String getZhanghao() {
		return zhanghao;
	}
				
	
	/**
	 * 设置：姓名
	 */
	 
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
				
	
	/**
	 * 设置：用户id
	 */
	 
	public void setUserid(Long userid) {
		this.userid = userid;
	}
	
	/**
	 * 获取：用户id
	 */
	public Long getUserid() {
		return userid;
	}
			
}
