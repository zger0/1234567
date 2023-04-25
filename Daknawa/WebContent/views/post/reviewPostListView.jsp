<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.kh.post.model.vo.Post, com.kh.common.model.vo.PageInfo, com.kh.common.model.vo.Attachment"%>
<%
	ArrayList<Post> list = (ArrayList<Post>)request.getAttribute("list");
  ArrayList<Attachment> flist = (ArrayList<Attachment>)request.getAttribute("flist");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
  int listsize = list.size();
	System.out.println("listsize : " + listsize);

	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html lang="english">
  <head>
    <title>닭나와</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta charset="utf-8" />
    <meta property="twitter:card" content="summary_large_image" />

    <style data-tag="reset-style-sheet">
      html {
        line-height: 1.15;
      }
      body {
        margin: 0;
      }
      * {
        box-sizing: border-box;
        border-width: 0;
        border-style: solid;
      }
      p,
      li,
      ul,
      pre,
      div,
      h1,
      h2,
      h3,
      h4,
      h5,
      h6,
      figure,
      blockquote,
      figcaption {
        margin: 0;
        padding: 0;
      }
      button {
        background-color: transparent;
      }
      button,
      input,
      optgroup,
      select,
      textarea {
        font-family: inherit;
        font-size: 100%;
        line-height: 1.15;
        margin: 0;
      }
      button,
      select {
        text-transform: none;
      }
      button,
      [type="button"],
      [type="reset"],
      [type="submit"] {
        -webkit-appearance: button;
      }
      button::-moz-focus-inner,
      [type="button"]::-moz-focus-inner,
      [type="reset"]::-moz-focus-inner,
      [type="submit"]::-moz-focus-inner {
        border-style: none;
        padding: 0;
      }
      button:-moz-focus,
      [type="button"]:-moz-focus,
      [type="reset"]:-moz-focus,
      [type="submit"]:-moz-focus {
        outline: 1px dotted ButtonText;
      }
      a {
        color: inherit;
        text-decoration: inherit;
      }
      input {
        padding: 2px 4px;
      }
      img {
        display: block;
      }
      html {
        scroll-behavior: smooth;
      }
    </style>
    <!-- CSS only -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <style data-tag="default-style-sheet">
      html {
        font-family: Inter;
        font-size: 16px;
      }

      body {
        font-weight: 400;
        font-style: normal;
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
    <link rel="stylesheet" href="resources/css/style_reviewlist.css" />
  </head>
  <body>
    <%@ include file="../common/menubar.jsp"%>
    <div class=".container">
      <link href="resources/css/blog6.css" rel="stylesheet" />

      <div class="blog6-container">
        <div class="blog6-blog6" style="width: ">
          <div class="blog6-section-title">
            <div class="blog6-content" style="margin: auto">
              <span class="blog6-text02 HeadingH1" ST>
                <span>리뷰 게시판</span>
              </span>
              
            </div>
          </div>
          <div class="blog6-content01">
            <div class="blog6-card" style="width: 1312px; margin: 0 auto;">
              <img
                src="resources/css/public/playground_assets/placeholderimagei308-xjo-500h.png"
                alt="PlaceholderImageI308"
                class="blog6-placeholder-image"
              />
              <div class="blog6-content02">
                <div class="blog6-content03">
                  <div class="blog6-info">
                    <div class="blog6-frame61">
                      <span class="blog6-text06 TextSmallSemiBold">
                        <span>Category</span>
                      </span>
                    </div>
                    <span class="blog6-text08 TextSmallSemiBold">
                      <span>5 min read</span>
                    </span>
                  </div>
                  <div class="blog6-title">
                    <span class="blog6-text10 HeadingH4">
                      <span>오늘의 베스트 리뷰 제목</span>
                    </span>
                    <span class="blog6-text12 TextRegularNormal">
                      <span>
                        내용 내용 내용 내용 내용 내용
                      </span>
                    </span>
                  </div>
                </div>
                <button class="blog6-button">
                  <span class="blog6-text14 TextRegularNormal">
                    <span onclick="location.href='<%= contextPath %>/rdetail.bo'">상세 보기</span>
                  </span>
                  <img
                    src="resources/css/public/playground_assets/iconchevronrighti308-w0e.svg"
                    alt="IconChevronRightI308"
                    class="blog6-icon-chevron-right"
                  />
                </button>
              </div>
            </div>
            <br><br><br><br><br><br><br>
            <!-- 카테고리 -->
            <!-- <div class="blog6-content04">
              <div class="blog6-categories">
                <button class="blog6-button01">
                  <span class="blog6-text16 TextRegularNormal">
                    <span>View all</span>
                  </span>
                </button>
                <button class="blog6-button02">
                  <span class="blog6-text18 TextRegularNormal">
                    <span>Category one</span>
                  </span>
                </button>
                <button class="blog6-button03">
                  <span class="blog6-text20 TextRegularNormal">
                    <span>Category two</span>
                  </span>
                </button>
                <button class="blog6-button04">
                  <span class="blog6-text22 TextRegularNormal">
                    <span>Category three</span>
                  </span>
                </button>
                <button class="blog6-button05">
                  <span class="blog6-text24 TextRegularNormal">
                    <span>Category four</span>
                  </span>
                </button>
              </div> -->
              <!-- --------------------------- 몸통 ---------------------------------------------- -->
              <div class="blog6-content05">
                <div class="blog6-row">
                  <% if(listsize >= 1 ) {%>
                  <div class="blog6-card1">
                    <% if(flist.get(0) == null) { %>
                      <img src="resources/img/1.png" width="416" height="300"
                        style="margin-bottom: 30px;">
                      <% } else {%>
                      <img src="<%= contextPath %>/<%= flist.get(0).getFilePath() + flist.get(0).getChangeName() %>"
                      width="416" height="300" style="margin-bottom: 30px;">
                      <% } %>
                    <div class="blog6-content06">
                      <div class="blog6-info1">
                        <div class="blog6-frame611">
                          <span class="blog6-text26 TextSmallSemiBold">
                            <span><%= list.get(0).getMemberNickname() %></span>
                          </span>
                        </div>
                        <span class="blog6-text28 TextSmallSemiBold">
                          <span><%= list.get(0).getPostDate() %></span>
                        </span>
                      </div>
                      <div class="blog6-title1">
                        <span class="blog6-text30 HeadingH5">
                          <span><%= list.get(0).getPostTitle() %></span>
                        </span>
                        <span class="blog6-text32 TextRegularNormal">
                          <span>
                            <%= list.get(0).getPostContent() %>
                          </span>
                        </span>
                      </div>
                    </div>
                    <button class="blog6-button06">
                      <span class="blog6-text34 TextRegularNormal">
                        <span onclick="location.href='<%= contextPath %>/rdetail.bo?pno=<%= list.get(0).getPostNo() %>'">자세히 보기</span>
                      </span>
                      <img
                        src="resources/css/public/playground_assets/iconchevronrighti308-vlfs.svg"
                        alt="IconChevronRightI308"
                        class="blog6-icon-chevron-right1"
                      />
                    </button>
                  </div>
                  <% } %>
                  <% if(listsize >= 2 ) {%>
                  <div class="blog6-card2">
                    <% if(flist.get(1) == null) { %>
                      <img src="resources/img/1.png" width="416" height="300"
                        style="margin-bottom: 30px;">
                      <% } else {%>
                      <img src="<%= contextPath %>/<%= flist.get(1).getFilePath() + flist.get(1).getChangeName() %>"
                      width="416" height="300" style="margin-bottom: 30px;">
                      <% } %>
                    <div class="blog6-content07">
                      <div class="blog6-info2">
                        <div class="blog6-frame612">
                          <span class="blog6-text36 TextSmallSemiBold">
                            <span><%= list.get(1).getMemberNickname() %></span>
                          </span>
                        </div>
                        <span class="blog6-text38 TextSmallSemiBold">
                          <span><%= list.get(1).getPostDate() %></span>
                        </span>
                      </div>
                      <div class="blog6-title2">
                        <span class="blog6-text40 HeadingH5">
                          <span><%= list.get(1).getPostTitle() %></span>
                        </span>
                        <span class="blog6-text42 TextRegularNormal">
                          <span>
                            <%= list.get(1).getPostContent() %>
                          </span>
                        </span>
                      </div>
                    </div>
                    <button class="blog6-button07">
                      <span class="blog6-text44 TextRegularNormal">
                        <span onclick="location.href='<%= contextPath %>/rdetail.bo?pno=<%= list.get(1).getPostNo() %>'">자세히 보기</span>
                      </span>
                      <img
                        src="resources/css/public/playground_assets/iconchevronrighti308-hb4h.svg"
                        alt="IconChevronRightI308"
                        class="blog6-icon-chevron-right2"
                      />
                    </button>
                  </div>
                  <% } %>
                  <% if(listsize >= 3 ) {%>
                  <div class="blog6-card3">
                    <% if(flist.get(2) == null) { %>
                      <img src="resources/img/1.png" width="416" height="300"
                        style="margin-bottom: 30px;">
                      <% } else {%>
                      <img src="<%= contextPath %>/<%= flist.get(2).getFilePath() + flist.get(2).getChangeName() %>"
                      width="416" height="300" style="margin-bottom: 30px;">
                      <% } %>
                    <div class="blog6-content08">
                      <div class="blog6-info3">
                        <div class="blog6-frame613">
                          <span class="blog6-text46 TextSmallSemiBold">
                            <span><%= list.get(2).getMemberNickname() %></span>
                          </span>
                        </div>
                        <span class="blog6-text48 TextSmallSemiBold">
                          <span><%= list.get(2).getPostDate() %></span>
                        </span>
                      </div>
                      <div class="blog6-title3">
                        <span class="blog6-text50 HeadingH5">
                          <span><%= list.get(2).getPostTitle() %></span>
                        </span>
                        <span class="blog6-text52 TextRegularNormal">
                          <span>
                             <%= list.get(2).getPostContent() %>
                          </span>
                        </span>
                      </div>
                    </div>
                    <button class="blog6-button08">
                      <span class="blog6-text54 TextRegularNormal">
                        <span onclick="location.href='<%= contextPath %>/rdetail.bo?pno=<%= list.get(2).getPostNo() %>'">자세히 보기</span>
                      </span>
                      <img
                        src="resources/css/public/playground_assets/iconchevronrighti308-mxq.svg"
                        alt="IconChevronRightI308"
                        class="blog6-icon-chevron-right3"
                      />
                    </button>
                  </div>
                </div>
                <% } %>
                <!-- -------------------------------------2열------------------------------------------- -->
                <div class="blog6-row1">
                  <% if(listsize >= 4 ) {%>
                  <div class="blog6-card4">
                    <% if(flist.get(3) == null) { %>
                      <img src="resources/img/1.png" width="416" height="300"
                        style="margin-bottom: 30px;">
                      <% } else {%>
                      <img src="<%= contextPath %>/<%= flist.get(3).getFilePath() + flist.get(3).getChangeName() %>"
                      width="416" height="300" style="margin-bottom: 30px;">
                      <% } %>
                    <div class="blog6-content09">
                      <div class="blog6-info4">
                        <div class="blog6-frame614">
                          <span class="blog6-text56 TextSmallSemiBold">
                            <span><%= list.get(3).getMemberNickname() %></span>
                          </span>
                        </div>
                        <span class="blog6-text58 TextSmallSemiBold">
                          <span><%= list.get(3).getPostDate() %></span>
                        </span>
                      </div>
                      <div class="blog6-title4">
                        <span class="blog6-text60 HeadingH5">
                          <span><%= list.get(3).getPostTitle() %></span>
                        </span>
                        <span class="blog6-text62 TextRegularNormal">
                          <span>
                             <%= list.get(3).getPostContent() %>
                          </span>
                        </span>
                      </div>
                    </div>
                    <button class="blog6-button09">
                      <span class="blog6-text64 TextRegularNormal">
                        <span onclick="location.href='<%= contextPath %>/rdetail.bo?pno=<%= list.get(3).getPostNo() %>'">자세히 보기</span>
                      </span>
                      <img
                        src="resources/css/public/playground_assets/iconchevronrighti308-2dp.svg"
                        alt="IconChevronRightI308"
                        class="blog6-icon-chevron-right4"
                      />
                    </button>
                  </div>
                  <% } %>
                  <% if(listsize >= 5 ) {%>
                  <!--  -->
                  <div class="blog6-card5">
                    <% if(flist.get(4) == null) { %>
                      <img src="resources/img/1.png" width="416" height="300"
                        style="margin-bottom: 30px;">
                      <% } else {%>
                      <img src="<%= contextPath %>/<%= flist.get(4).getFilePath() + flist.get(4).getChangeName() %>"
                      width="416" height="300" style="margin-bottom: 30px;">
                      <% } %>
                    <div class="blog6-content10">
                      <div class="blog6-info5">
                        <div class="blog6-frame615">
                          <span class="blog6-text66 TextSmallSemiBold">
                            <span><%= list.get(4).getMemberNickname() %></span>
                          </span>
                        </div>
                        <span class="blog6-text68 TextSmallSemiBold">
                          <span><%= list.get(4).getPostDate() %></span>
                        </span>
                      </div>
                      <div class="blog6-title5">
                        <span class="blog6-text70 HeadingH5">
                          <span><%= list.get(4).getPostTitle() %></span>
                        </span>
                        <span class="blog6-text72 TextRegularNormal">
                          <span>
                            <%= list.get(4).getPostContent() %>
                          </span>
                        </span>
                      </div>
                    </div>
                    <button class="blog6-button10">
                      <span class="blog6-text74 TextRegularNormal">
                        <span onclick="location.href='<%= contextPath %>/rdetail.bo?pno=<%= list.get(4).getPostNo() %>'">자세히 보기</span>
                      </span>
                      <img
                        src="resources/css/public/playground_assets/iconchevronrighti308-noh.svg"
                        alt="IconChevronRightI308"
                        class="blog6-icon-chevron-right5"
                      />
                    </button>
                  </div>
                  <% } %>
                  <!--  -->
                  <% if(listsize >= 6 ) {%>
                  <div class="blog6-card6">
                    <% if(flist.get(5) == null) { %>
                    <img src="resources/img/1.png" width="416" height="300"
                      style="margin-bottom: 30px;">
                    <% } else {%>
                    <img src="<%= contextPath %>/<%= flist.get(5).getFilePath() + flist.get(5).getChangeName() %>"
                    width="416" height="300" style="margin-bottom: 30px;">
                    <% } %>
                    <div class="blog6-content11">
                      <div class="blog6-info6">
                        <div class="blog6-frame616">
                          <span class="blog6-text76 TextSmallSemiBold">
                            <span><%= list.get(5).getMemberNickname() %></span>
                          </span>
                        </div>
                        <span class="blog6-text78 TextSmallSemiBold">
                          <span><%= list.get(5).getPostDate() %></span>
                        </span>
                      </div>
                      <div class="blog6-title6">
                        <span class="blog6-text80 HeadingH5">
                          <span><%= list.get(5).getPostTitle() %></span>
                        </span>
                        <span class="blog6-text82 TextRegularNormal">
                          <span>
                            <%= list.get(5).getPostContent() %>
                          </span>
                        </span>
                      </div>
                    </div>
                    <button class="blog6-button11">
                      <span class="blog6-text84 TextRegularNormal">
                        <span onclick="location.href='<%= contextPath %>/rdetail.bo?pno=<%= list.get(5).getPostNo() %>'">자세히 보기</span>
                      </span>
                      <img
                        src="resources/css/public/playground_assets/iconchevronrighti308-o54k.svg"
                        alt="IconChevronRightI308"
                        class="blog6-icon-chevron-right6"
                      />
                    </button>
                  </div>
                </div>
                <% } %>
                <!--  -->
              </div>
              <!-- ---------------------------- 바디 끝 --------------------------------------- -->
            </div>
          </div>
        </div>
      </div>
      <div align="center" class="paging-area">
        
        <% if(currentPage != 1){ %>
        <button onclick="location.href='<%= contextPath%>/review.bo?currentPage=<%=currentPage - 1%>';">&lt;</button>
        <%}%>
        
        <% for(int p = startPage; p <= endPage; p++){ %>
        
          <%if(p != currentPage){ %>
            <button onclick="location.href='<%= contextPath %>/review.bo?currentPage=<%=p%>';"><%= p %></button>
          <%} else{ %>
            <!-- 현재 내가 보고있는 페이지일 경우에는 클릭이 안되게끔 -->
            <button disabled><%= p %></button>
          <%} %>
          
        <%} %>
        
        <% if(currentPage != maxPage){ %>
        <button onclick="location.href='<%= contextPath%>/review.bo?currentPage=<%=currentPage + 1%>';">&gt;</button>
        <%} %>
        
      </div> 
      <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
          <li class="page-item disabled">
            <a class="page-link">Previous</a>
          </li>
          <li class="page-item"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item">
            <a class="page-link" href="#">Next</a>
          </li>
        </ul>
      </nav>

      <button class="btn">
        <a href="reviewWrite.bo">글쓰기</a>
      </button>
      <button
          onclick="location.href='<%= contextPath%>/renrollFrom.bo'"
          type="button"
          class="btn btn-outline-dark"
          style="margin: 0 auto"
          type="submit"
                  >
                    글 작성
       </button>
    <!-- JavaScript Bundle with Popper -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
    
       <%@ include file="../common/footer.jsp"%>
  </body>
</html>
