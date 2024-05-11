package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 学习计划
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-04-21 23:48:42
 */
@TableName("xuexijihua")
public class XuexijihuaEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public XuexijihuaEntity() {
		
	}
	
	public XuexijihuaEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 计划标题
	 */
					
	private String jihuabiaoti;
	
	/**
	 * 计划图片
	 */
					
	private String jihuatupian;
	
	/**
	 * 开始日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date kaishiriqi;
	
	/**
	 * 计划内容
	 */
					
	private String jihuaneirong;
	
	/**
	 * 结束时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
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
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：计划标题
	 */
	public void setJihuabiaoti(String jihuabiaoti) {
		this.jihuabiaoti = jihuabiaoti;
	}
	/**
	 * 获取：计划标题
	 */
	public String getJihuabiaoti() {
		return jihuabiaoti;
	}
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
