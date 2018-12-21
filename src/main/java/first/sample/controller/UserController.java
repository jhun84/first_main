package first.sample.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import first.common.common.CommandMap;
import first.sample.service.UserService;

@Controller
public class UserController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="UserService")
	private UserService userService;
	
	@RequestMapping(value="/sample/needLogin.do")
	public ModelAndView needLogin() throws Exception{
		ModelAndView mv = new ModelAndView("/user/loginwarning");
		mv.addObject("msg","로그인 후 사용하시기 바랍니다.");
		
		return mv;
	}
	@RequestMapping(value="/sample/Login.do")
	public ModelAndView Login() throws Exception{
	    ModelAndView mv = new ModelAndView("/user/login");
	     
	    return mv;
	}
	@RequestMapping(value="/sample/openSignup.do")
	public ModelAndView openSignup(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/user/signup");
	     
	    return mv;
	}
	@RequestMapping(value="/sample/loginTry.do")
	public ModelAndView login(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("/user/loginsuccess");
	    
	    Map<String, Object> map = userService.selectUserInfo(commandMap.getMap());
	    
	    if(map == null) {
	    	mv.addObject("msg","로그인에 실패하였습니다.");
	    }else {
	    	request.getSession().setAttribute("logininfo",map);
	    	request.getSession().setMaxInactiveInterval(60*30);
	    	mv.addObject("msg","로그인에 성공하였습니다.");
	    }
	    return mv; 
	}
	@RequestMapping(value="/sample/logoutTry.do")
	public ModelAndView logout(HttpServletRequest request) throws Exception{
		request.getSession().removeAttribute("logininfo");
		ModelAndView mv = new ModelAndView("/user/logout");
		mv.addObject("msg","로그아웃이 완료되었습니다.");
		
		return mv;
	}
}
