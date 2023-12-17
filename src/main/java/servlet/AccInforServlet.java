/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import Beans.Account;
import Beans.Image;
import Beans.Person_KhachHang;
import DAL.AccInforDAL;
import DAL.DangNhapDAL;

import java.io.File;
//import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;

//import javax.servlet.http.Part;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Admin
 */
@WebServlet(name = "AccInforServlet", urlPatterns = {"/AccInforServlet", "/updateAccount"})
@MultipartConfig(maxFileSize = -1L, maxRequestSize = -1L)

public class AccInforServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

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

                case "/AccInforServlet":
                    AccInfor(request, response);
                    break;
                case "/updateAccount":
                    updatekh(request, response);
                    break;
                default:
                    break;
            }
        } catch (Exception ex) {
            throw new ServletException(ex);
        }
    }

    protected void AccInfor(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/Views/AccInformation.jsp").forward(request, response);
    }

    private void updatekh(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String idkhachhang = request.getParameter("submit");
            AccInforDAL dal = new AccInforDAL();
            DangNhapDAL dangNhapDAL = new DangNhapDAL();
            System.out.println("abc" + idkhachhang);

            Person_KhachHang kh = dal.getKhachHang(idkhachhang);

            String ten = request.getParameter("ten");
            String diachi = request.getParameter("diachi");
            String email = request.getParameter("email");
            String sdt = request.getParameter("sdt");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
//            String user = "KH";
//            String bu = (new StringBuilder()).append(user).append(username).toString();
            kh.setTen(ten);
            kh.setEmail(email);
            kh.setDiaChi(diachi);
            kh.setSDT(sdt);
            kh.getDiemTichLuy();
            kh.getXepHang();
            Account acc = new Account();
            acc.setUserName(username);
            acc.setPassword(password);
            kh.setAccount(acc);
            Part photo = request.getPart("photo");
            boolean isSuccess = dangNhapDAL.isUsernameExists(username);
            if (isSuccess == false) {
                if (photo.getSubmittedFileName().equals("")) {
                    Image img = kh.getImage();
                    if (img.getURL().equals("")) {
                        img.setURL(photo.getSubmittedFileName());
                        kh.setImage(img);
                        dal.updateKhachHang(kh);
                    } else {
                        dal.updateKhachHang(kh);
                    }
                } else {
                    Image img = kh.getImage();
                    if (img.getURL().equals("")) {
                        img.setURL(kh.getIdPerson() + ".png");
                        kh.setImage(img);

//                    // đường dẫn thư mục tính từ gốc của website
                        File dir = new File(request.getServletContext().getRealPath("Image//Customer"));
//                    //Lưu ảnh được chọn vào folder trước            
                        File photoFile = new File(dir, photo.getSubmittedFileName());
                        photo.write(photoFile.getAbsolutePath());
//                    //Đổi tên ảnh được lưu trc đó thành id nhân viên
                        File rename = new File(dir, kh.getIdPerson() + ".png");
                        photoFile.renameTo(rename);
//                    
                        dal.updateKhachHang(kh);
                    } else {
                        img.setURL(kh.getIdPerson() + ".png");
                        kh.setImage(img);
                        dal.updateKhachHang(kh);

                        //Xóa file ảnh trước đó trong folder
                        // đường dẫn thư mục tính từ gốc của website
                        File dir = new File(request.getServletContext().getRealPath("Image//Customer"));
                        if (!dir.exists()) { // tạo nếu chưa tồn tạiup
                            dir.mkdirs();
                        }
                        File photoFile_del = new File(dir, img.getURL());
                        photoFile_del.delete();

                        //Lưu ảnh được chọn vào folder trước            
                        File photoFile = new File(dir, photo.getSubmittedFileName());
                        photo.write(photoFile.getAbsolutePath());
                        //Đổi tên ảnh được lưu trc đó thành id nhân viên
                        File rename = new File(dir, kh.getIdPerson() + ".png");
                        photoFile.renameTo(rename);

                    }
                }

                request.getRequestDispatcher("/Views/Home.jsp").forward(request, response);
            } else {
                String erro = "Tên Username đã tồn tại";
                request.setAttribute("erro", erro);
                request.getRequestDispatcher("/Views/AccInformation.jsp").forward(request, response);
            }

        } catch (Exception e) {
        }

    }

}
