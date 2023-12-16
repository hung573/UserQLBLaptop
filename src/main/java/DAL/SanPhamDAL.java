/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Beans.SanPham;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 *
 * @author mac
 */
public class SanPhamDAL {
    Session session;

    public SanPhamDAL() {
        this.session = HibernateUtils.getSessionFactory().openSession();
    }
    public List<Beans.SanPham> listSanPhamHome() {
        
        Transaction transaction = null;
        List<Beans.SanPham> sanphamList = new ArrayList<>();
        try {
            transaction = session.beginTransaction();
            Query query = session.createQuery("from SanPham ORDER BY RAND() ");    
            query.setMaxResults(8);
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
    public List<SanPham> listSanPhamDetail() {
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
    public List<SanPham> listSanPham(int limit, int page) {
        Transaction transaction = null;
        List<SanPham> sanphamList = new ArrayList<>();
        int offset = (page - 1) * limit;
        try {
            transaction = session.beginTransaction();

            Query query = session.createQuery("from SanPham");
            query.setFirstResult(offset);
            query.setMaxResults(limit);
            
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
    public ArrayList<SanPham> findbyIDsanpham(String tensp, int limit, int page) {
        Transaction transaction = null;
        ArrayList<SanPham> sp = new ArrayList<>();
        int offset = (page - 1) * limit;

        try {
            transaction = session.beginTransaction();

            String hql = "FROM SanPham AS sp WHERE sp.TenSanPham LIKE :tensp";
            Query query = session.createQuery(hql);
            query.setParameter("tensp", "%" + tensp + "%");
            query.setFirstResult(offset);
            query.setMaxResults(limit);

            sp = (ArrayList<SanPham>) query.getResultList();
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
        }
        return sp;
    }
    public ArrayList<SanPham> findbyMauSanPham(String mausp,int limit, int page) {
        Transaction transaction = null;
        ArrayList<SanPham> sp = new ArrayList<>();
        int offset = (page - 1) * limit;

        try {
            transaction = session.beginTransaction();

            String hql = "FROM SanPham AS sp WHERE sp.Mau LIKE :mausp";
            Query query = session.createQuery(hql);
            query.setParameter("mausp", "%" + mausp + "%");
            query.setFirstResult(offset);
            query.setMaxResults(limit);

            sp = (ArrayList<SanPham>) query.getResultList();
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
        }
        return sp;
    }
    public ArrayList<SanPham> findbyGiaBan(String giaBann,int limit, int page) {
    Transaction transaction = null;
    ArrayList<SanPham> sp = new ArrayList<>();
    double giaBan = Double.parseDouble(giaBann);
    int offset = (page - 1) * limit;

    try {
        transaction = session.beginTransaction();

        String hql = "SELECT sp FROM SanPham sp JOIN sp.kho  WHERE sp.kho.GiaBan = :GiaBan";
//        String hql = "SELECT sp FROM SanPham sp JOIN sp.kho k WHERE k.GiaBan = (SELECT MIN(kh.GiaBan) FROM Kho kh)";


        Query query = session.createQuery(hql);
        query.setParameter("GiaBan", giaBan);
        query.setFirstResult(offset);
        query.setMaxResults(limit);

        sp = (ArrayList<SanPham>) query.getResultList();
        transaction.commit();
    } catch (Exception e) {
        if (transaction != null) {
            transaction.rollback();
        }
        e.printStackTrace();
    }
    return sp;
}

    
    public long TinhTongSLSPSearchTen(String tensp) {
        Transaction transaction = null;
        long tinhthong = 0;
        try {
            transaction = session.beginTransaction();
            String hql = "SELECT COUNT(*) FROM SanPham AS sp WHERE sp.TenSanPham LIKE :tensp";
            Query query = session.createQuery(hql);
            query.setParameter("tensp", "%" + tensp + "%");
            tinhthong = (long) query.uniqueResult(); // Cast the result to long
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
        }
        return tinhthong;
    }
    public long TinhTongSLSPSearchGia(String giaBann) {
        Transaction transaction = null;
        long tinhthong = 0;
        double giaBan = Double.parseDouble(giaBann);
        try {
               transaction = session.beginTransaction();
            String hql = "SELECT COUNT(*) FROM SanPham sp JOIN sp.kho WHERE sp.kho.GiaBan = :giaBan";
            Query query = session.createQuery(hql);
            query.setParameter("giaBan", giaBan);
            tinhthong = (long) query.uniqueResult();
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
        }
        return tinhthong;
    }
    public long TinhTongSLSPSearchMau(String mausp) {
        Transaction transaction = null;
        long tinhthong = 0;
        try {
            transaction = session.beginTransaction();
            String hql = "SELECT COUNT(*) FROM SanPham AS sp WHERE sp.Mau LIKE :mausp";
            Query query = session.createQuery(hql);
            query.setParameter("mausp", "%" + mausp + "%");
            tinhthong = (long) query.uniqueResult(); // Cast the result to long
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
        }
        return tinhthong;
    }
    public long TinhTongSLSPList() {
        Transaction transaction = null;
        long tinhthong = 0;
        try {
            transaction = session.beginTransaction();
            String hql = "SELECT COUNT(*) FROM SanPham";
            Query query = session.createQuery(hql);
            tinhthong = (long) query.uniqueResult(); // Cast the result to long
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
        }
        return tinhthong;
    }
    public ArrayList<SanPham> findbyGiaBanTrongKhoang(String khoangbee,String khoanglonn,int limit, int page ) {
        Transaction transaction = null;
        ArrayList<SanPham> sp = new ArrayList<>();
        double khoangbe = Double.parseDouble(khoangbee);
        double khoanglon = Double.parseDouble(khoanglonn);
        int offset = (page - 1) * limit;

        try {
            transaction = session.beginTransaction();

            String hql = "SELECT sp FROM SanPham sp JOIN sp.kho  WHERE sp.kho.GiaBan BETWEEN :khoangbe AND :khoanglon";

            Query query = session.createQuery(hql);
            query.setParameter("khoangbe", khoangbe);
            query.setParameter("khoanglon", khoanglon);
            query.setFirstResult(offset);
            query.setMaxResults(limit);
            sp = (ArrayList<SanPham>) query.getResultList();
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return sp;
    }
    public long TinhTongSLSPSearchGiaKhong(String khoangbee,String khoanglonn) {
        Transaction transaction = null;
        long tinhthong = 0;
        double khoangbe = Double.parseDouble(khoangbee);
        double khoanglon = Double.parseDouble(khoanglonn);
        try {
            transaction = session.beginTransaction();
            String hql = "SELECT COUNT(*) FROM SanPham sp JOIN sp.kho  WHERE sp.kho.GiaBan BETWEEN :khoangbe AND :khoanglon";

            Query query = session.createQuery(hql);
            query.setParameter("khoangbe", khoangbe);
            query.setParameter("khoanglon", khoanglon);
            tinhthong = (long) query.uniqueResult(); // Cast the result to long
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
        }
        return tinhthong;
    }
    public ArrayList<SanPham> findbyGiaBanMin(String giaminn,int limit, int page) {
        Transaction transaction = null;
        ArrayList<SanPham> sp = new ArrayList<>();
        double giamin = Double.parseDouble(giaminn);
        int offset = (page - 1) * limit;

        try {
            transaction = session.beginTransaction();

            String hql = "SELECT sp FROM SanPham sp JOIN sp.kho  WHERE sp.kho.GiaBan <= :giamin";

            Query query = session.createQuery(hql);
            query.setParameter("giamin", giamin);
            query.setFirstResult(offset);
            query.setMaxResults(limit);
            sp = (ArrayList<SanPham>) query.getResultList();
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return sp;
    }
    public long TinhTongSLSPSearchGiaMin(String giaminn) {
        Transaction transaction = null;
        long tinhthong = 0;
        double giamin = Double.parseDouble(giaminn);
        try {
            transaction = session.beginTransaction();
            String hql = "SELECT COUNT(*) FROM SanPham sp JOIN sp.kho  WHERE sp.kho.GiaBan <= :giamin";

            Query query = session.createQuery(hql);
            query.setParameter("giamin", giamin);

            tinhthong = (long) query.uniqueResult(); // Cast the result to long
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
        }
        return tinhthong;
    }

    public ArrayList<SanPham> findbyGiaBanMax(String maxx ,int limit, int page) {
        Transaction transaction = null;
        ArrayList<SanPham> sp = new ArrayList<>();
        double giamax = Double.parseDouble(maxx);
        int offset = (page - 1) * limit;

        try {
            transaction = session.beginTransaction();

            String hql = "SELECT sp FROM SanPham sp JOIN sp.kho  WHERE sp.kho.GiaBan >= :giamax";

            Query query = session.createQuery(hql);
            query.setParameter("giamax", giamax);
            query.setFirstResult(offset);
            query.setMaxResults(limit);
            sp = (ArrayList<SanPham>) query.getResultList();
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return sp;
    }
    public long TinhTongSLSPSearchGiamax(String giamaxx) {
        Transaction transaction = null;
        long tinhthong = 0;
        double giamax = Double.parseDouble(giamaxx);
        try {
            transaction = session.beginTransaction();
            String hql = "SELECT COUNT(*) FROM SanPham sp JOIN sp.kho  WHERE sp.kho.GiaBan >= :giamax";

            Query query = session.createQuery(hql);
            query.setParameter("giamax", giamax);

            tinhthong = (long) query.uniqueResult(); // Cast the result to long
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
        }
        return tinhthong;
    }
}
