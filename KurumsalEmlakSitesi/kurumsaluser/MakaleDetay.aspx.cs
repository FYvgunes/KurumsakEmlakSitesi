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
    public partial class MakaleDetay : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Makaleid"];
            pnl_gdogru.Visible = false;
            pnl_gyanlis.Visible = false;

            if(Page.IsPostBack==false)
            {
                //Makaleleri textbozlaron içerisine yazma
                SqlCommand komut = new SqlCommand("Select * from Tbl_makaleler where makaleid = @p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader rd = komut.ExecuteReader();
                while (rd.Read())
                {
                    txt_dBaslik.Text = rd[1].ToString();
                    txt_ozet.Text = rd[2].ToString();
                    txt_icerik.Text = rd[3].ToString();

                }
                bgl.baglanti().Close();
            }
            




        }

        protected void btn_mtemizle_Click(object sender, EventArgs e)
        {
            txt_dBaslik.Text = "";
            txt_icerik.Text = "";
            txt_ozet.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Makaler içeriğini güncellemek için 

            SqlCommand komut = new SqlCommand("Update Tbl_Makaleler set MakaleAD=@q1,MakaleOzet=@q2,Makaleicerik=@q3 where Makaleid=@q4", bgl.baglanti());
            komut.Parameters.AddWithValue("@q1", txt_dBaslik.Text);
            komut.Parameters.AddWithValue("@q2", txt_ozet.Text);
            komut.Parameters.AddWithValue("@q3", txt_icerik.Text);
            komut.Parameters.AddWithValue("@q4", id);
            pnl_gdogru.Visible = true;
            komut.ExecuteNonQuery();

        }
    }
}