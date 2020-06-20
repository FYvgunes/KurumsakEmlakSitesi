using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace KurumsalEmlakSitesi
{
    public partial class iletisim : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Hizmetleri sıralamak için kullanılır 
            SqlCommand komut2 = new SqlCommand("Select * From Tbl_Servisler", bgl.baglanti());
            SqlDataReader rd2 = komut2.ExecuteReader();
            dl_Hizmetler.DataSource = rd2;
            dl_Hizmetler.DataBind();


            //Projeler için kulllanılır 
            SqlCommand komut3 = new SqlCommand("Select * From Tbl_Projeler", bgl.baglanti());
            SqlDataReader rd3 = komut3.ExecuteReader();
            dl_projeler.DataSource = rd3;
            dl_projeler.DataBind();

            //Haberleri listelemel içim kullanılır
            SqlCommand komut1 = new SqlCommand("Select * from Tbl_Haberler", bgl.baglanti());
            SqlDataReader rd1 = komut1.ExecuteReader();
            dl_haberler.DataSource = rd1;
            dl_haberler.DataBind();
        }

        protected void btn_gonder_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Mesajlar(MesajAd,MesajMail,Mesajicerik) values(@p1,@p2,@p3)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txt_ad.Text);
            komut.Parameters.AddWithValue("@p2", txt_mail.Text);
            komut.Parameters.AddWithValue("@p3", txt_icerik.Text);
            Label4.Visible = true;
            Label4.Text = "Kayıt Gerçekleştirildi";
            komut.ExecuteNonQuery();

        }
    }
}