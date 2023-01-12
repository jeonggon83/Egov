package egovframework.example.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import egovframework.example.domain.StaffInfoVo;
import egovframework.example.domain.TestVo;
import egovframework.example.service.EgovService;

@Controller
public class EgovController {
	
	////
	@Resource(name="egovService")
	private EgovService egovService;
	
	@RequestMapping("/view.do")
	public ModelAndView dbPage(ModelAndView mav) throws Exception{
		
		List<Map> semesterModel = egovService.getSemester(); 
		
		mav.addObject("semester", semesterModel);
		mav.setViewName("view");
		return mav;
	}

	@RequestMapping("/index.do")
	public ModelAndView index(ModelAndView mav) throws Exception{
		System.out.println("/index.do");
		mav.setViewName("index");
		return mav;
	}		
	
	@RequestMapping("/insertStaffInfo.do")
	public ModelAndView insertStaffInfo(ModelAndView mav) throws Exception{
		mav.setViewName("insertStaffInfo");
		return mav;
	}	
	
	@RequestMapping("/staffInfo.do")
	public ModelAndView selectstaffInfo(ModelAndView mav) throws Exception{
		mav.setViewName("staffInfo");
		return mav;
	}
	
	@RequestMapping("/ajaxTest.do")
	public ModelAndView ajaxTest(ModelAndView mav) throws Exception{
		System.out.println("/ajaxTest.do");
		mav.setViewName("ajaxTest");
		return mav;
	}		
	/*
	@PostMapping("/ajaxValue.do")
	public Map ajaxValue(StaffInfoVo staffInfoVo) throws Exception{
   	    Map<String, Object> result = new HashMap<String, Object>();
        result.put("code", "0000");
        return result;

	}
	*/	
	/*
    @RequestMapping(value="/ajaxValue.do", method=RequestMethod.POST)
    @ResponseBody
    public HashMap<String, Object> simpleWithObject(StaffInfoVo staffInfoVo) {
    	//필요한 로직 처리
    	//System.out.println("No : " + staffInfoVo.getNo());//순번
    	//System.out.println("Num : " + staffInfoVo.getNum());//사번
    	//System.out.println("staffInfoVo : " + staffInfoVo);
    	
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("name", staffInfoVo.getName());
        map.put("num", staffInfoVo.getNum());
        return map;
    	
        //return staffInfoVo.getNo() + staffInfoVo.getNum();
    }
    */

    @RequestMapping(value="/ajaxNameSearch.do", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView ajaxNameSearch(String name) {
		ModelAndView mav = new ModelAndView("jsonView");
		
		List<StaffInfoVo> list = (List<StaffInfoVo>)egovService.getSearchName(name);
		
		mav.addObject("staffInfoVoList", list);
		
		return mav;		
	}		

    @RequestMapping(value="/ajaxSearchResult.do", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView ajaxSearchResult(String num) {
		ModelAndView mav = new ModelAndView("jsonView");		
		List<StaffInfoVo> list = (List<StaffInfoVo>)egovService.getSearchResult(num);
		mav.addObject("staffInfoVoList", list);
		return mav;
	}		
    
    @RequestMapping(value="/ajaxValue.do", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView stringify(StaffInfoVo staffInfoVo) {

		ModelAndView mav = new ModelAndView("jsonView");
		/*
		List<StaffInfoVo> list = (List<StaffInfoVo>)session.selectList("selectAllUsers");

		for(StaffInfoVo staffInfo : list) {
			System.out.println(staffInfo);
		}
		*/
    	/*
		mav.addObject("name", staffInfoVo.getName());		
		mav.addObject("num", staffInfoVo.getNum());		
		mav.addObject("rank", staffInfoVo.getRank());		
		mav.addObject("dept", staffInfoVo.getDept());		
		mav.addObject("phone", staffInfoVo.getPhone());		
		mav.addObject("email", staffInfoVo.getEmail());		
		mav.addObject("add", staffInfoVo.getAdd());
		
		egovService.insertSemester(staffInfoVo);
		*/		
		return mav;

	}	    
    
	/*
	@RequestMapping(value = "/ajaxValue.do", method = RequestMethod.POST)
	@ResponseBody
	public String ajaxValue(StaffInfoVo staffInfoVo) {
		ModelAndView  mav = new ModelAndView("jsonView");
		//HashMap<String, String> resultMap = new HashMap<String, String>();
		
		//resultMap.put("status", "1234"); 
		
		mav.addObject("test", "1234");
		
		return "jsonView";
	}
	*/
	/*
	@RequestMapping(value = "/ajaxValue.do", method = RequestMethod.POST)
	@ResponseBody
	public String ajaxValue(StaffInfoVo staffInfoVo, ModelMap model) {
		model.addAttribute("test_str", "1234");
		return "jsonView";
	}
	*/
	
	@PostMapping("/test/ajax")
    @ResponseBody
    public Map<String, Object> testAjax(TestVo testVo){
        
        Map<String, Object> result = new HashMap<String, Object>();
        
        // 홍길동
        System.out.println(testVo.getName());
        
        // 남자
        System.out.println(testVo.getSex());
        
        // 20
        System.out.println(testVo.getAge());
        
        // 010-0000-0000
        System.out.println(testVo.getTellPh());
        
        // 응답 데이터 셋팅
        result.put("code", "0000");
        
        return result;
        
    }
	/*
	@ResponseBody
	@RequestMapping(value = "/url", method = { RequestMethod.GET, RequestMethod.POST})
	public String test(TestVO vo) throws Exception {
	 
	    System.out.println(vo.toString());
	    String result = "text";
	 
	    return result;
	}
	*/
	/*
	@RequestMapping(value = "/url", method = { RequestMethod.GET, RequestMethod.POST})
	public List test(@RequestBody Map<String, Object> params) throws Exception {
	 
	    System.out.println(params);
	    List list = new ArrayList<HashMap<String, Object>>();
	 
	    return list;
	 
	}
	*/
}
