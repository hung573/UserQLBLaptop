/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import Beans.SanPham;
import DAL.SPDALGiaHung;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mac
 */
@WebServlet(name = "SanPhamDetailServlet", urlPatterns = {"/SanPhamDetailServlet"})
public class SanPhamDetailServlet extends HttpServlet {

   private static final long serialVersionUID = 1L;
    private SPDALGiaHung sanPhamDAL;
    private  SanPham sanPham;
    
    public  void  init(){
        sanPhamDAL = new SPDALGiaHung();
        sanPham = new SanPham();
    }
    public SanPhamDetailServlet() {
        super();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            List < SanPham > listsp = sanPhamDAL.listSanPham();
      	    request.setAttribute("list", listsp);
            request.getServletContext().getRequestDispatcher("/Views/SanPhamDetail.jsp").forward(request, response);
    }


}
