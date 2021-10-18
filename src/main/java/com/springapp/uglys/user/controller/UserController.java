package com.springapp.uglys.user.controller;

import java.io.File;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.springapp.uglys.user.service.UserService;
import com.springapp.uglys.user.vo.UserVO;
import com.springapp.uglys.utils.UploadFileUtils;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/user/*")
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Inject
	UserService service;
	
	// 파일 업로드
//	@Resource(name="uploadPath")
	private String uploadPath;
	

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage() throws Exception{
		return "login";
	}
	
	// 로그인
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(UserVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
		System.out.println("UserController.login");
		logger.info("login");
		HttpSession session = req.getSession();
		UserVO login = service.login(vo);
//		System.out.println("service.login(vo); :"+login.getUser_id());
		
		if(login == null) {
			session.setAttribute("user", null);
			rttr.addFlashAttribute("fail", false);
			return "redirect:/user/login";
		}else {
			session.setAttribute("user", login);
			System.out.println("로그인시 유저이름 : "+login.getUser_name());
			
			return "redirect:/";
//			UserVO vo2= (UserVO)session.getAttribute("user");
//			System.out.println("vo2.getUser_id() :"+vo2.getUser_id());
		}
		
	
	}
	
	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		logger.info("logout");

		session.invalidate();
		
		return "redirect:/";
	}
	
	// 회원가입 get
	@RequestMapping(value = "/insertUser", method = RequestMethod.GET)
	public String getInsertUser() throws Exception {
		logger.info("get insert"); 
		return "join";
		
	}
	
	// 회원가입 post
	@RequestMapping(value = "/insertUser", method = RequestMethod.POST)
	public String postInsertUser(UserVO vo,HttpServletRequest req, MultipartFile file) throws Exception {
		logger.info("post insert");
		System.out.println("vo : "+vo.getUser_admin());
		uploadPath = req.getSession().getServletContext().getRealPath("/resources");
		System.out.println("업로드 패스 : "+uploadPath);
		
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;

		if(file != null) {
		 fileName =  UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath); 
		} else {
		 fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}
		//패스 추가
		vo.setUser_img(".."+File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		System.out.println("setUser_img :"+vo.getUser_img());
		service.insertUser(vo);

		return "login";


	}
	// 회원 정보  뷰페이지
	@RequestMapping(value="/userUpdateView", method = RequestMethod.GET)
	public String userUpdateView(HttpSession session,Model model,HttpServletResponse response) throws Exception{
		// 수정페이지로갈때 정보를 가지고 넘겨준다.
		if(session.getAttribute("user")==null) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('먼저 로그인해 주세요');</script>");
			out.flush();
			
			return "login";
		}
		UserVO vo = (UserVO)session.getAttribute("user");
		System.out.println("vo.getUser_id() :"+vo.getUser_id());
		
		//세션에 유저정보를 저장한다.
		UserVO user = (UserVO)service.selectUser(vo);
		model.addAttribute("user",user);
		System.out.println("user.getUser_id : "+user.getUser_id());
		System.out.println("user.getUser_name : "+user.getUser_name());
		System.out.println("user.getUser_email : "+user.getUser_email());
		System.out.println("user.getUser_birth : "+user.getUser_birth());
		System.out.println("user.getUser_admin : "+user.getUser_admin());
		return "myInfo";
	}

	// 수정 완료
	@RequestMapping(value="/userUpdate", method = RequestMethod.POST)
	public String userUpdate(UserVO vo, HttpSession session,MultipartFile file,HttpServletRequest req) throws Exception{
		uploadPath = req.getSession().getServletContext().getRealPath("/resources");
		System.out.println("업로드 패스 : "+uploadPath);
		logger.info("수정 처리 메서드");
		System.out.println("수정할데이터 getUser_email :"+vo.getUser_email());
		System.out.println("수정할데이터 getUser_name:"+vo.getUser_name());
		System.out.println("수정할데이터 getUser_birth:"+vo.getUser_birth());
		System.out.println("수정할데이터 getUser_phone:"+vo.getUser_phone());
		System.out.println("수정할데이터 getUser_basic_address :"+vo.getUser_basic_address());
		System.out.println("수정할데이터 getUser_detail_address :"+vo.getUser_detail_address());
		System.out.println("수정할데이터 getUser_id :"+vo.getUser_id());
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;

		if(file != null) {
		 fileName =  UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath); 
		} else {
		 fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}
		vo.setUser_img(".."+File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		System.out.println("수정할데이터 getUser_img :"+vo.getUser_img());
		service.updateUser(vo);
		
		
		return "redirect:/";
	}
	
	// 회원 탈퇴
	@RequestMapping(value="/userDeleteView", method = RequestMethod.GET)
	public String userDeleteView(HttpSession session, HttpServletResponse response) throws Exception{
		if(session.getAttribute("user")==null) {

		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<script>alert('먼저 로그인해 주세요');</script>");
		out.flush();
		return "login";
		}
		return "userDeleteView";
	}

	// 탈퇴 완료
	@RequestMapping(value="/userDelete", method = RequestMethod.POST)
	public String userDelete(UserVO vo, HttpSession session, RedirectAttributes rttr) throws Exception{
		
		UserVO user = (UserVO) session.getAttribute("user");
		String sessionPassword = user.getUser_password();
		String voPassword = vo.getUser_password();
		
		if (!(sessionPassword.equals(voPassword))) {
			rttr.addFlashAttribute("fail", false);
			return "redirect:/user/userDeleteView";
		}

		//파일 삭제 
		DeleteFileUtils deleteFile = new DeleteFileUtils(); //유저의 이미지 src를 받아온다. 
		vo =service.selectUser(vo); //파일 경로를 입력하면 해당 파일을 삭제한다. 
		String filePath =req.getSession().getServletContext().getRealPath("/resources");
		// 
		filePath+=vo.getUser_img().substring(2); 
		System.out.println("이미지 파일 경로"+filePath);

		service.deleteUser(vo);
		
		session.invalidate();
		
		return "redirect:/";
	}
	 
}