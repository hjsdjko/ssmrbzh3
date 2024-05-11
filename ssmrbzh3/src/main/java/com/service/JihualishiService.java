package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JihualishiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JihualishiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JihualishiView;


/**
 * 计划历史
 *
 * @author 
 * @email 
 * @date 2021-04-21 23:48:42
 */
public interface JihualishiService extends IService<JihualishiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JihualishiVO> selectListVO(Wrapper<JihualishiEntity> wrapper);
   	
   	JihualishiVO selectVO(@Param("ew") Wrapper<JihualishiEntity> wrapper);
   	
   	List<JihualishiView> selectListView(Wrapper<JihualishiEntity> wrapper);
   	
   	JihualishiView selectView(@Param("ew") Wrapper<JihualishiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JihualishiEntity> wrapper);
   	
}

