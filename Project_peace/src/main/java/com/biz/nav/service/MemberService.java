package com.biz.nav.service;

import com.biz.nav.model.MemberVO;

public interface MemberService extends GenericService<MemberVO, String>{

	public MemberVO login(MemberVO loginVO);

}
