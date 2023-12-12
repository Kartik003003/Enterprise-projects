package com.businessoperations.businessoperations;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;


@Controller
public class BusinessController {
	@Autowired
	BusinessOperations bo =new BusinessOperations();

	
	@RequestMapping("/")
	public String home() {
		return "Login.jsp";
		
	}
	@RequestMapping("/usercheck")
	public String login(String UserName, String Password) {
		
		if(UserName.equals("new.@business.com") && Password.equals("job")) {
			System.out.println(UserName+" "+Password);
			return "User.jsp";}
		else {
			return "checkdetails.jsp";
		}
	}
	@RequestMapping("/create")
	public String createemployee() {
		return "create.jsp";
	}
	
	@RequestMapping("/addemp")
	public String empdata(EmpDaraDTO ed) {
		String stat=bo.DataInsertofnewemployee(ed); 
		if(stat.equals("successreg")) {
			return "dataentered.jsp";
		}else
		return "sww.jsp";
	}
	
	@RequestMapping("/user")
	public String homeback() {
		return "User.jsp";
	}
//	@RequestMapping("/search")
//	public ModelAndView searchredirect() {
//		ModelAndView mv=new ModelAndView();
//		BusinessOperations bo =new BusinessOperations();
//		ArrayList<EmpDaraDTO> lst=bo.alldata();
//		
//		mv.addObject("datalist",lst);
//		mv.setViewName("show.jsp");
//		return mv;
//	}
	@RequestMapping("/search")
	public String searchredirect() {
		
		return "show.jsp";
	}
	@RequestMapping("/multiple")
	public String multiple() {
		
		return "multiple.jsp";
	}
	@RequestMapping("/menu")
	public String menu() {
		
		return "menu.jsp";
	}
	@RequestMapping("/autocomplete")
	public String autocomplete() {
		
		return "autocomplete.jsp";
	}
	@RequestMapping("/content")
	public String content() {
		
		return "content.jsp";
	}
	@RequestMapping("/image")
	public String image() {
		
		return "image.jsp";
	}
	@RequestMapping("/slides")
	public String slides() {
		
		return "slides.jsp";
	}
	@RequestMapping("/tooltips")
	public String tooltips() {
		
		return "tooltips.jsp";
	}
	@RequestMapping("/popups")
	public String popups() {
		
		return "popups.jsp";
	}
	@RequestMapping("/links")
	public String links() {
		
		return "links.jsp";
	}
	@RequestMapping("/css")
	public String css() {
		
		return "css.jsp";
	}
	@RequestMapping("/iframes")
	public String iframes() {
		
		return "iframes.jsp";
	}
	@RequestMapping("/Setting")
	public String Setting() {
		
		return "Setting.jsp";
	}
	@RequestMapping("/ForgotPassword")
	public String ForgotPassword() {
		
		return "forgetpassword.jsp";
	}
	@RequestMapping("/AdminLogin")
	public String AdminLogin() {
		
		return "AdminLogin.jsp";
	}
	
}
