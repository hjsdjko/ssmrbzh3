package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.XuexijihuaEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.XuexijihuaVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.XuexijihuaView;


/**
 * 学习计划
 *
 * @author 
 * @email 
 * @date 2021-04-21 23:48:42
 */
public interface XuexijihuaService extends IService<XuexijihuaEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XuexijihuaVO> selectListVO(Wrapper<XuexijihuaEntity> wrapper);
   	
   	XuexijihuaVO selectVO(@Param("ew") Wrapper<XuexijihuaEntity> wrapper);
   	
   	List<XuexijihuaView> selectListView(Wrapper<XuexijihuaEntity> wrapper);
   	
   	XuexijihuaView selectView(@Param("ew") Wrapper<XuexijihuaEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XuexijihuaEntity> wrapper);
   	
}

