package com.grad.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.grad.admin.security.Auth;
import com.grad.admin.service.OrganzService;
import com.grad.admin.vo.OrganzVo;
import com.grad.admin.vo.ResrchAcrsltVo;


@Controller
@RequestMapping("/organz")
public class OrganzController {

	/*
	 * 정예린 : admin으로 옮김
	 */
	@Autowired
	OrganzService organzService;

	/*
	 * 박가혜
	 */
	@Auth(role=Auth.Role.ADMIN) 
	@RequestMapping("/list")
	public String registerOrganz() {

		return "organz/list";
	}

	/*
	 * 박가혜
	 */
	@Auth(role=Auth.Role.ADMIN) 
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	public String registerOrganz(@ModelAttribute OrganzVo organzVo, @ModelAttribute ResrchAcrsltVo resrchAcrsltVo,
			@RequestParam String tabnm, 
			@RequestParam(value = "prntsOrgnzStr", required = true, defaultValue = "") String prntsOrgnzStr) {


		if (tabnm.equals("lab")) {
			if (resrchAcrsltVo.getResrchText() == null) { // 연구실입력인 경우
				organzService.insertLab(organzVo);
			}

			if (organzVo.getOrgnzNm() == null) { // 연구실적입력인 경우
				organzService.insertResrch(resrchAcrsltVo);
			}
		}

		/*
		 * 허주한
		 */
		else if (tabnm.equals("grad")) {
			organzService.insertGrad(organzVo, tabnm, prntsOrgnzStr);
		}

		return "redirect:/organz/list";
	}

}
