package cn.heweiming.freedom.shiro.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.heweiming.freedom.shiro.dao.SysMenuDao;
import cn.heweiming.freedom.shiro.domain.vo.SysMenuVo;
import cn.heweiming.freedom.shiro.mapper.SysMenuMapper;
import cn.heweiming.freedom.shiro.model.SysMenu;
import cn.heweiming.freedom.shiro.model.SysUser;
import cn.heweiming.freedom.shiro.service.SysMenuService;

@Service("sysMenuService")
public class SysMenuServiceImpl implements SysMenuService {

	@Autowired
	private SysMenuMapper sysMenuMapper;
	
	@Autowired
	private SysMenuDao sysMenuDao;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(SysMenu record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public SysMenu selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SysMenu> selectAll() {
		return sysMenuMapper.selectAll();
	}

	@Override
	public int updateByPrimaryKey(SysMenu record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<SysMenuVo> findMenuByUser(SysUser user) {
		return sysMenuDao.findMenuByUser(user);
	}
	

}
