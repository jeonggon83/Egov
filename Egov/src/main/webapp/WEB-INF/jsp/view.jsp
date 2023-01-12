<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
 		<title>CSS</title>
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <style>
	      #jb-container {
	        width: 940px;
	        margin: 10px auto;
	        padding: 20px;
	        border: 1px solid #bcbcbc;
	      }
	      #jb-header {
	        padding: 20px;
	        margin-bottom: 20px;
	        border: 1px solid #bcbcbc;
	      }
	      #jb-content {
	        padding: 20px;
	        margin-bottom: 20px;
	        border: 1px solid #bcbcbc;
	      }
	      #jb-footer {
	        clear: both;
	        padding: 20px;
	        border: 1px solid #bcbcbc;
	      }
	      @media ( max-width: 480px ) {
	        #jb-container {
	          width: auto;
	        }
	        #jb-content {
	          float: none;
	          width: auto;
	        }
	        #jb-sidebar {
	          float: none;
	          width: auto;
	        }
	      }
    </style>
</head>
<body>	
	<div id="jb-container">
      <div id="jb-header">
        <h1>삼인에이치엔티 직원 검색</h1>
      </div>
      <div id="jb-content">
        <p>	이름 : <input type = "text" name = "name" /> <button type="button">검색</button></p>
      </div>
      <div id="jb-footer">
        <p>주식회사 삼인에이치엔티대표자 (성명) : 김승한대전광역시 유성구 테크노9로 35(탑립동) IT 전용벤처타운 407호, 409호 이메일 : sales@saminhnt.com 대표번호 : 042-719-7780 팩스 번호 : 042-719-7790사업자 등록 번호 : [ 646 - 87 - 00199 ] Copyright © by SAMINHNT All Right Reserved.</p>
      </div>
    </div>
</body>
</html>