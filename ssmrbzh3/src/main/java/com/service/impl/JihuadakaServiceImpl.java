package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.JihuadakaDao;
import com.entity.JihuadakaEntity;
import com.service.JihuadakaService;
import com.entity.vo.JihuadakaVO;
import com.entity.view.JihuadakaView;

@Service("jihuadakaService")
public class JihuadakaServiceImpl extends ServiceImpl<JihuadakaDao, JihuadakaEntity> implements JihuadakaService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JihuadakaEntity> page = this.selectPage(
                new Query<JihuadakaEntity>(params).getPage(),
                new EntityWrapper<JihuadakaEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JihuadakaEntity> wrapper) {
		  Page<JihuadakaView> page =new Query<JihuadakaView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JihuadakaVO> selectListVO(Wrapper<JihuadakaEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JihuadakaVO selectVO(Wrapper<JihuadakaEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JihuadakaView> selectListView(Wrapper<JihuadakaEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JihuadakaView selectView(Wrapper<JihuadakaEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
