/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Beans.Account;
import Beans.Person_KhachHang;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 *
 * @author mac
 */
public class DangNhapDAL {

    Session session;

    public DangNhapDAL() {
        session = HibernateUtils.getSessionFactory().openSession();
    }
//1
    @SuppressWarnings("unchecked")
    public boolean CheckLogin(String username, String password) {
        Transaction transaction = null;
        boolean isAuthenticated = false;
        try {

            transaction = session.beginTransaction();
            String hql = "FROM Account AS ac WHERE ac.UserName = :username AND ac.Password = :password";
            Query<Account> query = session.createQuery(hql, Account.class);

            query.setParameter("username", username);
            query.setParameter("password", password);

            Account account = query.uniqueResult();
            String check = account.getUserName();
            String checkkString = check.substring(0, 2);
            if (account != null && checkkString.equals("KH") || !checkkString.equals("BH") ||
                    !checkkString.equals("KV")) {
                isAuthenticated = true;
            }

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace(); // Handle or log the exception as needed
        }

        return isAuthenticated;
    }

    
    public Person_KhachHang getIDPerson_KhachHang(int id) {
        Transaction transaction = null;
        Person_KhachHang person_KhachHang = null;
        try {
            String hql = "SELECT kh FROM KhachHang kh JOIN kh.account WHERE kh.account.IdAccount = :id";

            Query<Person_KhachHang> query = session.createQuery(hql, Person_KhachHang.class);
            query.setParameter("id", id);
            person_KhachHang = query.uniqueResult();
            
            transaction.commit();

        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
        }

        return person_KhachHang;
    }
    
    public Account getIdAccountByUsername(String username) {
        Transaction transaction = null;
        Account idAccount = null;

        try {
            transaction = session.beginTransaction();

            String hql = "FROM Account AS ac WHERE ac.UserName = :username";
            Query<Account> query = session.createQuery(hql, Account.class);
            query.setParameter("username", username);

            idAccount = query.uniqueResult();

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
        }
        return idAccount;
    }

    

    public boolean CheckBoPhan(String idPerson) {
        Transaction transaction = null;
        boolean check = false;

        try {
            transaction = session.beginTransaction();

            String hql = "FROM KhachHang AS nv WHERE nv.IdPerson = :idPerson";
            Query<Person_KhachHang> query = session.createQuery(hql, Person_KhachHang.class);
            query.setParameter("idPerson", idPerson);
            Person_KhachHang p = query.uniqueResult();
            String checkk = p.getIdPerson();
            String checkkString = checkk.substring(0, 2);
            if (checkkString.equals("KH")) {
                check = true;
            }

            transaction.commit();

        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace(); // Handle or log the exception as needed
        }

        return check;
    }

    

    public List<Account> listSanPham() {
        Transaction transaction = null;
        List<Account> sanphamList = new ArrayList<>();
        try {
            transaction = session.beginTransaction();

            Query query = session.createQuery("from Account");

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
    
    public boolean addAccount(Account account) {
        Transaction transaction = null;
        boolean isSuccess = false;
        try {
            transaction = session.beginTransaction();

            // Kiểm tra xem tài khoản đã tồn tại chưa
            if (isUsernameExists(account.getUserName()) == false) {
                // Thêm tài khoản mới
                session.save(account);
                isSuccess = true;
            } else { 
                isSuccess = false;
                System.out.println("Tài khoản đã tồn tại!");
            }
             transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }

        return isSuccess;
    }
    public boolean isUsernameExists(String username) {
        String hql = "SELECT COUNT(*) FROM Account AS ac WHERE ac.UserName = :username";
        long count = (Long) session.createQuery(hql)
                .setParameter("username", username)
                .uniqueResult();

        return count > 0;
    }
    public boolean addKhachHang(Person_KhachHang kh)
    {
        session.beginTransaction();
        session.save(kh);
        session.getTransaction().commit();
        return true;
    }

    public static void main(String[] args) {
        DangNhapDAL dangNhapDAL = new DangNhapDAL();
        Account ac = dangNhapDAL.getIdAccountByUsername("KH2350247953213");
        int accString= ac.getIdAccount();
        Person_KhachHang ps = dangNhapDAL.getIDPerson_KhachHang(accString);
        String user =  ac.getUserName();
        System.out.println("kiemtra: "+dangNhapDAL.isUsernameExists("KHmax123"));
        System.out.println(ps.getIdPerson());
        System.out.println(ac.getUserName());
        System.out.println(dangNhapDAL.CheckLogin("KH2350247953213", "KH@2350247953213"));

    }
}
