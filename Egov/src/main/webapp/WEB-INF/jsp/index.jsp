<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Landing Page - Start Bootstrap Theme</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="/resource/assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" type="text/css" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/resource/css/styles.css" rel="stylesheet" />
        <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
		<script type="text/javascript">
		    $(document).ready(function() {
		    	$('#submitButton').on('click', function(){
		    		
		            var form = {
		            	name : $("#name").val()
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
	                            txt = txt + "<a href=javascript:callFunction(" + "'" + data.staffInfoVoList[i].num  + "'" +")>" + data.staffInfoVoList[i].name + "</a>";
	                    	}
	                        $('#result').html(txt);
	                    },
	                    error: function(){
	                        alert("simpleWithObject err");
	                   }
	                });
		        });
		  	});
		    
	    	function callFunction(number){
	            var form = {
            		num : number
	            }
	    		
                $.ajax({
                    url: "/ajaxSearchResult.do",
                    type: "POST",
                    data: form,
                    dataType:"json",
                    success: function(data){
                    	var txt = "";
                    	for(var i=0; i< data.staffInfoVoList.length; i++){
                    		$('#resultNo').html(data.staffInfoVoList[i].no);
                    		$('#resultName').html(data.staffInfoVoList[i].name);
                    		$('#resultNum').html(data.staffInfoVoList[i].add);
                    		$('#resultAdd').html(data.staffInfoVoList[i].name);                    		
                    		$('#resultPhone').html(data.staffInfoVoList[i].phone);                    		
                    		$('#resultRank').html(data.staffInfoVoList[i].rank);
                    		$('#resultDept').html(data.staffInfoVoList[i].dept);                    		
                    		$('#resultEmail').html(data.staffInfoVoList[i].email);
                    	}
                    },
                    error: function(){
                        alert("simpleWithObject err");
                   }
                });	    		
	    	}
    	</script>        
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-light bg-light static-top">
            <div class="container">
                <a class="navbar-brand" href="#!">SAMINHTNT</a>
                <!-- <a class="btn btn-primary" href="#signup">Sign Up</a> -->
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead">
            <div class="container position-relative">
                <div class="row justify-content-center">
                    <div class="col-xl-6">
                        <div class="text-center text-white">
                            <!-- Page heading-->
                            <h1 class="mb-5">직원이름으로 검색하세요.</h1>
                            <!-- Signup form-->
                            <!-- * * * * * * * * * * * * * * *-->
                            <!-- * * SB Forms Contact Form * *-->
                            <!-- * * * * * * * * * * * * * * *-->
                            <!-- This form is pre-integrated with SB Forms.-->
                            <!-- To make this form functional, sign up at-->
                            <!-- https://startbootstrap.com/solution/contact-forms-->
                            <!-- to get an API token!-->
                            <!-- Email address input-->
                            <div class="row">
                                <div class="col">
                                    <input class="form-control form-control-lg" id="name" placeholder="사람이름" />
                                </div>
                                <div class="col-auto"><button class="btn btn-primary btn-lg" id="submitButton">검색</button></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <section class="features-icons bg-light text-center">
        	검색결과 : <div id="result"></div>
        </section>
        <!-- Icons Grid-->
        <section class="features-icons bg-light text-center">
			<table class="table" width="100">
			 <thead>
			   <tr>
			      <th>순번</th>
			      <th>이름</th>
			      <th>사원번호</th>
			      <th>주소</th>			      
			      <th>전화번호</th>			      
			      <th>직급</th>			      
			      <th>부서</th>			      
			      <th>이메일</th>			      
			   </tr>
			 </thead>
			 <tbody>
			   <tr>
			      <td><div id="resultNo"></div></td>
			      <td><div id="resultName"></div></td>
			      <td><div id="resultNum"></div></td>
			      <td><div id="resultAdd"></div></td>			      
			      <td><div id="resultPhone"></div></td>			      
			      <td><div id="resultRank"></div></td>			      
			      <td><div id="resultDept"></div></td>			      
			      <td><div id="resultEmail"></div></td>			      
			   </tr>
			 </tbody> 
			</table>
			<br><br>
        </section>
        <!-- Footer-->
        <footer class="footer bg-light">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 h-100 text-center text-lg-start my-auto">
                        <ul class="list-inline mb-2">
                            <li class="list-inline-item"><a href="#!">About</a></li>
                            <li class="list-inline-item">⋅</li>
                            <li class="list-inline-item"><a href="#!">Contact</a></li>
                            <li class="list-inline-item">⋅</li>
                            <li class="list-inline-item"><a href="#!">Terms of Use</a></li>
                            <li class="list-inline-item">⋅</li>
                            <li class="list-inline-item"><a href="#!">Privacy Policy</a></li>
                        </ul>
                        <p class="text-muted small mb-4 mb-lg-0">&copy; 주식회사 삼인에이치엔티대표자 (성명) : 김승한대전광역시 유성구 테크노9로 35(탑립동) IT 전용벤처타운 407호, 409호 이메일 : sales@saminhnt.com 대표번호 : 042-719-7780 팩스 번호 : 042-719-7790사업자 등록 번호 : [ 646 - 87 - 00199 ] Copyright © by SAMINHNT All Right Reserved.</p>
                    </div>
                    <div class="col-lg-6 h-100 text-center text-lg-end my-auto">
                        <ul class="list-inline mb-0">
                            <li class="list-inline-item me-4">
                                <a href="#!"><i class="bi-facebook fs-3"></i></a>
                            </li>
                            <li class="list-inline-item me-4">
                                <a href="#!"><i class="bi-twitter fs-3"></i></a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#!"><i class="bi-instagram fs-3"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="/resource/js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>
