using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System_Parkir_Application.factory;
using System_Parkir_Application.models;
using System_Parkir_Application.repository;


namespace System_Parkir_Application.views
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        private Parkir getTiketID;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string platNomor = txtPlatNomor.Text;
            
            
            // input by user correct
            if(!(username.Equals("")) && !(platNomor.Equals(""))){
                Parkir SlotFound = ParkirRepository.FoundSlot();
                if (SlotFound != null)
                {
                    // make new ticket
                    TiketFactory.CreateTiket();
                    Tiket ticket = TiketRepository.getLastTicket();
                    // generate tiket to pengemudi
                    PengemudiFactory.CreatePengemudi((int)ticket.tiketID, username, platNomor);
                    Pengemudi pengemudi = PengemudiRepository.getLastPengemudi();
                    // generate to status ticket to booking
                    TiketRepository.generateStatus("booking", (int)ticket.tiketID);
                    // generate to parkir database
                    ParkirFactory.CreateParkir((int)ticket.tiketID, (int)pengemudi.pengemudiID);
                    lblError.CssClass = "alert alert-success d-block";
                    lblError.Text = "Tiket ID = " + ticket.tiketID + " Pengemudi ID = " + pengemudi.pengemudiID;
                    
                    btnShowTiket.Visible = true;
                }
                else
                {
                    lblError.CssClass = "aler alert-danger d-block";
                    lblError.Text = "Sorry, but right now we ran out of parking slot";
                }
            }
            else
            {
                lblError.CssClass = "alert alert-danger d-block";
                lblError.Text = "Username and PlatNomor Must be Filled";
            }

        }

        protected void btnShowTiket_Click(object sender, EventArgs e)
        {
            string platNomor = txtFindPlatNomor.Text;


            if (!(platNomor.Any(Char.IsLetter)) || !(platNomor.Any(Char.IsDigit)))
            {
                lblError.CssClass = "alert alert-danger d-block";
                lblError.Text = "Format Plat Nomor is Inccorect";
            }
            else
            {
                Pengemudi p = PengemudiRepository.findIdByPlatNomor(platNomor);
                
            }
        }

        protected void btnFind_Click(object sender, EventArgs e)
        {
            string platNomor = txtFindPlatNomor.Text;
           
            if(platNomor != null)
            {
                Pengemudi p = PengemudiRepository.findIdByPlatNomor(platNomor);
               
                if(p != null)
                {
                    String status = TiketRepository.showStatus((int)p.tiketID);
                    if (status.Equals("expired"))
                    {
                        lblError.CssClass = "alert alert-warning d-block";
                        lblError.Text = "Your Ticket ID Has Already Expired !";
                    }
                    else if (status.Equals("active")){
                        Parkir infoParkir = ParkirRepository.getParkir((int)p.tiketID);
                        lblError.CssClass = "alert alert-info d-block";
                        lblError.Text = "Tiket ID parking in Area :  " + infoParkir.area + ", Lantai : " + infoParkir.lantai;
                    }
                    else
                    {
                        lblError.CssClass = "alert alert-info d-block";
                        lblError.Text = "Your Ticket ID is Number " + p.tiketID;
                    }
                }
                else
                {
                    lblError.CssClass = "alert alert-danger d-block";
                    lblError.Text = "Your Ticket ID Was Not Found !";
                }
                
               
            }
            else
            {
                lblError.CssClass = "alert alert-danger d-block";
                lblError.Text = "Your Ticket ID Was Not Found !";
            }
        }
    }
}