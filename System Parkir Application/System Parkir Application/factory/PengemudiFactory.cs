using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System_Parkir_Application.models;

namespace System_Parkir_Application.factory
{
    public class PengemudiFactory
    {
        public static void CreatePengemudi(int tiketID, string username, string platNomor)
        {
            dbLocalEntities db = new dbLocalEntities();
            Pengemudi p = new Pengemudi();
            p.tiketID = tiketID;
            p.name = username;
            p.platNomor = platNomor;

            db.Pengemudis.Add(p);
            db.SaveChanges();
        }
    }
}