package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JihuadakaEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JihuadakaVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JihuadakaView;


/**
 * 计划打卡
 *
 * @author 
 * @email 
 * @date 2021-04-21 23:48:42
 */
public interface JihuadakaService extends IService<JihuadakaEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JihuadakaVO> selectListVO(Wrapper<JihuadakaEntity> wrapper);
   	
   	JihuadakaVO selectVO(@Param("ew") Wrapper<JihuadakaEntity> wrapper);
   	
   	List<JihuadakaView> selectListView(Wrapper<JihuadakaEntity> wrapper);
   	
   	JihuadakaView selectView(@Param("ew") Wrapper<JihuadakaEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JihuadakaEntity> wrapper);
   	
}

