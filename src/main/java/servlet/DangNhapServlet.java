/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import Beans.Account;
import Beans.Person;
import Beans.Person_KhachHang;
import DAL.DangNhapDAL;
import java.io.File;
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
import javax.servlet.http.HttpSession;

/**
 *
 * @author mac
 */
@WebServlet(urlPatterns = {"/DangNhap", "/DangXuat", "/login"})

public class DangNhapServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private Account account;
    private DangNhapDAL dangNhapDAL;
    private Person_KhachHang person_KhachHang;
    private Person person;

    public DangNhapServlet() {
        super();
    }

    public void init() {
        account = new Account();
        dangNhapDAL = new DangNhapDAL();
        person_KhachHang = new Person_KhachHang();
        person = new Person() {
        };
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();

        try {

            switch (action) {
                case "/DangXuat":
                    DangXuat(request, response);
                    break;
                case "/login":
                    Logiin(request, response);
                    break;
                default:
                    DangNhap(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }

    }

    private void DangNhap(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        response.setContentType("text/html;charset=UTF-8");

        RequestDispatcher dispatcher = request.getServletContext()
                .getRequestDispatcher("/Views/DangNhap.jsp");
        dispatcher.forward(request, response);
    }

    private void Logiin(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        try {
            HttpSession session = request.getSession();
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String erro = null;

            boolean checkLogin = dangNhapDAL.CheckLogin(username, password);

            if (username == null || password == null || username.isEmpty() || password.isEmpty()) {
                erro = "Tài Khoản hoặc mật khẩu không được để tróng";
                request.setAttribute("erro", erro);
//                response.sendRedirect("login");
                RequestDispatcher dispatcher = request.getServletContext()
                        .getRequestDispatcher("/Views/DangNhap.jsp");
                dispatcher.forward(request, response);
            } else if (checkLogin == false) {
                erro = "Tài khoản này không tồn tại";
                request.setAttribute("erro", erro);
                RequestDispatcher dispatcher = request.getServletContext()
                        .getRequestDispatcher("/Views/DangNhap.jsp");
                dispatcher.forward(request, response);
            } else {
                Account ac = dangNhapDAL.getIdAccountByUsername(username);
                int idAccouunt = ac.getIdAccount();
                Person_KhachHang psNhanVien = dangNhapDAL.getIDPerson_KhachHang(idAccouunt);
                boolean checkBoPhan = dangNhapDAL.CheckBoPhan(psNhanVien.getIdPerson());
                if (checkBoPhan == true) {
                    //Bộ Phận Bán Hàng
                    session.setAttribute("checkBoPhan", checkBoPhan);
                    session.setAttribute("ac", ac);
                    session.setAttribute("username", username);
                    session.setAttribute("password", password);
                    session.setAttribute("session", session);
                    session.setAttribute("psNhanVien", psNhanVien);


                    response.sendRedirect("home");
                } else {
                    erro = "Tài khoản này không tồn tại";
                    request.setAttribute("erro", erro);
                    RequestDispatcher dispatcher = request.getServletContext()
                            .getRequestDispatcher("/Views/DangNhap.jsp");
                    dispatcher.forward(request, response);
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void DangXuat(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter logout = response.getWriter();
        try {
            HttpSession session = request.getSession();
//            session.removeAttribute("username");
//            session.removeAttribute("password");
            session.invalidate();

//            RequestDispatcher dispatcher = request.getServletContext()
//                            .getRequestDispatcher("/Views/Home.jsp");
//                    dispatcher.forward(request, response);
            response.sendRedirect("home");

        } finally {
            logout.close();
        }

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
}
