package com.grad.admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.grad.admin.repository.OrganzDao;
import com.grad.admin.vo.OrganzVo;
import com.grad.admin.vo.ResrchAcrsltVo;

@Service
public class OrganzService {

	@Autowired
	OrganzDao organzDao;

	///////////////////////////////////////////////////////////////// get

	/*
	 * 허주한 대학교 대학원 학과 list가져오기
	 */
	public List<OrganzVo> getOrgnzList(String type) {
		return organzDao.getOrgnzList(type);
	}

	/*
	 * 허주한 대학교 대학원 학과 no로 한 건 가져오기
	 */
	public OrganzVo getOrgnzByNo(int no, String type) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("type", type);
		map.put("no", no);
		return organzDao.getOrgnzByNo(map);
	}

	/*
	 * 박가혜 연구실 no로 한 건 가져오기
	 */
	public OrganzVo getOrganz(int no) {
		return organzDao.getByNo(no);
	}

	/*
	 * 박가혜 연구실 목록
	 */
	public List<OrganzVo> getOrganzLabList() {
		return organzDao.getOrganzLabList();
	}

	/*
	 * 박가혜 연구실 별 연구실적
	 */
	public List<ResrchAcrsltVo> getResrchList(int orgnzNo) {

		return organzDao.getResrchList(orgnzNo);
	}

	/*
	 * 박가혜 연구실 별 연구실적 -> 연구실적 한 건 가져오기
	 */
	public ResrchAcrsltVo getResrchNo(int resrchAcrsltNo) {

		return organzDao.getResrchNo(resrchAcrsltNo);
	}

	/////////////////////////////////////////////// insert ////////////////////////////////////////

	/*
	 * 허주한 대학원, 대학교, 학과
	 */
	public boolean insert(OrganzVo organzVo, String prntsOrgnzStr) {
		if (prntsOrgnzStr.isEmpty() || prntsOrgnzStr.equals(null)) {
			organzVo.setPrntsOrgnzNo(-1);
		} else {
			organzVo.setPrntsOrgnzNo(Integer.parseInt(prntsOrgnzStr));
		}

		if (organzVo.getOrgnzDstnct().equals("대학원") || organzVo.getOrgnzDstnct().equals("학과")
				|| organzVo.getOrgnzDstnct().equals("대학교")) {
			return organzDao.insertGrad(organzVo);
		}
		return false;
	}
	
	/*
	 * 박가혜 연구실
	 */
	public void insertLab(OrganzVo organzVo) {

		organzDao.insertLab(organzVo);

	}

	/*
	 * 박가혜 연구실적
	 */
	public void insertResrch(ResrchAcrsltVo resrchAcrsltVo) {

		organzDao.insertResrch(resrchAcrsltVo);

	}



	///////////////////////////////////////// update  ///////////////////////////////////////////////

	/*
	 * 허주한 대학원, 대학교, 학과
	 */

	public void update(OrganzVo organzVo, String type, String prntsOrgnzStr) {
		
		System.out.println(organzVo);
		System.out.println(type);
		
		if (prntsOrgnzStr.isEmpty() || prntsOrgnzStr.equals(null) || prntsOrgnzStr.equals("0")) {
			organzVo.setPrntsOrgnzNo(-1);
		} else {
			organzVo.setPrntsOrgnzNo(Integer.parseInt(prntsOrgnzStr));
		}

		organzDao.update(organzVo);

	}

	/*
	 * 박가혜 연구실
	 */
	public void updateOrganz(OrganzVo organzVo) {

		organzDao.updateOrganz(organzVo);

	}

	/*
	 * 박가혜 연구실적
	 */
	public void updateResrch(ResrchAcrsltVo resrchAcrsltVo) {

		organzDao.updateResrch(resrchAcrsltVo);

	}

	///////////////////////////// ㄱㄴㄷ순 페이징 service ///////////////////////////////////

	/*
	 * 허주한
	 */
	public int lastInsertId() {
		return organzDao.lastInsertId();
	}

	public List<OrganzVo> getListByChar(String type, String start, String end) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("type", type);
		map.put("start", start);
		map.put("end", end);
		return organzDao.getListByChar(map);
	}

	
	///////////////////////////// 기관 검색하기 ///////////////////////////////////
	
	/*
	 * 정예린 기관 검색하기
	 */
	public List<OrganzVo> getResultList(Map<String, Object> map) {
		return organzDao.getResultList(map);
	}

}
