/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Beans.SanPham;
import java.util.Collections;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.query.Query;

/**
 *
 * @author MY COMPUTER
 */
public class SPDALHoi {
    Session session;

    public SPDALHoi() {
        this.session = HibernateUtils.getSessionFactory().openSession();
    }
public List<SanPham> listsanphamhome() {
    try (Session session = HibernateUtils.getSessionFactory().openSession()) {
        String hql = "SELECT sp FROM SanPham sp " +
                     "JOIN FETCH sp.kho k " +
                 "WHERE k.GiaBan > 0 "; /*+
                   "AND sp.ThuongHieu = 'Acer'";*/

        Query<SanPham> query = session.createQuery(hql, SanPham.class);
        query.setMaxResults(100);

        List<SanPham> result = query.list();

        return result;
    } catch (Exception e) {
        e.printStackTrace();
    }
    return null;
}



    public static void main(String[] args) {
    SPDALHoi dal = new SPDALHoi();
    List<SanPham> result = dal.listsanphamhome();

    if (result != null) {
        for (SanPham sanPham : result) {
            String tesp = sanPham.getTenSanPham();
            double giaban = sanPham.getKho().getGiaBan();

            System.out.println("TenSanPham: " + tesp + ", GiaBan: " + giaban);
        }
    }

    }
}

           


//           public List<SanPham> listsanpham() {
//                   try (Session session = HibernateUtils.getSessionFactory().openSession()) {
//        String hql = "FROM SanPham WHERE thuonghieu = 'ACER' ORDER BY RAND()";
//        Query<SanPham> query = session.createQuery(hql, SanPham.class);
//        query.setMaxResults(4);
//
//        return query.getResultList();
//    } catch (Exception e) {
//        e.printStackTrace();
//    }
//           return null; 
//           }