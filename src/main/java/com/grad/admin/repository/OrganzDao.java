package com.grad.admin.repository;

import java.util.List;
import java.util.Map;

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
		return (1 == sqlSession.insert("organz.insertGrad", organzVo));
	}

	/*
	 * 허주한
	 */
	public List<OrganzVo> getOrgnzList(String type) {
		return sqlSession.selectList("organz.getOrgnzList", type);
	}

	/*
	 * 허주한
	 */
	public OrganzVo getOrgnzByNo(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("organz.getOrgnzByNo", map);
	}

	/*
	 * 허주한
	 */
	public boolean update(OrganzVo vo) {
		// TODO Auto-generated method stub
		return (1 == sqlSession.update("organz.updateGrad", vo));
	}

	public OrganzVo getByNo(int no) {
		OrganzVo vo = sqlSession.selectOne("organz.getByNo", no);
		return vo;
	}

	/**************************************************/

	/*
	 * 박가혜
	 */
	public List<OrganzVo> getOrganzLabList() {
		return sqlSession.selectList("organz.selectOrganzLabList");
	}

	public void updateOrganz(OrganzVo organzVo) {

		sqlSession.update("organz.updateOrganz", organzVo);

	}
	/*
	 * 박가혜
	 */

	public List<ResrchAcrsltVo> getResrchList(int orgnzNo) {
		return sqlSession.selectList("organz.getResrchList", orgnzNo);
	}

	public ResrchAcrsltVo getResrchNo(int resrchAcrsltNo) {
		return sqlSession.selectOne("organz.getResrchNo", resrchAcrsltNo);
	}

	public void updateResrch(ResrchAcrsltVo resrchAcrsltVo) {

		sqlSession.update("organz.updateResrch", resrchAcrsltVo);

	}
}
