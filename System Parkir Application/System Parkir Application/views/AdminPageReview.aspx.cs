using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System_Parkir_Application.models;
using System_Parkir_Application.repository;

namespace System_Parkir_Application.views
{
    public partial class AdminPageReview : System.Web.UI.Page
    {
        public static List<Parkir> parkir = null;
        public static Parkir p = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user_admin"] == null)
            {
                Response.Redirect("AdminLoginPage.aspx");
            }
            
            if (IsPostBack == true)
            {
                parkir = ParkirRepository.getAllParkir();
                if(!(txtSearch.Text.Equals("")) && txtSearch.Text.Any(char.IsDigit))
                {
                    p = ParkirRepository.getParkir(int.Parse(txtSearch.Text.ToString()));
                    if(p == null)
                    {
                        p = null;
                    }
                }
            }
            else
            {
                parkir = ParkirRepository.getAllParkir();
            }
        }

        protected void btnGenerateIn_Click(object sender, EventArgs e)
        {
            if (TiketRepository.alreadyGeneratedIn((int)p.tiketID))
            {
                lblErrorF.CssClass = "alert alert-info d-block";
                lblErrorF.Text = "Sorry, you might be already in parking area";
                return;
            }
            // change status to active ( user is at parking area ) 
            TiketRepository.generateStatus("active", (int)p.tiketID);

            // start time in
            TiketRepository.generateWaktuMasuk((int)p.tiketID);

        }

        protected void btnGenerateOut_Click(object sender, EventArgs e)
        {
            if (TiketRepository.alreadyGenerateOut((int)p.tiketID))
            {
                lblErrorF.CssClass = "alert alert-warning d-block";
                lblErrorF.Text = "Sorry, you might be not in parking area";
                return;
            }
            // change status to expired ( user is NOT in parking area ) 
            TiketRepository.generateStatus("expired", (int)p.tiketID);
            TiketRepository.generateWaktuKeluar((int)p.tiketID);
            p.Tiket.harga = TiketRepository.calculatePrice((int)p.tiketID);
            lblErrorF.Text = "Successfully Calculated";
            btnDone.Visible = true;
            // start ENT TIME OUT
            
        }

        

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string inputSearch = txtSearch.Text;
            lblError.CssClass = "alert alert-danger d-block";
            if (inputSearch.Equals(""))
            {
                lblError.Text = "Search Box must be filled";
                return;
            }
            if (inputSearch.Any(Char.IsLetter))
            {
                lblError.Text = "ID must be only a digit";
                return;
            }
            else
            {
                lblError.CssClass = "";
                int tiketID = int.Parse(inputSearch);
                p = ParkirRepository.getParkir(tiketID);
                if(p != null)
                {
                    lblError.Text = "ID IS" + p.tiketID.ToString();
                }
                else
                {
                    lblError.Text = "ID Was Not Found!!";
                }
            }
        }

        protected void btnDone_Click(object sender, EventArgs e)
        {
            // remove from db
            ParkirRepository.removeParkir((int)p.tiketID);
            parkir = ParkirRepository.getAllParkir();
            p = null;
        }
    }
}