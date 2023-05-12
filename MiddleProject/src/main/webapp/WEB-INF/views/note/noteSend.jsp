<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


	<div class="site-section">
      <div class="container">
        <div class="row justify-content-md-center">
          <div class="col-md-7">
            <h2 class="h3 mb-3 text-black">쪽지보내기</h2>
				<form method="post" id="form">
				 <div class="p-3 p-lg-5 border">
					<table class="table">
						<tr>
						<th scope="col" class="text-primary">내용</th>
						<td> <textarea name="subject" cols="30" rows="15" class="form-control" placeholder="Write your notes here..."></textarea></td>
						</tr>
					</table>

            			<div class="d-flex justify-content-center">
							<input type="text" name="userId" class="form-control" placeholder="이메일을 입력해주세요" style="width:220px; margin-left:43px;">
							<label for="myCheck" style="margin-top:4px; margin-left:10px;">모두에게 보내기:</label> 
							<input type="checkbox"  name ="checkbox1" id="myCheck" onclick="myFunction()" style="margin-bottom:10px; margin-left:5px;">
							<p id="text" style="display:none">모두 선택됨!</p>
						</div>
						
						<div class="d-flex justify-content-end" style="margin-top:50px;">
							<button type="button"class="btn btn-outline-primary btn-sm" onclick="send()">보내기</button>
							<button class="btn btn-outline-dark btn-sm " onclick=location.href='main.do'">목차</a></button>
						</div>
				</div>
				</form>
		  </div>
	  </div>
	</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script>
	var tmp;
	function myFunction() {
		  var checkBox = document.getElementById("myCheck");
		  tmp = $('[name=checkbox1]').is(':checked')
		  var text = document.getElementById("text");
		  if (checkBox.checked == true){
		    text.style.display = "block";
		    
		  } else {
		     text.style.display = "none";
		  }
		}
	
	function send(){
		if( tmp ){
			console.log(tmp);
		 $('#form').attr("action","sendAllNote.do").submit();
		
	}else{
		 $('#form').attr("action","noteSend.do").submit();
	}
	}
	
	
	</script>