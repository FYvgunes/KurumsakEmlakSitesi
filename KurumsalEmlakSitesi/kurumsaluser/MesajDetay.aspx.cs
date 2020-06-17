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
    public partial class MesajDetay : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Mesajid"];
            pnl_gdogru.Visible = false;
            pnl_gyanlis.Visible = false;
            if(Page.IsPostBack==false)
            {
                SqlCommand komut = new SqlCommand("Select * From Tbl_Mesajlar Where Mesajid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader rd = komut.ExecuteReader();
                while (rd.Read())
                {
                    txt_Ad.Text = rd[1].ToString();
                    txt_mail.Text = rd[2].ToString();
                    txt_dBaslik.Text = rd[3].ToString();
                    txt_icerik.Text = rd[4].ToString();
                }
                bgl.baglanti().Close();

            }
           

        }

        protected void btn_mtemizle_Click(object sender, EventArgs e)
        {
            txt_Ad.Text = "";
            txt_dBaslik.Text = "";
            txt_icerik.Text = "";
            txt_mail.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Mesaj kısmını güncellemek için kullanılır 
            SqlCommand komut2 = new SqlCommand("Update Tbl_Mesajlar set mesajad=@p2, MesajMail= @p3, Mesajbaslik=@p4, Mesajicerik=@p5 where Mesajid = @g1 ", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p2", txt_Ad.Text);
            komut2.Parameters.AddWithValue("@p3", txt_mail.Text);
            komut2.Parameters.AddWithValue("@p4", txt_dBaslik.Text);
            komut2.Parameters.AddWithValue("@p5", txt_icerik.Text);
            komut2.Parameters.AddWithValue("@g1", id);
            pnl_gdogru.Visible = true;
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}