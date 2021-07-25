<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="u" %>
    
    <section class="junsec">
       <div>
           <div class="container">
               <div class="row">
                   <form action="join" id="join" method="post">
                   <div class="junjoin">
                       <div class="col-sm-12 col-xs-12 junjoin-wrap">
                           <div class="col-sm-12 col-xs-12 junid-form">
                               아이디<br/>
                               <input type="text" class="form-control junid" id="userId" name="userId" placeholder="아이디는 4~8글자" style="display:inline-block">
                               <button type="button" class="junidCheck" id="idCheck">중복</button>
                            </div>
                            <div class="col-sm-12 col-xs-12 junpw-form">
                                비밀번호<br/>
                                <input type="password" class="form-control junpw" name="userPw">
                            </div>
                            <div class="col-sm-12 col-xs-12 junpwCheck-form">
                                비밀번호 확인<br/>
                                <input type="password" class="form-control junpwCheck">
                                <span class="junpwMsg"></span>
                            </div>
                            <div class="col-sm-12 col-xs-12 junname-form">
                                이름<br/>
                                <input type="text" class="form-control junname" name="userName">
                                </div>
                            <div class="col-sm-12 col-xs-12 junphone-form">
                                핸드폰번호<br/>
                                <input type="text" class="form-control junphone" name="userPhone">
                            </div>
                            <div class="col-sm-12 col-xs-12 junemail-form">
                                이메일<br/>
                                <input type="text" class="form-control junemail" name="userEmail">
                            </div>
                            <div class="col-sm-12 col-xs-12 junbirth-form">
                                생년월일<br/>
                                <input type="text" class="form-control junbirth" name="addrZipNum" style="display:inline-block">
                                <button type="button" class="juncal">달력</button>
                            </div>
                            <div class="col-sm-12 col-xs-12 junaddnum-form">
                                우편번호<br/>
                                <input type="text" class="form-control junaddnum" name="addrBasic">
                            </div>
                            <div class="col-sm-12 col-xs-12 junadd-form">
                                주소<br/>
                                <input type="text" class="form-control junadd" name="addrDetail"><br/>
                                상세주소<br/>
                                <input type="text" class="form-control junadd2" name="birthday">
                                <button type="button" class="junjoinbtn">회원가입</button>
                            </div>
                        </div>
                    </div>
                   </form>
                </div>
            </div>
        </div>
        </section>
        
        
        
        <script>
        //아이디 중복체크
       	$("#idCheck").click(function() {
			
       		var userId = $("#userId").val();
       		
       		if( userId == '' || userId.length < 4 || userId.length > 8) {
       			$("#userId").focus();
       			alert("아이디는 4~8글자입니다.");
       			return;
       		}
       		
       		$.ajax({
       			type: "post",
       			url : "idCheck",
       			dataType : "json",
       			contentType: "application/json",
       			data : JSON.stringify({"userId" : userId}),
       			success : function(data) {
					
       				if(data == 0) {
       					$("#userId").attr("readonly", true);
       					alert("사용가능한 아이디입니다.");
       				} else {
       					alert("중복된 아이디입니다.");
       				}
       				
				},
				error : function(request,status, error) {
					alert("에러발생");
				}
       		})
       		
		});
        
        //검증
        $(".junjoinbtn").click(function() {
        	
        	var userId = $("#userId").val();
        	
        	if( $("#userId").attr("readonly") != 'readonly') {
        		alert("아이디 중복체크가 필요합니다.");
        		$("#userId").focus();
        		return;
        	} else if( $(".junpw").val() == '') {
        		alert("비밀번호 입력은 필수입니다.");
        		return;
        	} else if( $(".junpw").val() != $(".junpwCheck").val() ) {
        		alert("비밀번호가 같지 않습니다.");
        		$(".junpw").focus();
        		return;
        	} else if( $(".junname").val() == '') {
        		alert("이름은 필수입니다");
        		return;
        	} else {
	       		$("#join").submit();
	       		alert(userId + "님의 회원가입을 축하합니다.")
        	}
			
		});
        
        </script>
