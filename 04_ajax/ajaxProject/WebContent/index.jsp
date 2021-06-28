<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>AJAX 개요</h1>
	
	<p>
		Asynchronous JavaScript And XML의 약자로 <br>
		서버로부터 데이터를 가져와 전체 페이지를 새로 고치지 않고 일부만 로드할 수 있게 하는 기법 <br>
		우리가 기존에 a로 요청 및 form을 통해 요청했던 방식은 동기식 요청방식였음 => 그에 해당하는 응답페이지가 돌아와야볼 수 있다(페이지 깜빡거리는 현상) <br>
		페이지 깜빡거림없이 현재페이지 내에서 비동기식 요청을 보내기 위해서는 AJAX라는 기술이 필요함<br> <br>
		
		* 동기식 / 비동기식 <br>
		- 동기식 : 요청 처리 후 그에 해당하는 응답페이지가 들어와야(다른페이지 이동) 그 다음 작업이 가능<br>
				 만약 서버 요청 후 호출된 결과까지의 시간이 지연되면 무한정 기다림(흰페이지로 보일것) <br>
				 전체 페이지가 리로드됨(페이지가 기본적으로 깜빡거림) <br>
				 
		- 비동기식 : 현재 페이지를 유지하면서 중간중간마다 추가적으로 필요한 요청을 보내줄 수 있음<br>
				    요청을 한다고해서 페이지가 넘어가지 않음(현재페이지 그대로) <br>
				    요청 보내놓고 그에 해당 응당비 올 때까지 다른 작업을 할 수 있다(즉, 페이지가 깜빡거리지 않음) <br>
				  ex) 실시간 검색어 로딩, 검색어 자동완성, 아이디 중복체크, 찜하기/해제하기, 댓글작성, ... <br><br>
				  
		* 비동기식의 단점<br> 
		- 현재 페이지에 지속적으로 리소스가 쌓임 => 페이지가 현저히 느려질 수 있음 <br>
		- 페이지 내 복잡도가 기하 급수적으로 증가 => 에러 발생시 디버깅이 어려움 <br>
		- DOM 요소를 새로이 만들어내는 구문을 잘 익혀둬야됨 <br><br>
		
		* AJAX 구현 방식 => 순수 JavaScript방식 / jQuery방식(코드가 간결하고 사용하기 쉬움)		
	</p>
	
	<pre>
	* jQuery방식의 AJAX통신
	
	$.ajax({
		속성:속성값,
		속성:속성값,
		속성:속성값,
		...
	});
	
	* AJAX의 주요 속성
	- * url : 요청할 url (필수로 작성해야되는 속성)
	- * method|type : 요청 전송 방식 (GET, POST) /* 생략시 기본으로 get방식 */
	- * data : 요청시 전달할 값 기술
	- * success : ajax 통신에 성공했을 때 실행할 이벤트핸들러(함수)
	- * error : ajax 통신에 실패했을 때 실행할 이벤트핸들러(함수)
	- * complete : ajax 통신에 실패했든 성공했든 간에 무조건 실행할 이벤트핸들러(함수)
	
	- accept : 파라미터의 타입을 설정(사용자 특화 된 파라미터 타입 설정 가능)
 	- async : 서버와의 비동기 처리 방식 설정 여부(기본값 true)
 	- beforeSend : ajax 요청을 하기 전 실행되는 이벤트 callback 함수(데이터 가공 및 header 관련 설정)
 	- cache : 요청 및 결과값을 scope에서 갖고 있지 않도록 하는 것 (기본값 true)
 	- contents : JQuery에서 response의 데이터를 파싱하는 방식 정의
 	- contentType : request의 데이터 인코딩 방식 정의(보내는 측의 데이터 인코딩)
 	- context : ajax 메소드 내 모든 영역에서 파싱 방식 정의
 	- crossDomain : 타 도메인 호출 가능 여부 설정(기본값 false)
 	- dataFilter : response를 받았을 때 정상적인 값을 return 할 수 있도록 데이터와 데이터 타입 설정
 	- dataType : 서버에서 response로 오는 데이터의 데이터 형 설정, 값이 없다면 스마트하게 판단함
 				   xml - 트리 형태의 데이터 구조
 				   json - 맵 형식의 데이터 구조(일반적인 데이터 구조)
 				   script - javascript 및 일반 String 형태 데이터
 				   html - html 태그 자체를 return 하는 방식
 				   text - String 데이터
 	- global : 기본 이벤트 사용 여부(ajaxStart, ajaxStop)(버퍼링 같이 시작과 끝을 나타낼 때, 선처리 작업)
 	- password : 서버에 접속 권한(비밀번호)이 필요한 경우
 	- processData : 서버로 보내는 값에 대한 형태 설정 여부(기본 데이터를 원하는 경우 false설정)
 	- timeout : 서버 요청 시 응답 대기 시간(milisecond)
	
	</pre>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
	<h1>jQuery 이용한 AJAX 테스트</h1>
	
	<h3>1. 버튼 클릭시 get방식으로 서버에 데이터 전송 및 응답</h3>
	
	입력 : <input type="text" id="input1">
	<button id="btn1">전송</button>
	<br><br>
	응답 : <label id="output1">현재 응답없음</label>
	
	<script>
		$(function(){
		
			$("#btn1").click(function(){
				
				// 동기식 방식
				//location.href = 'jqAjax1.do?input=' + $("#input1").val(); // 요청시 받아주는 서블릿이 없어서 404에러 뜨는게 정상
				
				// 비동기식 방식 (AJAX)
				$.ajax({
					url:"jqAjax1.do",
					type:"get",
					data:{input:$("#input1").val()},
					success:function(result){ // success : ajax 통신 성공시 실행할 함수 정의
						console.log("ajax 통신 성공");
						//console.log(result);
						
						$("#output1").html(result);
					},
					error:function(){	// error : ajax 통신 실패시 실행할 함수 정의
						console.log("ajax 통신 실패");
					},
					complete:function(){// complete : ajax 통신 성공여부와 상관없이 무조건 실행할 함수 정의
						console.log("ajax 통신 성공여부와 상관없이 무조건 실행");
					}
				});
				
			})
			
		})		
	</script>
	
	<h3>2. 버튼 클릭시 post 방식으로 서버에 여러개의 데이터 전송 및 응답</h3>
	
	이름 : <input type="text" id="input2_1"><br>
	나이 : <input type="number" id="input2_2"><br>
	<button onclick="test2();">전송</button>
	
	<br><br>
	응답 : <label id="output2">현재 응답없음</label>
	
	<script>
		function test2(){
			var name = $("#input2_1").val();
			var age = $("#input2_2").val();
			
			// 동기식 방식 
			//location.href = "jqAjax2.do?name=" + name + "&age=" + age;
			
			// 비동기식 방식
			$.ajax({
				url:"jqAjax2.do",
				type:"post",
				data:{
					name:name,
					age:age
				},success:function(result){ // result라는 매개변수(아무거나 ㄱㅊ)가 있어서 값 반환받을 수 있음
					
					$("#output2").html(result); 
					
					$("#input2_1").val("");
					$("#input2_2").val("");
					
				},error:function(){
					console.log("ajax 통신 실패");
				}
			});
			
		}
	</script>
	
	<h3>3. 서버로 데이터 전송 후, 조회된 객체(vo객체)하나를 응답하기</h3>
	
	회원번호입력 : <input type="number" id="input3">
	<button onclick="test3();">조회</button>
	<br><br>
	<ul id="output3">
		
	</ul>
	
	<script>
		function test3(){
			$.ajax({
				url:"jqAjax3.do",
				type:"get",
				data:{no:$("#input3").val()},
				success:function(obj){
					
					//console.log(obj.age);
					var str = "<li>" + obj.name + "</li>"
					        + "<li>" + obj.age + "</li>"
					        + "<li>" + obj.gender + "</li>";
					
					$("#output3").html(str);
					
				},error:function(){
					console.log("ajax 통신 실패");
				}
			});
		}
	</script>
	
	<h3>4. 응답데이터로 여러개의 객체들이 담겨있는 ArrayList응답하기</h3>
	<button onclick="test4();">회원 전체조회</button>
	
	<br><br>
	
	<table id="memberList1" border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>나이</th>
				<th>성별</th>
			</tr>
		</thead>
		<tbody>
		
		</tbody>
	</table>
	
	<script>
		function test4() {
			$.ajax({
				url:"jqAjax4.do",
				success:function(list){
					
					console.log(list); // 객체들이 여러개 담겨있는 배열
					
					var result = "";
					for(var i  in list){
						result += "<tr>"
								+   "<td>" + list[i].no + "</td>"
								+   "<td>" + list[i].name + "</td>"
								+   "<td>" + list[i].age + "</td>"
								+   "<td>" + list[i].gender + "</td>"
								+ "</tr>";
					}
					
					$("#memberList1 tbody").html(result);
					
				}, error:function(){
					console.log("ajax통신 실패");
				}
			});
		}
	</script>

</body>
</html>