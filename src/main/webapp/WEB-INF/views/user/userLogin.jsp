<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
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
    		System.out.println(session.getAttribute("userVO"));
    	}
    	
    	Kakao.init('ed86fb26609dd550694d3504b3a475f8');
        Kakao.isInitialized();
        
        function loginWithKakao() {
            Kakao.Auth.login({
                success: function(authObj) {
                    console.log(authObj);
                    Kakao.Auth.setAccessToken(authObj.access_token);
                    
                    getInfo(); 
                },
                fail: function (err) {
                    console.log(err);
                },
            })
        }
        
        function getInfo() {
            Kakao.API.request({
                url: '/v2/user/me',
                success: function (res) {
                    console.log(res);
                    
                    var email = res.kakao_account.email;
                    var gender = res.kakao_account.gender;
                    var nick = res.kakao_account.profile.nickname;
                    var profile_img = res.kakao_account.profile.thumbnail_image_url;

                    console.log(email, gender, nick, profile_img);
                },
                fail: function (error) {
                    alert( '카카오 로그인에 실패했습니다.' + JSON.stringify(error) )
                },
            })
        }
    </script>
    

