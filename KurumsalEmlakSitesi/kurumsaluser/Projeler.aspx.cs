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
    public partial class Projeler : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            pnl_gdogru.Visible = false;
            pnl_gyanlis.Visible = false;

            id = Request.QueryString["Projeid"];
            islem = Request.QueryString["islem"];

            //Projleri listelemek içim kullanırlır.
            SqlCommand komut = new SqlCommand("Select * From Tbl_Projeler", bgl.baglanti());
            SqlDataReader rd = komut.ExecuteReader();
            dl_projeler.DataSource = rd;
            dl_projeler.DataBind();
            

            if(Page.IsPostBack==false)
            {
                if(islem == "sil")
                {
                    SqlCommand komut2 = new SqlCommand("Delete Tbl_Projeler where Projeid= @p1", bgl.baglanti());
                    komut2.Parameters.AddWithValue("@p1", id);
                    komut2.ExecuteNonQuery();
                    bgl.baglanti().Close();

                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(txt_dBaslik.Text==string.Empty && txt_ozet.Text==string.Empty && txt_icerik.Text==string.Empty)
            {
                pnl_gyanlis.Visible = true;
            }
            else
            {
                fu_Dosya.SaveAs(Server.MapPath("/Hizmetr/" + fu_Dosya.FileName));
                //Projeleri eklemek için kullanılır 
                SqlCommand komut = new SqlCommand("insert into Tbl_Projeler(ProjelerAd,ProjeOzet,Projeicerik,ProjeResim) values(@p1,@p2,@p3,@p4)", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", txt_dBaslik.Text);
                komut.Parameters.AddWithValue("@p2", txt_ozet.Text);
                komut.Parameters.AddWithValue("@p3", txt_icerik.Text);
                komut.Parameters.AddWithValue("@p4", "~/Hizmetr/" + fu_Dosya.FileName);
                pnl_gdogru.Visible = true;
                komut.ExecuteNonQuery();

            }
          
        }

        protected void btn_mtemizle_Click(object sender, EventArgs e)
        {
            txt_dBaslik.Text = "";
            txt_icerik.Text = "";
            txt_ozet.Text = "";
        }
    }
}