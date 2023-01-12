package egovframework.example.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.dao.EgovDAO;
import egovframework.example.domain.StaffInfoVo;

@Service
public class EgovService {
	@Resource
	private EgovDAO egovDAO;
	
	public List<Map> getSemester(){
		return egovDAO.getSemester();
	}

	public List<StaffInfoVo> getSearchName(String name){
		return egovDAO.getSearchName(name);
	}	
	public List<StaffInfoVo> getSearchResult(String num){
		return egovDAO.getSearchResult(num);
	}	
	
	public void insertSemester(StaffInfoVo staffInfoVo){
		egovDAO.insertSemester(staffInfoVo);
	}
}
