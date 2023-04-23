<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.store.model.vo.*"%>
<%
	Store s = (Store)request.getAttribute("s");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>
    <div class="form-example-area">
        <div class="container" style="width: 500px;">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="form-example-wrap" >
                        <form id="update-form" action="<%= contextPath %>/update.st" method="post" >
                            <input type="hidden" name="sno" value="<%= s.getStoreNo() %>">
                            <div class="cmp-tb-hd" style="margin-bottom: 25px; margin-top: 40px; text-align: center;">
                                <h2>매장 정보 추가</h2>
                            </div>
                            <div class="form-example-int">
                                <div class="form-group">
                                    <label>브랜드명</label>
                                    <div class="nk-int-st">
                                        <input type="text" class="form-control input-sm" name="bname" value="<%= s.getBrandName() %>" required>
                                    </div>
                                </div>
                            </div>
                            <div class="form-example-int mg-t-15">
                                <div class="form-group">
                                    <label>매장명</label>
                                    <div class="nk-int-st">
                                        <input type="text" class="form-control input-sm" name="sname" value="<%= s.getStoreName() %>" required>
                                    </div>
                                </div>
                            </div>
                            <div class="form-example-int mg-t-15">
                                <div class="form-group">
                                    <label>매장주소</label>
                                    <div class="nk-int-st">
                                        <input type="text" class="form-control input-sm" name="address" value="<%= s.getStoreAddress() %>" required>
                                    </div>
                                </div>
                            </div>
                            <div class="form-example-int mg-t-15">
                                <div class="form-group">
                                    <label>매장전화번호</label>
                                    <div class="nk-int-st">
                                        <input type="text" class="form-control input-sm" name="phone" value="<%= s.getStorePhone() %>" required>
                                    </div>
                                </div>
                            </div>
                            <div class="form-example-int mg-t-15">
                                <div class="form-group">
                                    <label>영업시간</label>
                                    <div class="nk-int-st">
                                        <input type="text" class="form-control input-sm" name="time" value="<%= s.getStoreTime() %>">
                                    </div>
                                </div>
                            </div>
                            <!-- <div class="form-example-int mg-t-15">
                                <div class="fm-checkbox">
                                    <label><input type="checkbox" class="i-checks"> <i></i> Don't forget to check me out</label>
                                </div>
                            </div> -->
                            <div class="form-example-int mg-t-15" style="text-align: center; margin-top: 25px;">
                                <button class="btn btn-success notika-btn-success" style="margin: 0 2px;">입력</button>
                                <button class="btn btn-success notika-btn-success" style="margin: 0 2px;">취소</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>