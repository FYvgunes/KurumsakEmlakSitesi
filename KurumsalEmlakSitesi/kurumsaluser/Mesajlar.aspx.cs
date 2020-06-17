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
    public partial class Mesajlar : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        string id = "";
        string islem = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            pnl_gdogru.Visible = false;
            pnl_gyanlis.Visible = false;
            id = Request.QueryString["Mesajid"];
            islem = Request.QueryString["islem"];

            //Mesajları listelemek için 
            SqlCommand komut = new SqlCommand("Select * From Tbl_Mesajlar ", bgl.baglanti());
            SqlDataReader rd = komut.ExecuteReader();
            dl_Mesajlar.DataSource = rd;
            dl_Mesajlar.DataBind();

            if(Page.IsPostBack==false)
            {
                if(islem=="sil")
                {
                    SqlCommand komut2 = new SqlCommand("Delete Tbl_Mesajlar where Mesajid=@p1", bgl.baglanti());
                    komut2.Parameters.AddWithValue("@p1", id);
                    komut2.ExecuteNonQuery();
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Mesaj eklemek için kullanılır
            SqlCommand komut = new SqlCommand("insert into Tbl_Mesajlar(MesajAd,MesajMail,MesajBaslik,Mesajicerik) values(@p1,@p2,@p3,@p4) ", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txt_Ad.Text);
            komut.Parameters.AddWithValue("@p2", txt_mail.Text);
            komut.Parameters.AddWithValue("@p3", txt_dBaslik.Text);
            komut.Parameters.AddWithValue("@p4", txt_icerik.Text);
            pnl_gdogru.Visible = true;
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}