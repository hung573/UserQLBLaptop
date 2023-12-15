/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Beans.SanPham;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
/**
 *
 * @author mac
 */
public class SPDALGiaHung {
    Session session;
    public SPDALGiaHung(){
        session = HibernateUtils.getSessionFactory().openSession();
    }
    public SanPham getSanPham(String IdSanPham){
        Transaction transaction = null;
        SanPham sp = null;
        try {
            transaction = session.beginTransaction();
            sp = session.get(SanPham.class, IdSanPham);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
        }
        return sp;
    }
    public List<SanPham> listSanPham() {
        Transaction transaction = null;
        List<SanPham> sanphamList = new ArrayList<>();
        try {
            transaction = session.beginTransaction();
            Query query = session.createQuery("from SanPham ORDER BY RAND()");    
            query.setMaxResults(3);
            sanphamList = query.list();

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return sanphamList;
    }
}
