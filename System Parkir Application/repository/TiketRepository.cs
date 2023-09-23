using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System_Parkir_Application.models;

namespace System_Parkir_Application.repository
{
    public class TiketRepository
    {
        public static Tiket getLastTicket()
        {
            dbLocalEntities db = new dbLocalEntities();
            Tiket ticket = (from x in db.Tikets select x).ToList().LastOrDefault();
            return ticket;
        }
        public static void generateStatus(string status, int tiketID)
        {
            dbLocalEntities db = new dbLocalEntities();
            Tiket t = (from x in db.Tikets where x.tiketID == tiketID select x).ToList().FirstOrDefault();
            t.status = status;
            db.SaveChanges();
        }
        public static Boolean alreadyGeneratedIn(int tiketID)
        {
            dbLocalEntities db = new dbLocalEntities();
            Tiket t = (from x in db.Tikets where x.tiketID == tiketID select x).ToList().FirstOrDefault();
            if (t.waktuMasuk != null) return true;
            return false;
        }

        public static Boolean alreadyGenerateOut(int tiketID)
        {
            dbLocalEntities db = new dbLocalEntities();
            Tiket t = (from x in db.Tikets where x.tiketID == tiketID select x).ToList().FirstOrDefault();
            if (t.waktuKeluar != null) return true;
            return false;
        }
        public static void generateWaktuMasuk(int tiketID)
        {
            dbLocalEntities db = new dbLocalEntities();
            Tiket t = (from x in db.Tikets where x.tiketID == tiketID select x).ToList().FirstOrDefault();
            t.waktuMasuk = DateTime.Now;
            db.SaveChanges();
        }

        public static void generateWaktuKeluar(int tiketID)
        {
            dbLocalEntities db = new dbLocalEntities();
            Tiket t = (from x in db.Tikets where x.tiketID == tiketID select x).ToList().FirstOrDefault();
            t.waktuKeluar = DateTime.Now;
            db.SaveChanges();
        }

        public static int calculatePrice(int tiketID)
        {
            dbLocalEntities db = new dbLocalEntities();
            Tiket t = (from x in db.Tikets where x.tiketID == tiketID select x).ToList().FirstOrDefault();
            int diff = (((DateTime)t.waktuKeluar - (DateTime)t.waktuMasuk).Hours);
            int price = (diff < 1 ? 1 : diff)  * 5000;
            
            t.harga = price;
            db.SaveChanges();
            return price;
        }

        public static String showStatus(int tiketID)
        {
            dbLocalEntities db = new dbLocalEntities();
            Tiket t = (from x in db.Tikets where x.tiketID == tiketID select x).ToList().FirstOrDefault();
            return t.status;
        }

       
    }
}