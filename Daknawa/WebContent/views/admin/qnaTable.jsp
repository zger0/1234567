<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.kh.qna.model.vo.Qna" %>
<%
    ArrayList<Qna> list = (ArrayList<Qna>)request.getAttribute("list");
%>
<!doctype html>
<html class="no-js" lang="">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Data Table | Notika - Notika Admin Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="resources/admin/image/x-icon" href="resources/admin/img/favicon.ico">
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="resources/admin/css/bootstrap.min.css">
    <!-- font awesome CSS
		============================================ -->
    <link rel="stylesheet" href="resources/admin/css/font-awesome.min.css">
  
    <!-- meanmenu CSS
		============================================ -->
    <link rel="stylesheet" href="resources/admin/css/meanmenu/meanmenu.min.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="resources/admin/css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="resources/admin/css/normalize.css">
	<!-- wave CSS
		============================================ -->
    <link rel="stylesheet" href="resources/admin/css/wave/waves.min.css">
    <link rel="stylesheet" href="resources/admin/css/wave/button.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="resources/admin/css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- Notika icon CSS
		============================================ -->
    <link rel="stylesheet" href="resources/admin/css/notika-custom-icon.css">
    <!-- Data Table JS
		============================================ -->
    <link rel="stylesheet" href="resources/admin/css/jquery.dataTables.min.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="resources/admin/css/main.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="resources/admin/style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="resources/admin/css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="resources/admin/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>

	<%@ include file="../common/menubar.jsp" %>

	<%@ include file="../common/adminPageNavbar.jsp" %>
    
    <div class="data-table-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="data-table-list">
                        <div class="basic-tb-hd">
                            <h2>문의글 관리 테이블></h2>
                            <p>공지, 자유, 사진 게시판 관리</p>
                        </div>
                        <div class="table-responsive">
                            <table id="data-table-basic" class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>글번호</th>
                                        <th>문의제목</th>
                                        <th>문의타입</th>
                                        <th>문의날짜</th>
                                        <th>답변달기</th>
                                        <th>삭제</th>
                                    </tr>
                                </thead>
                                
                                <tbody>
                                    <% for(Qna q : list) { %>
                                    <tr>
                                        <td><%= q.getAskNo() %></td>
                                        <td><%= q.getAskContent() %></td>
                                        <td><%= q.getAskType() %></td>
                                        <td><%= q.getAskDate() %></td>
                                        <td><a href="<%= contextPath %>/askAnswer.ask?ano=<%= q.getAskNo() %>">답변달기</a></td>
                                        <td><a href="<%= contextPath %>/delete.st?sno=<%= q.getAskNo() %>">삭제</a></td>
                                    </tr>
                                    <% } %>
                                </tbody>
                               
                                <tfoot>
                                    <tr>
                                        <th>Name</th>
                                        <th>Position</th>
                                        <th>Office</th>
                                        <th>Age</th>
                                        <th>Start date</th>
                                        <th>Salary</th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Footer area-->
    <!-- jquery
		============================================ -->
    <script src="resources/admin/js/vendor/jquery-1.12.4.min.js"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="resources/admin/js/bootstrap.min.js"></script>
    <!-- wow JS
		============================================ -->
    <script src="resources/admin/js/wow.min.js"></script>
    <!-- price-slider JS
		============================================ -->
    <script src="resources/admin/js/jquery-price-slider.js"></script>
    <!-- owl.carousel JS
		============================================ -->
    <script src="resources/admin/js/owl.carousel.min.js"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="resources/admin/js/jquery.scrollUp.min.js"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="resources/admin/js/meanmenu/jquery.meanmenu.js"></script>
    <!-- counterup JS
		============================================ -->
    <script src="resources/admin/js/counterup/jquery.counterup.min.js"></script>
    <script src="resources/admin/js/counterup/waypoints.min.js"></script>
    <script src="resources/admin/js/counterup/counterup-active.js"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="resources/admin/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- sparkline JS
		============================================ -->
    <script src="resources/admin/js/sparkline/jquery.sparkline.min.js"></script>
    <script src="resources/admin/js/sparkline/sparkline-active.js"></script>
    <!-- flot JS
		============================================ -->
    <script src="resources/admin/js/flot/jquery.flot.js"></script>
    <script src="resources/admin/js/flot/jquery.flot.resize.js"></script>
    <script src="resources/admin/js/flot/flot-active.js"></script>
    <!-- knob JS
		============================================ -->
    <script src="resources/admin/js/knob/jquery.knob.js"></script>
    <script src="resources/admin/js/knob/jquery.appear.js"></script>
    <script src="resources/admin/js/knob/knob-active.js"></script>
    <!--  Chat JS
		============================================ -->
    <script src="resources/admin/js/chat/jquery.chat.js"></script>
    <!--  todo JS
		============================================ -->
    <script src="resources/admin/js/todo/jquery.todo.js"></script>
	<!--  wave JS
		============================================ -->
    <script src="resources/admin/js/wave/waves.min.js"></script>
    <script src="resources/admin/js/wave/wave-active.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="resources/admin/js/plugins.js"></script>
    <!-- Data Table JS
		============================================ -->
    <script src="resources/admin/js/data-table/jquery.dataTables.min.js"></script>
    <script src="resources/admin/js/data-table/data-table-act.js"></script>
    <!-- main JS
		============================================ -->
    <script src="resources/admin/js/main.js"></script>
	<!-- tawk chat JS
		============================================ -->
    <!-- <script src="resources/admin/js/tawk-chat.js"></script> -->
     <%@ include file="../common/footer.jsp"%>
</body>
 
</html>