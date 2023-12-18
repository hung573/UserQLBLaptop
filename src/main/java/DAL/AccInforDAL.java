/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Beans.Account;
import Beans.Image;
import Beans.Person_KhachHang;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 *
 * @author mac
 */
public class AccInforDAL {
    Session session;
    public AccInforDAL() {
        session = HibernateUtils.getSessionFactory().openSession();
    }
    public boolean updateKhachHang(Person_KhachHang kh)
    {
        session.beginTransaction();
        Person_KhachHang khh = session.get(Person_KhachHang.class, kh.getIdPerson());
        Person_KhachHang kh_update = new Person_KhachHang();
        //sửa thông tin person            
        kh_update.setTen(kh.getTen());
        kh_update.setEmail(kh.getEmail());
        kh_update.setDiaChi(kh.getDiaChi());
        kh_update.setSDT(kh.getSDT());
        
        //sửa thông tin person_khachhang
        kh_update.setXepHang(kh.getXepHang());
//        kh_update.setDiemTichLuy(kh.getDiemTichLuy());
      
        //set Id cho kh_update
        kh_update.setIdPerson();
        
        //thế image cũ vào kh update
        Image img_update = new Image();
        img_update.setURL(kh.getImage().getURL());
        //thế account cũ vào kh update
        Account acc_update = new Account();
        acc_update.setUserName(kh.getAccount().getUserName());
        acc_update.setPassword(kh.getAccount().getPassword());
        
        //bỏ vào accoun, image vào kh_update            
        kh_update.setAccount(acc_update);
        kh_update.setImage(img_update);
        
        //xóa khách hàng cũ từ database
        session.delete(khh);
        //Thêm khách hàng được sửa vào database
        session.save(kh_update);
        session.getTransaction().commit();
        return true;
    
    }
    public Person_KhachHang getKhachHang(String IdPerson)
    {
        session.beginTransaction();
        Person_KhachHang p = session.get(Person_KhachHang.class, IdPerson);
        session.getTransaction().commit();
        return p;
    }
    public Person_KhachHang getIDACC(int id) {
        Transaction transaction = null;
        Person_KhachHang person_NhanVien = null;
        try {
            String hql = "SELECT nv FROM KhachHang nv JOIN nv.account WHERE nv.account.IdAccount = :id";
            Query<Person_KhachHang> query = session.createQuery(hql, Person_KhachHang.class);
            query.setParameter("id", id);
            person_NhanVien = query.uniqueResult();
            
            transaction.commit();

        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
        }

        return person_NhanVien;
    }
     public Person_KhachHang getIdAccountByIDpersonNV(String idperson) {
        Transaction transaction = null;
        Person_KhachHang idAccount = null;

        try {
            transaction = session.beginTransaction();

            // Using HQL to create a query
            String hql = "FROM KhachHang AS kh WHERE kh.IdPerson = :idperson";
            Query<Person_KhachHang> query = session.createQuery(hql, Person_KhachHang.class);
            query.setParameter("idperson", idperson);

            idAccount = query.uniqueResult();

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
        }

        return idAccount;
    }
}
