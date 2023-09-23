using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System_Parkir_Application.models;

namespace System_Parkir_Application.repository
{
    public class ParkirRepository
    {
        public static Parkir FoundSlot()
        {
            dbLocalEntities db = new dbLocalEntities();
            Parkir found = (from x in db.Parkirs where x.tiketID.Equals(null) select x).ToList().FirstOrDefault();
            return found;
        }
        public static List<Parkir> getAllParkir()
        {
            dbLocalEntities db = new dbLocalEntities();
            List<Parkir> allParkir = (from x in db.Parkirs where x.tiketID != null && x.pengemudiID != null select x).ToList();
            return allParkir;
        }

        public static Parkir getParkir(int tiketID)
        {
            dbLocalEntities db = new dbLocalEntities();
            Parkir p = (from x in db.Parkirs where x.tiketID == tiketID select x).ToList().FirstOrDefault();
            return p;
        }

        public static void removeParkir(int tiketID)
        {
            dbLocalEntities db = new dbLocalEntities();
            Parkir p = (from x in db.Parkirs where x.tiketID == tiketID select x).ToList().FirstOrDefault();
            if(p != null)
            {
                p.tiketID = null;
                p.pengemudiID = null;
            }
            db.SaveChanges();
        }
    }
}