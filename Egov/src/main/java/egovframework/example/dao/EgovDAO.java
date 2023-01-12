package egovframework.example.dao;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.egovframe.rte.psl.dataaccess.mapper.Mapper;

import egovframework.example.domain.StaffInfoVo;

@Mapper("boardMapper")
public class EgovDAO {
	@Resource(name="sqlSession")
	private SqlSession query;
	
	public List<Map> getSemester(){
		return query.selectList("getSemester");
	}

	public List<StaffInfoVo> getSearchName(String name){
		return query.selectList("getSearchName", name);
	}	

	public List<StaffInfoVo> getSearchResult(String num){
		return query.selectList("getSearchResult", num);
	}		
	
	public void insertSemester(StaffInfoVo staffInfoVo){
		try{
			query.insert("insertWorker", staffInfoVo);
			query.commit();
		}catch(Exception e) {
			System.out.print("DB 에러");
		}
	}
}
