package com.biz.nav.dao;

import org.apache.ibatis.annotations.Select;

import com.biz.nav.model.MemberVO;

public interface MemberDao extends GenericDao<MemberVO, String> {

	@Select(" SELECT COUNT(*) FROM tbl_navimember ")
	public int memberCount();

}