using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System_Parkir_Application.models;

namespace System_Parkir_Application.factory
{
    public class ParkirFactory
    {
        public static void CreateParkir(int tiketID, int pengemudiID, int parkirID)
        {
            dbLocalEntities db = new dbLocalEntities();
            Parkir p = (from x in db.Parkirs where x.parkirID == parkirID select x).ToList().FirstOrDefault();
            p.tiketID = tiketID;
            p.pengemudiID = pengemudiID;
            
            db.SaveChanges();
        }
    }
}