/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Beans.Account;
import Beans.Person;
import Beans.Person_KhachHang;
import DAL.HibernateUtils;
import java.sql.Array;
import java.util.ArrayList;
import java.util.Arrays;
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

    @SuppressWarnings("unchecked")
    public boolean CheckLogin(String username, String password) {
        Transaction transaction = null;
        boolean isAuthenticated = false;
        try {

            transaction = session.beginTransaction();
            String hql = "FROM Account AS ac WHERE ac.UserName = :username AND ac.Password = :password";
            Query<Account> query = session.createQuery(hql, Account.class);
//            query.setParameter("username", "%"+username+"%");
//            query.setParameter("password", "%"+password+"%");
            query.setParameter("username", username);
            query.setParameter("password", password);

            Account account = query.uniqueResult();

            if (account != null) {
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

    public Account getAccount(int id) {
        Transaction transaction = null;
        Account ac = null;
        try {
            transaction = session.beginTransaction();
            ac = session.get(Account.class, id);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
        }
        return ac;
    }

    public Person getPerson(String username) {
        Transaction transaction = null;
        Person person = null;

        try {
            transaction = session.beginTransaction();

            // Using HQL to create a query
//            String hql = "FROM Person nv INNER JOIN Account acc ON nv.IdPerson = acc.UserName WHERE acc.UserName = :username";
            String hql = "FROM Person AS ps WHERE ps.IdPerson = :username";

//            String hql = "FROM NhanVien acc WHERE acc.ChucVu = :idAccount";
            Query<Person> query = session.createQuery(hql, Person.class);
            query.setParameter("username", username);
            person = query.uniqueResult();
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace(); // In lỗi để bạn có thể theo dõi lỗi xảy ra trong quá trình thực thi
        }

        return person;
    }

    public Account getIdAccountByUsername(String username) {
        Transaction transaction = null;
        Account idAccount = null;

        try {
            transaction = session.beginTransaction();

            // Using HQL to create a query
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

    public Person_KhachHang getPerson_KhachHang(String IdPerson) {
        Transaction transaction = null;
        Person_KhachHang person_KhachHang = null;

        try {
            transaction = session.beginTransaction();

            // Using HQL to create a query
            String hql = "FROM KhachHang AS nv WHERE nv.IdPerson = :IdPerson";
            Query<Person_KhachHang> query = session.createQuery(hql, Person_KhachHang.class);
            query.setParameter("IdPerson", IdPerson);

            person_KhachHang = query.uniqueResult();
            transaction.commit();

        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
        }

        return person_KhachHang;
    }

    

    public boolean CheckBoPhan(String idPerson) {
        Transaction transaction = null;
        boolean check = false;

        try {
            transaction = session.beginTransaction();

            // Query to check if the username and password match
            String hql = "FROM KhachHang AS nv WHERE nv.IdPerson = :idPerson";
            Query<Person_KhachHang> query = session.createQuery(hql, Person_KhachHang.class);
            query.setParameter("idPerson", idPerson);
//            query.setParameter("trangthai", "%"+trangthai+"%");

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

    public static void main(String[] args) {
        DangNhapDAL dangNhapDAL = new DangNhapDAL();
        System.out.println(dangNhapDAL.CheckLogin("KH2350247953213", "KH@2350247953213"));
        System.out.println(dangNhapDAL.CheckBoPhan("KH2350247953213"));

    }
}
