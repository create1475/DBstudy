package com.spring.pro27.board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.pro27.board.service.BoardService;
import com.spring.pro27.board.vo.ArticleVO;

@Controller("boradController")
public class BoardControllerImpl implements BoardController {
	private static final String CURR_IMAGE_REPO_PATH = "C:\\board\\article_image";

	@Autowired
	private BoardService boardService;

	@Autowired
	private ArticleVO articleVO;

	@Override
	@RequestMapping(value = "/board/listArticles.do", method = { RequestMethod.GET, RequestMethod.POST })

	public ModelAndView listArticles(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		List articlesList = boardService.listArticles();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("articlesList", articlesList);
		return mav;

	}
//
//	@Override
//
//	@RequestMapping(value = "/board/addNewArticle.do", method = RequestMethod.POST)
//
//	@ResponseBody
//	public ResponseEntity addNewArticle(MultipartHttpServletRequest multipartRequest, HttpServletResponse response)
//			throws Exception {
//		multipartRequest.setCharacterEncoding("utf-8");
//		Map<String, Object> articleMap = new HashMap<String, Object>();
//		Enumeration enu = multipartRequest.getParameterNames();
//		while (enu.hasMoreElements()) {
//			String name = (String) enu.nextElement();
//			String value = multipartRequest.getParameter(name);
//			articleMap.put(name, value);
//
//		}
//		String imageFileName = upload(multipartRequest);
//		HttpSession session = multipartRequest.getSession();
//		MemberVO memberVO = (MemberVO) session.getAttribute("member");
//		String id = memberVO.getId();
//		articleMap.put("parentNO", 0);
//		articleMap.put("id", id);
//		articleMap.put("imageFileName", imageFileName);
//		String message;
//		ResponseEntity resEnt = null;
//		HttpHeaders responseHeaders = new HttpHeaders();
//		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
//		try {
//			int articleNO = boardService.addNewArticle(articleMap);
//			if (imageFileName != null && imageFileName.length() != 0) {
//				File srcFile = new File(ARTICLE_IMAGE_REPO + "\\" + "temp" + "\\" + imageFileName);
//				File destDir = new File(ARTICLE_IMAGE_REPO + "\\" + articleNO);
//				FileUtils.moveFileToDirectory(srcFile, destDir, true);
//
//			}
//			message = "<script>";
//			message += "alert('새글을 추가했습니다.');";
//			message += "location.href='" + multipartRequest.getContextPath() + "/board/listArticles.do';";
//			message += "</script>";
//			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
//
//		} catch (Exception e) {
//			File srcFile = new File(ARTICLE_IMAGE_REPO + "\\" + "temp" + "\\" + imageFileName);
//			srcFile.delete();
//
//			message = "<script>";
//			message += "alert('오류가 발생했습니다. 다시 시도해 주세요');";
//			message += "location.href='" + multipartRequest.getContextPath() + "/board/articleForm.do';";
//			message += "</script>";
//			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
//			e.printStackTrace();
//
//		}
//		return resEnt;
//	}
//
//	@RequestMapping(value = "/board/viewArticle.do", method = RequestMethod.GET)
//	public ModelAndView viewArticle(@RequestParam("articleNO") int articleNO, HttpServletRequest request,
//			HttpServletResponse response) throws Exception {
//		String viewName = (String) request.getAttribute("viewName");
//		articleVO = boardService.viewArticle(articleNO);
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName(viewName);
//		mav.addObject("article", articleVO);
//		return mav;
//
//	}
//
//	@RequestMapping(value = "/board/modArticle.do", method = RequestMethod.POST)
//
//	@ResponseBody
//	public ResponseEntity modArticle(MultipartHttpServletRequest multipartRequest, HttpServletResponse response)
//			throws Exception {
//		multipartRequest.setCharacterEncoding("utf-8");
//		Map<String, Object> articleMap = new HashMap<String, Object>();
//		Enumeration enu = multipartRequest.getParameterNames();
//		while (enu.hasMoreElements()) {
//			String name = (String) enu.nextElement();
//			String value = multipartRequest.getParameter(name);
//			articleMap.put(name, value);
//
//		}
//		String imageFileName = upload(multipartRequest);
//		articleMap.put("imageFileName", imageFileName);
//
//		String articleNO = (String) articleMap.get("articleNO");
//		String message;
//		ResponseEntity resEnt = null;
//		HttpHeaders responseHeaders = new HttpHeaders();
//		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
//		try {
//			boardService.modArticle(articleMap);
//			if (imageFileName != null && imageFileName.length() != 0) {
//				File srcFile = new File(ARTICLE_IMAGE_REPO + "\\" + "temp" + "\\" + imageFileName);
//				File destDir = new File(ARTICLE_IMAGE_REPO + "\\" + articleNO);
//				FileUtils.moveFileToDirectory(srcFile, destDir, true);
//
//				String originalFileName = (String) articleMap.get("originalFileName");
//				File oldFile = new File(ARTICLE_IMAGE_REPO + "\\" + articleNO + "\\" + originalFileName);
//				oldFile.delete();
//
//			}
//			message = "<script>";
//			message += "alert('글을 수정했습니다.');";
//			message += "location.href='" + multipartRequest.getContextPath() + "/board/viewArticle.do?articleNO="
//					+ articleNO + "';";
//			message += "</script>";
//			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
//
//		} catch (Exception e) {
//			File srcFile = new File(ARTICLE_IMAGE_REPO + "\\" + "temp" + "\\" + imageFileName);
//			srcFile.delete();
//			message = "<script>";
//			message += "alert('오류가 발생했습니다. 다시 시도해 주세요');";
//			message += "location.href='" + multipartRequest.getContextPath() + "/board/viewArticle.do?articleNO="
//					+ articleNO + "';";
//			message += "</script>";
//			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
//
//		}
//		return resEnt;
//	}
//
//	@Override
//
//	@RequestMapping(value = "/board/removeArticle.do", method = RequestMethod.POST)
//
//	@ResponseBody
//	public ResponseEntity removeArticle(@RequestParam("articleNO") int articleNO, HttpServletRequest request,
//			HttpServletResponse response) throws Exception {
//		response.setContentType("text/html; charset=utf-8");
//		String message;
//		ResponseEntity resEnt = null;
//		HttpHeaders responseHeaders = new HttpHeaders();
//		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
//		try {
//			boardService.removeArticle(articleNO);
//			File destDir = new File(ARTICLE_IMAGE_REPO + "\\" + articleNO);
//			FileUtils.deleteDirectory(destDir);
//			message = "<script>";
//			message += "alert('글을 삭제했습니다.');";
//			message += "location.href='" + request.getContextPath() + "/board/listArticles.do';";
//			message += "</script>";
//			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
//		} catch (Exception e) {
//			message = "<script>";
//			message += "alert('작업중 오류가 발생했습니다.다시 시도해 주세요.');";
//			message += "location.href='" + request.getContextPath() + "/board/listArticles.do';";
//			message += "</script>";
//			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
//			e.printStackTrace();
//		}
//		return resEnt;
//
//	}
//
//	@RequestMapping(value = "/board/*form.do", method = RequestMethod.GET)
//	private ModelAndView form(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		String viewName = (String) request.getAttribute("viewName");
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName(viewName);
//		return mav;
//
//	}
//
//	private String upload(MultipartHttpServletRequest multipartRequest) throws Exception {
//		String imageFileName = null;
//		Iterator<String> fileNames = multipartRequest.getFileNames();
//
//		while (fileNames.hasNext()) {
//			String FileName = fileNames.next();
//			MultipartFile mFile = multipartRequest.getFile(FileName);
//			imageFileName = mFile.getOriginalFilename();
//			File file = new File(ARTICLE_IMAGE_REPO + "\\" + "temp" + "\\" + FileName);
//			if (mFile.getSize() != 0) {
//				if (!file.exists()) {
//					file.getParentFile().mkdirs();
//					mFile.transferTo(new File(ARTICLE_IMAGE_REPO + "\\" + "temp" + "\\" + imageFileName));
//				}
//			}
//		}
//		return imageFileName;
//	}

}