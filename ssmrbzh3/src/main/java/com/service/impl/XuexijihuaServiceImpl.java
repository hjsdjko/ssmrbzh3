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


import com.dao.XuexijihuaDao;
import com.entity.XuexijihuaEntity;
import com.service.XuexijihuaService;
import com.entity.vo.XuexijihuaVO;
import com.entity.view.XuexijihuaView;

@Service("xuexijihuaService")
public class XuexijihuaServiceImpl extends ServiceImpl<XuexijihuaDao, XuexijihuaEntity> implements XuexijihuaService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XuexijihuaEntity> page = this.selectPage(
                new Query<XuexijihuaEntity>(params).getPage(),
                new EntityWrapper<XuexijihuaEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XuexijihuaEntity> wrapper) {
		  Page<XuexijihuaView> page =new Query<XuexijihuaView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XuexijihuaVO> selectListVO(Wrapper<XuexijihuaEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XuexijihuaVO selectVO(Wrapper<XuexijihuaEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XuexijihuaView> selectListView(Wrapper<XuexijihuaEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XuexijihuaView selectView(Wrapper<XuexijihuaEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
