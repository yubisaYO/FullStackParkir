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
            
            
            var priorityFloor = new List<string> { "Lantai 2", "Lantai 4", "Lantai 6", "Lantai 8", "Lantai 10", "Lantai 12", "Lantai 14", "Lantai 16" };
            
            Parkir slotAvailable = (from x in db.Parkirs where x.tiketID == null && priorityFloor.Contains(x.lantai) select x).FirstOrDefault();

            if (slotAvailable == null)
            {
                slotAvailable = (from x in db.Parkirs where x.tiketID == null select x).FirstOrDefault();
            }


            return slotAvailable;
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
        public static bool validatePlatNomor(string platNomor)
        {
            dbLocalEntities db = new dbLocalEntities();
            Parkir p = (from x in db.Parkirs where x.Pengemudi.platNomor.Equals(platNomor) select x).FirstOrDefault();
            if (p == null) return true;
            return false;

        }
    }
}