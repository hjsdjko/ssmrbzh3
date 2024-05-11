package com.dao;

import com.entity.JihuadakaEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JihuadakaVO;
import com.entity.view.JihuadakaView;


/**
 * 计划打卡
 * 
 * @author 
 * @email 
 * @date 2021-04-21 23:48:42
 */
public interface JihuadakaDao extends BaseMapper<JihuadakaEntity> {
	
	List<JihuadakaVO> selectListVO(@Param("ew") Wrapper<JihuadakaEntity> wrapper);
	
	JihuadakaVO selectVO(@Param("ew") Wrapper<JihuadakaEntity> wrapper);
	
	List<JihuadakaView> selectListView(@Param("ew") Wrapper<JihuadakaEntity> wrapper);

	List<JihuadakaView> selectListView(Pagination page,@Param("ew") Wrapper<JihuadakaEntity> wrapper);
	
	JihuadakaView selectView(@Param("ew") Wrapper<JihuadakaEntity> wrapper);
	
}
