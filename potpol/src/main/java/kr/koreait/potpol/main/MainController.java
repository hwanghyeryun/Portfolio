package kr.koreait.potpol.main;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.koreait.DAO.MybatisDAO;
import kr.koreait.VO.dataList;
import kr.koreait.VO.dataVO;
import kr.koreait.trans.trans;

@Controller
public class MainController {

	@RequestMapping(value="/")
	public String main() {
		return "main";
	}
	
	@Autowired
	private SqlSession sqlSession;
	AbstractApplicationContext ctx = new GenericXmlApplicationContext("classpath:applicationCTX.xml");
	
	@RequestMapping("/main")
	public String main(HttpServletRequest request, Model model) {
		System.out.println("main()");
		return "main";
	}
	
	@RequestMapping("/translate")
	public String first(HttpServletRequest request, Model model) {
		System.out.println("translate()");
		return "translate";
	}

	@RequestMapping("/ok")
	public String ok(HttpServletRequest request, Model model, HttpSession session) {
		System.out.println("ok()");
		String source = request.getParameter("source");
		String before = request.getParameter("before");
		String target = request.getParameter("target");	
		
		trans.source = source;
		trans.text = before;
		trans.target = target;
		
		
		session.setAttribute("source", source);
		session.setAttribute("target", target);
		session.setAttribute("before", before);
		
		
		trans.main(null);
		
		String after = trans.result;
		
		
		if(before.equals("")) {
			session.setAttribute("after", "번역할 내용을 입력해주세요.");
		}else {
			session.setAttribute("after", after);
		}
		return "redirect:translate";
	}
	
	@RequestMapping("/save")
	public String save(HttpServletRequest request, Model model) {
		System.out.println("save()");
		String source = request.getParameter("source");
		String before = request.getParameter("before");
		String target = request.getParameter("target");
		String after = request.getParameter("after");
		MybatisDAO mapper = sqlSession.getMapper(MybatisDAO.class);
		dataVO vo = new dataVO();
		vo.setAfter(after);
		vo.setBefore(before);
		vo.setSource(source);
		vo.setTarget(target);
		mapper.insert(vo);
	
		return "redirect:translate";
	}
	
	@RequestMapping("/word")
	public String list(HttpServletRequest request, Model model) {
		System.out.println("word()");
		
//		controller와 SQL 명령이 저장된 xml 파일을 연결하는 임의의 이름으로 인터페이스를 만들고 인터페이스 
//		객체로 mapper 를 얻어온다.
		MybatisDAO mapper = sqlSession.getMapper(MybatisDAO.class);
//		결과를 저장할 클래스의 bean을 얻어온다.
		dataList list = ctx.getBean("list", dataList.class);
		int pageSize = 10;
		int totalCount = mapper.selectCount();
//		매퍼 인터페이스의 selectList() 메소드를 호출해 xml 파일에서 id가 selectList인 SQL 명령을 실행하고
//		리턴된 결과를 저장할 클래스에 저장시킨다.
		list.setPageSize(pageSize);
		list.setTotalCount(totalCount);
		int currentPage=1;
		try {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		} catch (Exception e) { }		
		int totalPage = (list.getTotalCount() - 1) / pageSize + 1;
		list.setTotalPage(totalPage);
			currentPage = currentPage > totalPage ? totalPage : currentPage;
		list.setCurrentPage(currentPage);
		int startNo = (currentPage - 1) * pageSize + 1;
		list.setStartNo(startNo);
		int endNo = startNo + pageSize - 1;
			endNo = endNo > totalCount ? totalCount : endNo;
		list.setEndNo(endNo);
		int startPage = (currentPage - 1) / 10 * 10 + 1;
		list.setStartPage(startPage);
		int endPage = startPage + 9;
			endPage = endPage > totalPage ? totalPage : endPage;
		list.setEndPage(endPage);
			
		HashMap<String, Integer> hmap = new HashMap<String, Integer>();
		hmap.put("startNo", list.getStartNo());
		hmap.put("endNo", list.getEndNo());
		list.setList(mapper.selectList(hmap));
		model.addAttribute("list", list);
		
		return "word";
	}
	
	@RequestMapping("/contact")
	public String contact(HttpServletRequest request, Model model) {
		System.out.println("contact()");
		return "contact";
	}
	
	@RequestMapping("/game")
	public String game(HttpServletRequest request, Model model) {
		System.out.println("game()");
		return "game";
	}
	
	@RequestMapping("/trans")
	public String trans(HttpServletRequest request, Model model) {
		System.out.println("trans()");
		return "trans";
	}
	@RequestMapping("/board")
	public String board(HttpServletRequest request, Model model) {
		System.out.println("board()");
		return "board";
	}
	

}
