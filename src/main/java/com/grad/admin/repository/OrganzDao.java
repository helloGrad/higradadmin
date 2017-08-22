package com.grad.admin.repository;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.grad.admin.vo.OrganzVo;
import com.grad.admin.vo.ResrchAcrsltVo;

/*
 * 정예린 : admin으로 옮김
 */

@Repository
public class OrganzDao {
	
	@Autowired
	SqlSession sqlSession;
	
	/*
	 * 박가혜
	 */
	public void insertLab(OrganzVo organzVo) {
		sqlSession.insert("organz.insertLab", organzVo);
	}

	/*
	 * 박가혜
	 */
	public void insertResrch(ResrchAcrsltVo resrchAcrsltVo) {
		sqlSession.insert("organz.insertResrch", resrchAcrsltVo);
	}
	
	/*
	 * 허주한
	 */
	public boolean insertGrad(OrganzVo organzVo) {
		return (1==sqlSession.insert("organz.insertGrad", organzVo));
	}

}
