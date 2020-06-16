using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace KurumsalEmlakSitesi.kurumsaluser
{
    public partial class HİzmetDuzenle : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            pnl_gdogru.Visible = false;
            pnl_gyanlis.Visible = false;

            id = Request.QueryString["Servislerid"];
            //hizmetleri tekbozlra içerisine yazdırmak için kullanırız
            if(Page.IsPostBack==false)
            {
                SqlCommand komut = new SqlCommand("Select * From Tbl_Servisler where Servislerid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader rd = komut.ExecuteReader();
                while (rd.Read())
                {
                    txt_baslik.Text = rd[1].ToString();
                    txt_ozet.Text = rd[2].ToString();
                    txt_hicerik.Text = rd[3].ToString();
                }
                bgl.baglanti().Close();
            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

           
                //Düzenle butonuna tıklandığında yapıalcak işlemler
                SqlCommand komut = new SqlCommand("update Tbl_Servisler set ServislerAD=@p1,ServislerOzet=@p2,Servislericerik=@p3 where Servislerid=@p4 ", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", txt_baslik.Text);
                komut.Parameters.AddWithValue("@p2", txt_ozet.Text);
                komut.Parameters.AddWithValue("@p3", txt_hicerik.Text);
                komut.Parameters.AddWithValue("@p4", id);
                pnl_gdogru.Visible = true;
                komut.ExecuteNonQuery();

            




        }

        protected void btn_mtemizle_Click(object sender, EventArgs e)
        {
            txt_baslik.Text = "";
            txt_hicerik.Text = "";
            txt_ozet.Text = "";

        }
    }
}