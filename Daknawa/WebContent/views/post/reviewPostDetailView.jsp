<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.post.model.vo.Post, com.kh.common.model.vo.Attachment"%>
<%
    Post p = (Post)request.getAttribute("p");
    Attachment at = (Attachment)request.getAttribute("at");	
%>

<!DOCTYPE html>
    <script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>

<html lang="english">
  <head>
    <title>닭나와</title>
    <link rel="shortcut icon" type="resources/admin/image/x-icon" href="resources/css/public/playground_assets/logo.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta charset="utf-8" />
    <meta property="twitter:card" content="summary_large_image" />

    <style data-tag="reset-style-sheet">
      html {  line-height: 1.15;}body {  margin: 0;}* {  box-sizing: border-box;  border-width: 0;  border-style: solid;}p,li,ul,pre,div,h1,h2,h3,h4,h5,h6,figure,blockquote,figcaption {  margin: 0;  padding: 0;}button {  background-color: transparent;}button,input,optgroup,select,textarea {  font-family: inherit;  font-size: 100%;  line-height: 1.15;  margin: 0;}button,select {  text-transform: none;}button,[type="button"],[type="reset"],[type="submit"] {  -webkit-appearance: button;}button::-moz-focus-inner,[type="button"]::-moz-focus-inner,[type="reset"]::-moz-focus-inner,[type="submit"]::-moz-focus-inner {  border-style: none;  padding: 0;}button:-moz-focus,[type="button"]:-moz-focus,[type="reset"]:-moz-focus,[type="submit"]:-moz-focus {  outline: 1px dotted ButtonText;}a {  color: inherit;  text-decoration: inherit;}input {  padding: 2px 4px;}img {  display: block;}html { scroll-behavior: smooth  }
    </style>
    <style data-tag="default-style-sheet">
      html {
        font-family: Inter;
        font-size: 16px;
      }

      body {
        font-weight: 400;
        font-style:normal;
        text-decoration: none;
        text-transform: none;
        letter-spacing: normal;
        line-height: 1.15;
        color: var(--dl-color-gray-black);
        background-color: var(--dl-color-gray-white);
      }

    </style>
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&amp;display=swap"
      data-tag="font"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap"
      data-tag="font"
    />
    <link rel="stylesheet" href="./style.css" />
  </head>
  <body>
    <div>
    <%@ include file="../common/menubar.jsp"%>
    
      <link href="resources/css/blog-post1.css" rel="stylesheet" />

      <div class="blog-post1-container">
        <div class="blog-post1-blog-post1" style="width: 1200px; margin: 0 auto; padding-bottom: 0;">
          <div class="blog-post1-blog-header">
            <div class="blog-post1-content">
              <div class="blog-post1-breadcrumbs">
                <span class="blog-post1-text TextRegularNormal">
                  <span></span>
                </span>
                
                <span class="blog-post1-text02 TextRegularSemiBold">
                  <span></span>
                </span>
              </div>
              <span class="blog-post1-text04 HeadingH2">
                <span style="font-size : 45px"><%= p.getPostTitle() %> </span>
              </span>
            </div>
            <div class="blog-post1-content01">
              <div class="blog-post1-avatar">
               
                <div class="blog-post1-content02">
                  <span class="blog-post1-text06 TextSmallSemiBold">
                    <span>닉네임 : <%= p.getMemberNickname() %></span>
                  </span>
                  <div class="blog-post1-time">
                    <span class="blog-post1-text08 TextSmallNormal">
                      <span>작성일 : <%= p.getPostDate() %></span>
                    </span>
                    <span class="blog-post1-text10 TextMediumNormal"></span>
                    <span class="blog-post1-text11 TextSmallNormal">
                      <span></span>
                    </span>
                  </div>
                </div>
              </div>
              <button class="blog-post1-share-buttons"></button>
            </div>
          </div>
          <% if(at == null){ %>
            <!-- <img src="resources/img/1.png" width="800" height="500"
                        style="margin-bottom: 30px;"> -->
          <%} else {%>	
            <img src="<%= contextPath %>/<%= at.getFilePath() + at.getChangeName() %>"
                          width="800" height="500">
          <%} %>
          
          <div class="blog-post1-content03">
            <div class="blog-post1-content04">
              <div class="blog-post1-rich-text">
                <div class="blog-post1-content05">
                  <span class="blog-post1-text13 HeadingH3">
                    <span><%= p.getPostContent() %></span>
                  </span>
                </div>
              </div>
              
              </div>
            </div>
            <img
              src="resources/css/public/playground_assets/divideri110-1dmc-200h.png"
              alt="DividerI110"
              class="blog-post1-divider1"
            />
            <div class="blog-post1-avatar1">
              <% if(loginUser != null && loginUser.getUserNickName().equals(p.getMemberNickname())) {%>
              <button
                    class="btn btn-outline-dark"
                    style="margin: 0 auto"
                    type="submit"
                    onclick="location.href='<%= contextPath %>/delete.po?pno=<%=p.getPostNo() %> '"
                  >
                    글삭제
              </button>
              <button
                  class="btn btn-outline-dark"
                  style="margin: 0 auto"
                  type="submit"
                  onclick="location.href='<%= contextPath %>/updateForm.po?pno=<%=p.getPostNo() %> '"
                >
                글수정
               </button>
              </div>
            </div>
            <% } %>
          </div>
        </div>
        <div id="reply-area">
          <table align="center">
              <thead>
                  <% if(loginUser != null) { %>
                  <!-- case1. 로그인이 되어있을 경우 -->
                  
                 <tr>
                      <th>댓글작성</th>
                      <td><textarea id="replyContent" cols="50" rows="3" style="resize: none;"></textarea></td>
                      <td><button onclick="insertReply();">댓글 등록</button></td>
                 </tr>
                
                 <% } else { %>
                  <!-- case2. 로그인이 되어있지 않을 경우 -->
                  <tr>
                      <th>댓글작성</th>
                      <td><textarea cols="50" rows="3" 
                          style="resize: none;" readonly>로그인 후 이용 가능한 서비스입니다.</textarea></td>
                      <td><button disabled>댓글 등록</button></td>
                 </tr>
                   <% } %>
              </thead>
              <tbody>
                
              </tbody>                
          </table>

          
          <script>
            	
            
            $(function() {
                selectReplyList();

                // 실시간 댓글 조회, 5초 간격으로 조회
                setInterval(selectReplyList, 500000);
            });

            function insertReply() {

                $.ajax({
                    url : "reinsert.po",
                    type : "post",
                    data : {
                        content : $("#replyContent").val(),
                        pno : <%= p.getPostNo() %>
                    },
                    success : function(result) {

                         console.log(result); //성공했다면 1, 실패했다면 0

                        if(result > 0) { // 댓글 작성 성공

                            // 갱식된 댓글 리스트 조회
                            selectReplyList();

                            // 댓글 작성용 textarea 조회
                            $("#replyContent").val("");
                        }
                    },
                    error : function() {
                        console.log("댓글 작성 실패!");
                    }
                });
            }

            // 댓글 조회 요청용 함수
            function selectReplyList() {
                $.ajax({
                    url : "relist.po",
                    type : "get",
                    data : {pno : <%= p.getPostNo() %> },
                    success : function(list) {

                        let result = "";

                        for(let i in list) {

                            result += "<tr>"
                            result += "<td>" + list[i].memberNo + '<i class"fa-regular"></i>' + "</td>";
                            result += "<td id='reply'>" + list[i].replyContent + "</td>";
                            result += "<td>" + list[i].createDate + "</td>"; 

                            <% String loginUserNickname = (loginUser != null) ? loginUser.getUserNickName() : ""; %>
                            if ("<%= loginUserNickname %>" === list[i].memberNo) {
                                result += "<td><span style='cursor : pointer;' onClick=Reply('" + list[i].replyContent + "','" + list[i].replyNo + "'); >수정</span></td>";
                                result += "<td><span style='cursor : pointer;' onClick=deleteReply(" + list[i].replyNo + ");>삭제</span></td>";
                            } 
                            
                            $("#reply-area tbody").html(result);    
                        }
                    },
                    error : function() {
                        alert("댓글 조회를 실패하셨습니다");
                    }
                });
            }
            
            function Reply(content, rno) {
              console.log(content);
              console.log(rno);
              $("#reply").html("<textarea id='replyContent1' cols='50' rows='1' style=' width: 350px; resize: none; border: 1px solid black;'>"+ content +"</textarea><button style='width : 50px' onclick='updateReply("+ rno + ");'>완료</button>");	
            };
            
            // 댓슬 수정용 함수
            function updateReply(rno) {
              // 댓글 수정용 AJAX
              $.ajax({
                url : "reupdate.po",
                type : "post",
                data : {
                  rno : rno,
                  content : $("#replyContent1").val()
                },
                success : function(result) {
                  // 댓글 수정 성공 시 댓글 목록 다시 조회
                  // console.log(result);
                  if(result > 0) {
                    selectReplyList();
                    
                    // 댓글 수정 후 댓글 내용 초기화
                    $("#replyContent").val("");
                  } else {
                    alert("댓글 수정 실패!");
                  }
                },
                error : function() {
                  alert("댓글 수정 실패!")
                }        
              });
            }
            
            
            // 댓글 삭제용 함수
            function deleteReply(rno) {
              // 댓글 삭제용 AJAX
              $.ajax({
                url : "redelete.po",
                type : "post",
                data : {rno : rno},
                success : function(result) {
                  // 댓글 삭제 성공시 댓글 목록 다시 조회
                  // console.log(result);
                  if(result > 0) {
                    alert("댓글 삭제 성공!");
                     selectReplyList();
                  } else {
                    alert("댓글 삭제 실패!");
                  }
                },
                error : function() {
                  alert("댓글 삭제 실패!");
                }
              });
            }
        </script>

          <br><br>
      </div>
      
    <script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
    
    <%@ include file="../common/footer.jsp"%>
    
  </body>
</html>
