<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>테스트</title>
  <link rel="stylesheet" href="/resource/css/bootstrap.css">
  <script type="text/javascript" src="/resource/js/bootstrap.js"></script>
  <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
  <link rel="stylesheet" href="/css/bootstrap.css">
  <script type="text/javascript" src="/js/bootstrap.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {
        $('#btn1').on('click', function(){
            var form = {
                    name	: $("#name").val(),
                    num		: $("#num").val(),
                   	rank	: $("#rank").val(),
                   	dept	: $("#dept").val(),
                   	phone	: $("#phone").val(),
                   	email	: $("#email").val(),
                   	add		: $("#add").val()
            }


            $.ajax({
                url: "/ajaxNameSearch.do",
                type: "POST",
                data: form,
                dataType:"json",
                success: function(data){
                	/*
                    $("#name1").val(data.name),
                    $("#num1").val(data.num),
                   	$("#rank1").val(data.rank),
                   	$("#dept1").val(data.dept),
                   	$("#phone1").val(data.phone),
                   	$("#email1").val(data.email),
                   	$("#add1").val(data.add)
                    alert("등록되었습니다.");
                	*/
                	var txt = "";
                	for(var i=0; i< data.staffInfoVoList.length; i++){
                        txt = txt + data.staffInfoVoList[i].name + " ";
                	}
                    $('#result').text(txt);
                },
                error: function(){
                    alert("simpleWithObject err");
                }
            });

			/*
            $.ajax({
                url: "ajaxValue.do",
                type: "POST",
                data: JSON.stringify(form),
                contentType: "application/json; charset=utf-8;",
                dataType: "json",
                success: function(data){
                    var txt = data.name + data.num;
                    $('#result').text(txt);
                },
                error: function(){
                    alert("stringify err");
                }
            });
             */
			/*
            $.ajax({
            	contentType : "application/json",
        		//dataType:'json',
				data : form,
        		url: "ajaxValue.do",				
        		type: "POST",		        						
        		success:function(data){
        			alert("성공!");
        			console.log(data);
        			console.log(data.test1);
        		},
        		error : function(error){
        			alert("에러!");
        			console.log(error);
        		}        		
        	});
             */
       });	
  	});
   </script>
</head>
<body>
	<h1>Hello, world!</h1>
    <button id="btn1">simpleAJAX</button>
    <div id="result"></div>
      이름 : <input type = "text" id = "name" /><br>
      사원번호 : <input type = "text" id = "num" /><br>
      직급 : <input type = "text" id = "rank" /><br>
      부서 : <input type = "text" id = "dept" /><br>
      전화번호 : <input type = "text" id = "phone" /><br>
	  이메일 : <input type = "text" id = "email" /><br>        
      주소 : <input type = "text" id = "add" /><br>
      <br>
      <br>
      <br>
      이름 1 : <input type = "text" id = "name1" /><br>
      사원번호 1 : <input type = "text" id = "num1" /><br>
      직급 1 : <input type = "text" id = "rank1" /><br>
      부서 1 : <input type = "text" id = "dept1" /><br>
      전화번호 1 : <input type = "text" id = "phone1" /><br>
	  이메일 1 : <input type = "text" id = "email1" /><br>        
      주소 1 : <input type = "text" id = "add1" /><br>    
</body>
</html>