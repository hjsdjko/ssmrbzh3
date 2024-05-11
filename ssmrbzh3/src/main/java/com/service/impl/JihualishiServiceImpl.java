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


import com.dao.JihualishiDao;
import com.entity.JihualishiEntity;
import com.service.JihualishiService;
import com.entity.vo.JihualishiVO;
import com.entity.view.JihualishiView;

@Service("jihualishiService")
public class JihualishiServiceImpl extends ServiceImpl<JihualishiDao, JihualishiEntity> implements JihualishiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JihualishiEntity> page = this.selectPage(
                new Query<JihualishiEntity>(params).getPage(),
                new EntityWrapper<JihualishiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JihualishiEntity> wrapper) {
		  Page<JihualishiView> page =new Query<JihualishiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JihualishiVO> selectListVO(Wrapper<JihualishiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JihualishiVO selectVO(Wrapper<JihualishiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JihualishiView> selectListView(Wrapper<JihualishiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JihualishiView selectView(Wrapper<JihualishiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
