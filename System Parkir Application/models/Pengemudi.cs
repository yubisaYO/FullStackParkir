//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace System_Parkir_Application.models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Pengemudi
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Pengemudi()
        {
            this.Parkirs = new HashSet<Parkir>();
        }
    
        public int pengemudiID { get; set; }
        public string name { get; set; }
        public string platNomor { get; set; }
        public Nullable<int> tiketID { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Parkir> Parkirs { get; set; }
        public virtual Tiket Tiket { get; set; }
    }
}