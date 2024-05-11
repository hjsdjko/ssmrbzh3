package com.dao;

import com.entity.JihualishiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JihualishiVO;
import com.entity.view.JihualishiView;


/**
 * 计划历史
 * 
 * @author 
 * @email 
 * @date 2021-04-21 23:48:42
 */
public interface JihualishiDao extends BaseMapper<JihualishiEntity> {
	
	List<JihualishiVO> selectListVO(@Param("ew") Wrapper<JihualishiEntity> wrapper);
	
	JihualishiVO selectVO(@Param("ew") Wrapper<JihualishiEntity> wrapper);
	
	List<JihualishiView> selectListView(@Param("ew") Wrapper<JihualishiEntity> wrapper);

	List<JihualishiView> selectListView(Pagination page,@Param("ew") Wrapper<JihualishiEntity> wrapper);
	
	JihualishiView selectView(@Param("ew") Wrapper<JihualishiEntity> wrapper);
	
}
