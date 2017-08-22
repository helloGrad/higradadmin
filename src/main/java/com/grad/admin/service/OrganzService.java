package com.grad.admin.service;


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
	 * */
	public boolean insertGrad(OrganzVo organzVo, String tabnm, String prntsOrgnzStr) {
		if(prntsOrgnzStr.isEmpty() || prntsOrgnzStr.equals(null)) {
			organzVo.setPrntsOrgnzNo(-1);
		} else {
			organzVo.setPrntsOrgnzNo(Integer.parseInt(prntsOrgnzStr));
		}
		
		return organzDao.insertGrad(organzVo);
	}


}
