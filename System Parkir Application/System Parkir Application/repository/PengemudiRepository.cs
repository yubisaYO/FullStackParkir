using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System_Parkir_Application.models;

namespace System_Parkir_Application.repository
{
    public class PengemudiRepository
    {
        public static Pengemudi getLastPengemudi()
        {
            dbLocalEntities db = new dbLocalEntities();
            Pengemudi p = (from x in db.Pengemudis select x).ToList().LastOrDefault();
            return p;
        }
        public static Pengemudi findIdByPlatNomor(string platnomor)
        {
            dbLocalEntities db = new dbLocalEntities();
            Pengemudi p = (from x in db.Pengemudis where x.platNomor.Equals(platnomor) select x).ToList().LastOrDefault();
            return p;
        }
    }
}