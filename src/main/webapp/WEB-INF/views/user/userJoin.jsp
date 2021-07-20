<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="u" %>
    
    <section class="junsec">
       <div>
           <div class="container">
               <div class="row">
                   <form action="join" method="post">
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
                                <button type="submit" class="junjoinbtn">회원가입</button>
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
       	var idCheck = document.getElementsByClassName("idCheck");
        idCheck[0].onclick = function() {
        	
        	var userId = document.getElementById("")
        }
        
        </script>
