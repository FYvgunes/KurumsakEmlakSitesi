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
    public partial class ProjeDetay : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            pnl_gdogru.Visible = false;
            pnl_gyanlis.Visible = false;

            id = Request.QueryString["Projeid"];
            SqlCommand komut = new SqlCommand("select * From Tbl_Projeler where Projeid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader rd = komut.ExecuteReader();
            if(rd.Read())
            {
                txt_baslik.Text = rd[1].ToString();
                txt_ozet.Text = rd[2].ToString();
                txt_icerik.Text = rd[3].ToString();

            }
            bgl.baglanti().Close();



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(txt_baslik.Text==string.Empty && txt_ozet.Text==string.Empty && txt_icerik.Text==string.Empty)
            {
                pnl_gyanlis.Visible = false;
            }
            else
            {
                //Güncelleme işlemi yapmak için kullanırız
                SqlCommand komut2 = new SqlCommand("update Tbl_projeler set ProjelerAd=@g1, ProjeOzet=@g2, Projeicerik=@g3 where Projeid=@g4", bgl.baglanti());
                komut2.Parameters.AddWithValue("@g1", txt_baslik.Text);
                komut2.Parameters.AddWithValue("@g2", txt_ozet.Text);
                komut2.Parameters.AddWithValue("@g3", txt_icerik.Text);
                komut2.Parameters.AddWithValue("@g4", id);
                pnl_gdogru.Visible = true;
                komut2.ExecuteNonQuery();
                bgl.baglanti().Close();
            }
          
                
        }
    }
}