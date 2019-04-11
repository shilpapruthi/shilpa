package com.mobileworld.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mobileworld.daos.CategoryDao;
import com.mobileworld.daosimpl.CategoryDaoImpl;
import com.mobileworld.models.Category;

@WebServlet("/getSubCategoryForm")
public class GetSubCategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		CategoryDao daoObj=new CategoryDaoImpl();
		List<Category> categories=daoObj.getAllCategories();	

		request.setAttribute("cList",categories);
		RequestDispatcher rd=request.getRequestDispatcher("AddSubCategoryForm.jsp");
		rd.forward(request, response);
	}

}
