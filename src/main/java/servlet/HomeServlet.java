/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;


import Beans.SanPham;
import DAL.SPDALHoi;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
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
@WebServlet(urlPatterns = {"/home"})
public class HomeServlet extends HttpServlet {

          private static final long serialVersionUID = 1L;
          private SPDALHoi sanPhamDAL;
          private  SanPham sanPham;

    public HomeServlet() {
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
           SPDALHoi sphdal = new SPDALHoi();
            List<SanPham> list = sphdal.listSanPham();
        request.setAttribute("list", list);
        request.getRequestDispatcher("/Views/Home.jsp").forward(request, response);
                

    }

}
