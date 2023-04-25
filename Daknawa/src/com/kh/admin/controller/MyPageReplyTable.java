package com.kh.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.model.service.AdminService;
import com.kh.common.model.vo.Reply;
import com.kh.common.model.vo.SubNav;
import com.kh.member.model.vo.Member;

/**
 * Servlet implementation class MyPagePostTable
 */
@WebServlet("/replylist.mp")
public class MyPageReplyTable extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageReplyTable() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SubNav sn = new SubNav();
		
		sn.setTitle1("MY PAGE");
		sn.setTitle1Addr("myInfo.me");
		sn.setTitle2("내 활동 관리");
		sn.setTitle2Addr("postlist.mp");
		sn.setTitle3("댓글 관리");
		sn.setActive1("1");
		sn.setActive2("active");
		sn.setActive3("1");
		
		
		request.setAttribute("sn", sn);
		
		int userNo = (((Member)request.getSession().getAttribute("loginUser")).getUserNo());

		ArrayList<Reply> list = new AdminService().selectReplyList(userNo);

		System.out.println(list);

		request.setAttribute("list", list);
		
		request.getRequestDispatcher("views/admin/myPageReplyTable.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
