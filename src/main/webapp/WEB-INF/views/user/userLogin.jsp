<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <section class="junsec">
            <div class="container"> 
                <div class="row">
                <form action="loginCheck" method="post">
                    <div class="junlogin-wrap">
                        <div class="junlogin-wrap2">
                            <div class="col-sm-2 col-xs-6 junidpw">
                                아이디<br/>
                                <input type="text" class="form-control junid" name="userId"><br/>
                                비밀번호<br/>
                                <input type="password" class="form-control junpw" name="userPw">
                            </div>
                            
                            <div class="col-sm-2 col-xs-6 junlogin-form">
                                <button name="button" class="junlogin">로그인</button>
                                <a id="custom-login-btn" href="javascript:loginWithKakao()" class="junkakao-btn">
                                    <img src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg" width="222" />
                                </a>
                            </div>
                            <div class="col-md-12 col-sm-2 col-xs-6 junidpwfind">
                                <hr/>
                                <button name="button">아이디 찾기</button>
                                |
                                <button name="button">비밀번호 찾기</button>
                                
                                <button name="button" class="junjoin">회원가입</button>
                            </div>
                        </div>
                    </div>
                </form>
                </div>
            </div>
    </section>
    
    <script>
    	var msg = "${msg}";
    	if( msg != "") {
    		alert(msg);
    	}
    </script>
    

