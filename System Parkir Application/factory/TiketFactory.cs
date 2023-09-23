using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System_Parkir_Application.models;

namespace System_Parkir_Application.factory
{
    public class TiketFactory
    {
        public static void CreateTiket()
        {
            dbLocalEntities db = new dbLocalEntities();
            db.Tikets.Add(new Tiket());
            db.SaveChanges();
        }
        
    }
}