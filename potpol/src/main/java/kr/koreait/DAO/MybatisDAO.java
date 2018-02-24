package kr.koreait.DAO;

import java.util.ArrayList;
import java.util.HashMap;

import kr.koreait.VO.dataVO;

//	Mybatis의 mapper 역할을 하는 인터페이스
public interface MybatisDAO {

//	DAO 인터페이스의 추상 메소드 이름이 xml 파일의 SQL 명령의 id로 인식된다.
	public abstract ArrayList<dataVO> selectList(HashMap<String, Integer> hmap);
	
//	void insert(String name, String subject, String content);
	void insert(dataVO vo);
	
	int selectCount();
}



