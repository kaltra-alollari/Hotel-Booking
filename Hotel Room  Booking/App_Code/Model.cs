﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class Dhomat
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Dhomat()
    {
        this.Rezervim_Dhome = new HashSet<Rezervim_Dhome>();
        this.Stafs = new HashSet<Staf>();
    }

    public int IdRoom { get; set; }
    public string Numri { get; set; }
    public string Statusi { get; set; }
    public string Tipi { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Rezervim_Dhome> Rezervim_Dhome { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Staf> Stafs { get; set; }
}

public partial class Klienti
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Klienti()
    {
        this.Rezervimis = new HashSet<Rezervimi>();
    }

    public int UserId { get; set; }
    public string Emer { get; set; }
    public string Mbiemer { get; set; }
    public int Mosha { get; set; }
    public string Email { get; set; }
    public string Pasword { get; set; }
    public string Tipi { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Rezervimi> Rezervimis { get; set; }
}

public partial class Rezervim_Dhome
{
    public int Id { get; set; }
    public int Id_Rezervimi { get; set; }
    public int idRoom { get; set; }

    public virtual Dhomat Dhomat { get; set; }
    public virtual Rezervimi Rezervimi { get; set; }
}

public partial class Rezervimi
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Rezervimi()
    {
        this.Rezervim_Dhome = new HashSet<Rezervim_Dhome>();
    }

    public int Id { get; set; }
    public System.DateTime CheckInDate { get; set; }
    public System.DateTime CheckOutDate { get; set; }
    public int NrAdulteve { get; set; }
    public int NrFemijeve { get; set; }
    public Nullable<int> NrDhomave { get; set; }
    public int UserId { get; set; }

    public virtual Klienti Klienti { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Rezervim_Dhome> Rezervim_Dhome { get; set; }
}

public partial class Staf
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Staf()
    {
        this.Dhomats = new HashSet<Dhomat>();
    }

    public int Staf_Id { get; set; }
    public string Emer { get; set; }
    public string Mbiemer { get; set; }
    public string cel { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Dhomat> Dhomats { get; set; }
}

public partial class sysdiagram
{
    public string name { get; set; }
    public int principal_id { get; set; }
    public int diagram_id { get; set; }
    public Nullable<int> version { get; set; }
    public byte[] definition { get; set; }
}

public partial class sp_helpdiagramdefinition_Result
{
    public Nullable<int> version { get; set; }
    public byte[] definition { get; set; }
}

public partial class sp_helpdiagrams_Result
{
    public string Database { get; set; }
    public string Name { get; set; }
    public int ID { get; set; }
    public string Owner { get; set; }
    public int OwnerID { get; set; }
}
