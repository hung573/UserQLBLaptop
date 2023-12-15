/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import Beans.SanPham;
import DAL.SPDALCongHung;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
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
@WebServlet(name = "SanPhamListServlet", urlPatterns = {"/SanPhamListServlet"})
public class SanPhamListServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private SPDALCongHung sPDALCongHung;
    private SanPham sanPham;
    public SanPhamListServlet() {
        super();
    }
    public  void  init(){
        sPDALCongHung = new SPDALCongHung();
        sanPham = new SanPham();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

            String action = request.getServletPath();
     
        try {
            
            switch (action) {
                
                case "/SanPhamListServlet":
                    listSanPham(request, response);
                    break;     
                default:
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }

    }
    private void listSanPham(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException, ServletException {
        String tensp = request.getParameter("keyword");
        String gia = request.getParameter("keywordGia");
        String[] mau = request.getParameterValues("keywordMau");
        String[] giatrongkhoang = request.getParameterValues("keywordGiaTrongKhoan");
        String[] giaMin = request.getParameterValues("keywordGiaMin");
        String[] giaMax = request.getParameterValues("keywordGiaMax");

        
        int page = 1;
        if(request.getParameter("page") != null && request.getParameter("page") != ""){
            page = Integer.parseInt(request.getParameter("page"));
        }
        if(tensp != null && gia == null && mau==null && giatrongkhoang == null && giaMin == null && giaMax == null){
            ArrayList < SanPham > listsp = sPDALCongHung.findbyIDsanpham(tensp, 9, page);
            long countRecord = sPDALCongHung.TinhTongSLSPSearchTen(tensp);
            double countPage = Math.ceil(countRecord/9 +1);
            request.setAttribute("listSP", listsp);
            request.setAttribute("countRecord", countRecord);
            request.setAttribute("countPage", countPage);
            request.setAttribute("page", page);
            request.setAttribute("id", tensp);
            request.setAttribute("gia", gia);
            request.setAttribute("mau", mau);
            request.setAttribute("giatrongkhoang", giatrongkhoang);
            request.setAttribute("giaMin", giaMin);
            request.setAttribute("giaMax", giaMax);


            request.getServletContext().getRequestDispatcher("/Views/SanPhamList.jsp").forward(request, response);
        }
        else if(gia !=null && tensp == null && mau==null&& giatrongkhoang == null&& giaMin == null && giaMax == null){
            ArrayList < SanPham > listsp = sPDALCongHung.findbyGiaBan(gia,9,page);
            long countRecord = sPDALCongHung.TinhTongSLSPSearchGia(gia);
            double countPage = Math.ceil(countRecord/9 +1);
            request.setAttribute("listSP", listsp);
            request.setAttribute("countRecord", countRecord);
            request.setAttribute("countPage", countPage);
            request.setAttribute("page", page);
            request.setAttribute("id", tensp);
            request.setAttribute("gia", gia);
            request.setAttribute("mau", mau);
            request.setAttribute("giatrongkhoang", giatrongkhoang);
            request.setAttribute("giaMin", giaMin);
            request.setAttribute("giaMax", giaMax);

            request.getServletContext().getRequestDispatcher("/Views/SanPhamList.jsp").forward(request, response);
        }
        else if(gia ==null && tensp == null && mau!=null && giatrongkhoang == null&& giaMin == null && giaMax == null){
            for (String maukt : mau) {
                ArrayList < SanPham > listsp = sPDALCongHung.findbyMauSanPham(maukt,9,page);
                long countRecord = sPDALCongHung.TinhTongSLSPSearchMau(maukt);
                double countPage = Math.ceil(countRecord/9 +1);
                request.setAttribute("listSP", listsp);
                request.setAttribute("countRecord", countRecord);
                request.setAttribute("countPage", countPage);
                request.setAttribute("page", page);
                request.setAttribute("id", tensp);
                request.setAttribute("gia", gia);
                request.setAttribute("mau", mau);
                request.setAttribute("giatrongkhoang", giatrongkhoang);
                request.setAttribute("giaMin", giaMin);
                request.setAttribute("giaMax", giaMax);

            }
            request.getServletContext().getRequestDispatcher("/Views/SanPhamList.jsp").forward(request, response);

        }
        else if(gia ==null && tensp == null && mau==null && giatrongkhoang != null&& giaMin == null && giaMax == null){
            for (String giatrongkhoangkt : giatrongkhoang) {
                String[] giaValues = giatrongkhoang[0].split("-");
                String gianho = giaValues[0].trim();
                String gialon = giaValues[1].trim();
                System.out.println("servlet.SanPhamServlet.listSanPham()"+gianho+gialon);
                ArrayList < SanPham > listsp = sPDALCongHung.findbyGiaBanTrongKhoang(gianho,gialon,3,page);
                long countRecord = sPDALCongHung.TinhTongSLSPSearchGiaKhong(gianho,gialon);
                double countPage = Math.ceil(countRecord/3 +1);
                request.setAttribute("listSP", listsp);
                request.setAttribute("countRecord", countRecord);
                request.setAttribute("countPage", countPage);
                request.setAttribute("page", page);
                request.setAttribute("id", tensp);
                request.setAttribute("gia", gia);
                request.setAttribute("mau", mau);
                request.setAttribute("giatrongkhoang", giatrongkhoang);
                request.setAttribute("giaMin", giaMin);
                request.setAttribute("giaMax", giaMax);

            }
            request.getServletContext().getRequestDispatcher("/Views/SanPhamList.jsp").forward(request, response);

        }
        else if(gia ==null && tensp == null && mau==null && giatrongkhoang == null&& giaMin != null && giaMax == null){
            for (String giaMinkt : giaMin) {
                ArrayList < SanPham > listsp = sPDALCongHung.findbyGiaBanMin(giaMinkt,3,page);
                long countRecord = sPDALCongHung.TinhTongSLSPSearchGiaMin(giaMinkt);
                double countPage = Math.ceil(countRecord/3 +1);
                request.setAttribute("listSP", listsp);
                request.setAttribute("countRecord", countRecord);
                request.setAttribute("countPage", countPage);
                request.setAttribute("page", page);
                request.setAttribute("id", tensp);
                request.setAttribute("gia", gia);
                request.setAttribute("mau", mau);
                request.setAttribute("giatrongkhoang", giatrongkhoang);
                request.setAttribute("giaMin", giaMin);
                request.setAttribute("giaMax", giaMax);

            }
            request.getServletContext().getRequestDispatcher("/Views/SanPhamList.jsp").forward(request, response);
        }
        else if(gia ==null && tensp == null && mau==null && giatrongkhoang == null&& giaMin == null && giaMax != null){
            for (String giaMaxkt : giaMax) {
                ArrayList < SanPham > listsp = sPDALCongHung.findbyGiaBanMax(giaMaxkt,3,page);
                long countRecord = sPDALCongHung.TinhTongSLSPSearchGiamax(giaMaxkt);
                double countPage = Math.ceil(countRecord/3 +1);
                request.setAttribute("listSP", listsp);
                request.setAttribute("countRecord", countRecord);
                request.setAttribute("countPage", countPage);
                request.setAttribute("page", page);
                request.setAttribute("id", tensp);
                request.setAttribute("gia", gia);
                request.setAttribute("mau", mau);
                request.setAttribute("giatrongkhoang", giatrongkhoang);
                request.setAttribute("giaMin", giaMin);
                request.setAttribute("giaMax", giaMax);
//
            }
                    request.getServletContext().getRequestDispatcher("/Views/SanPhamList.jsp").forward(request, response);

        }
        else{
            List < SanPham > listsp = sPDALCongHung.listSanPham(9,page);
//            List < SanPham > listsp = sPDALCongHung.listSanPham();
            long countRecord = sPDALCongHung.TinhTongSLSPList();
            double countPage = Math.ceil(countRecord/9+1); 
            request.setAttribute("listSP", listsp);
            request.setAttribute("countRecord", countRecord);
            request.setAttribute("countPage", countPage);
            request.setAttribute("page", page);
            request.setAttribute("id", tensp);
            request.setAttribute("gia", gia);
            request.setAttribute("mau", mau);
            request.setAttribute("giatrongkhoang", giatrongkhoang);
            request.setAttribute("giaMin", giaMin);
            request.setAttribute("giaMax", giaMax);

            request.getServletContext().getRequestDispatcher("/Views/SanPhamList.jsp").forward(request, response);
        }
        
              
    }

}
