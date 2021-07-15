<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

    <!-- 제품 정보-->
    <section class="product-section">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 productDetail-wrap">
                    <div class="col-xs-12 productDetail-title">
                        <h2>달모어12년선물세트</h2>
                    </div>
                    <div class="col-sm-12 col-md-6 productDetail-img">
                        <img src="${pageContext.request.contextPath }/resources/img/product/${productVO.p_imgAddr}" alt="사진입니다">
                    </div>
                    <div class="col-sm-12 col-md-6 productDetail-content">
                        <div class="productDetail-info">
                            <div class="productDetail-line">
                                <div class="productDetail-left">원산지</div>
                                <div class="productDetail-right productDetail-origin">${productVO.p_origin }</div>
                            </div>
                            <div class="productDetail-line">
                                <div class="productDetail-left">용량</div>
                                <div class="productDetail-right productDetail-volume">${productVO.p_volume }</div>
                            </div>
                            <div class="productDetail-line">
                                <div class="productDetail-left">알콜도수</div>
                                <div class="productDetail-right productDetail-alcoholLevel">${productVO.p_alcohol }%</div>
                            </div>
                        </div>
                        
                        <div class="productDetail-group">
                            <div class="productDetail-priceWrap">
                                <div class="productDetail-priceName">판매가격</div>
                                <div class="productDetail-price">
                                	<fmt:formatNumber value="${productVO.p_price }" type="currency" currencySymbol="￦" />
                                </div>
                            </div>
                            <div class="common-btn productDetail-btn">
                                <button type="button" class="left btn btn-default">장바구니</button>
                                <button type="button" class="right btn btn-default">구독하기</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 제품 설명 -->
    <section class="product-section">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 productContent-wrap">
                    <h3>${productVO.p_detailTitle }</h3>
                    <div>
                        <p>${productVO.p_detail }</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 버튼s -->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 productDetail-btnList">
                	<c:set var="len" value="${fn:length(productVO.pno) }" />
                	<fmt:parseNumber var="pno" integerOnly="true" value="${fn:substring(productVO.pno, 1, len) }" />
           			<c:if test="${pno ne 1 }">
           				<c:set var="pre" value="${pno - 1 }" />
           				<fmt:formatNumber var="no" minIntegerDigits="6" value="${pre }" />
           				<c:set var="tn" value="T${no }" />
	                    <button type="button" class="btn btn-default" onclick="location.href='productDetail?pno=${fn:substring(tn,0,4)}${fn:substring(tn,5,8)}'"><span class='glyphicon glyphicon-chevron-left'></span> 이전 글</button>
           			</c:if>
           			<c:if test="${pno ne 15 }">
           				<c:set var="suf" value="${pno + 1 }" />
           				<fmt:formatNumber var="no" minIntegerDigits="6" value="${suf }" />
           				<c:set var="tn" value="T${no }" />
	                    <button type="button" class="btn btn-default" onclick="location.href='productDetail?pno=${fn:substring(tn,0,4)}${fn:substring(tn,5,8)}'">다음 글 <span class='glyphicon glyphicon-chevron-right'></span></button>
           			</c:if>
                    <button type="button" class="right btn btn-default" onclick="location.href='productList'"><span class='glyphicon glyphicon-th-list'></span> 목록</button>   
                </div>
            </div>
        </div>
    </section>
    
    <!-- 댓글 입력 -->
    <section class="product-section">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 review-wrap productDetail-review">
                    <!-- 댓글 입력, 로그인했을 때만 보이게 -->
                    <div class="col-md-3 review-inner">
                        <div class="reviewInner-img">
                            <img src="${pageContext.request.contextPath }/resources/img/util/profile.png">
                        </div>
                        <div class="reviewInner-info">
                            <div>홍길동</div>
                            <div class="reviewInfo-star">
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star star-empty"></span>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-9 reviewWrite-content">
                        <form action="" class="review-write common-btn">
                            <textarea class="form-control common-textarea" rows="3" name="review" id="review"></textarea>
                            <button type="button" class="btn btn-default" id="reviewRegist">등록</button>
                            <!-- <button type="button" class="left btn btn-default" id="replyRegist">이미지 업로드?</button> -->
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 댓글 리스트, 로그인 안해도 볼 수는 있음-->
    <section class="product-section">
        <div class="container">
            <div class="row review-list">
                <div class="col-xs-12 review-wrap productDetail-review">
                    <div class="col-md-3 review-inner">
                        <div class="reviewInner-img">
                            <img src="${pageContext.request.contextPath }/resources/img/util/profile.png">
                        </div>
                        <div class="reviewInner-info">
                            <div>홍길동</div>
                            <div class="reviewInfo-star">
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star star-empty"></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <form action="" class="review-content">
                            <p class='clearfix'>맛있어요</p>
                            <button type="button" class="right btn btn-default" id="replyRegist"><span class='glyphicon glyphicon-remove'></span> 삭제</button>
                            <button type="button" class="right btn btn-default" id="replyRegist"><span class='glyphicon glyphicon-pencil'></span> 수정</button>
                            
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>