package com.grad.admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.grad.admin.repository.OrganzDao;
import com.grad.admin.vo.OrganzVo;
import com.grad.admin.vo.ResrchAcrsltVo;

/*
 * 정예린 : admin으로 옮김
 */

@Service
public class OrganzService {

	@Autowired
	OrganzDao organzDao;

	/*
	 * 박가혜
	 */
	public void insertLab(OrganzVo organzVo) {

		organzDao.insertLab(organzVo);

	}

	/*
	 * 박가혜
	 */
	public void insertResrch(ResrchAcrsltVo resrchAcrsltVo) {

		organzDao.insertResrch(resrchAcrsltVo);

	}

	/*
	 * 허주한
	 */
	public boolean insertGrad(OrganzVo organzVo, String tabnm, String prntsOrgnzStr) {
		if (prntsOrgnzStr.isEmpty() || prntsOrgnzStr.equals(null)) {
			organzVo.setPrntsOrgnzNo(-1);
		} else {
			organzVo.setPrntsOrgnzNo(Integer.parseInt(prntsOrgnzStr));
		}

		return organzDao.insertGrad(organzVo);
	}

	/*
	 * 허주한
	 */
	public List<OrganzVo> getOrgnzList(String type) {
		// TODO Auto-generated method stub
		return organzDao.getOrgnzList(type);
	}

	/*
	 * 허주한
	 */
	public OrganzVo getOrgnzByNo(int no, String type) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("type", type);
		map.put("no", no);
		return organzDao.getOrgnzByNo(map);
	}

	/*
	 * 허주한
	 */

	public boolean update(OrganzVo organzVo, String type, String prntsOrgnzStr) {
		// TODO Auto-generated method stub
		if (prntsOrgnzStr.isEmpty() || prntsOrgnzStr.equals(null) || prntsOrgnzStr.equals("0")) {
			organzVo.setPrntsOrgnzNo(-1);
		} else {
			organzVo.setPrntsOrgnzNo(Integer.parseInt(prntsOrgnzStr));
		}

		if (type.equals("대학원")) {
			return organzDao.update(organzVo);

		}
		return false;

	}

	public boolean insert(OrganzVo organzVo, String prntsOrgnzStr) {
		// TODO Auto-generated method stub
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

	/**************************************************/

	public OrganzVo getOrganz(int no) {
		return organzDao.getByNo(no);
	}

	/*
	 * 박가혜
	 */
	public List<OrganzVo> getOrganzLabList() {
		return organzDao.getOrganzLabList();
	}

	public void updateOrganz(OrganzVo organzVo) {

		organzDao.updateOrganz(organzVo);

	}

	public List<ResrchAcrsltVo> getResrchList(int orgnzNo) {

		return organzDao.getResrchList(orgnzNo);
	}

	public ResrchAcrsltVo getResrchNo(int resrchAcrsltNo) {

		return organzDao.getResrchNo(resrchAcrsltNo);
	}

	public void updateResrch(ResrchAcrsltVo resrchAcrsltVo) {

		organzDao.updateResrch(resrchAcrsltVo);

	}

}
