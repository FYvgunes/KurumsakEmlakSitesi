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
    public partial class Makaleler : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        string id = "";
        string islem = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            //Panelleri kontrol etmek için kullandığımız kodlar
            pnl_gdogru.Visible = false;
            pnl_gyanlis.Visible = false;

            id = Request.QueryString["Makaleid"];
            islem = Request.QueryString["islem"];

            SqlCommand komut = new SqlCommand("Select * From tbl_makaleler", bgl.baglanti());
            SqlDataReader rd = komut.ExecuteReader();
            dl_makaleler.DataSource = rd;
            dl_makaleler.DataBind();



            //Silem işlemini gerçekleştirmek için yaparız

            if(Page.IsPostBack==false)
            {
                if(islem=="sil")
                {
                    SqlCommand komut2 = new SqlCommand("Delete Tbl_makaleler where makaleid=@p1", bgl.baglanti());
                    komut2.Parameters.AddWithValue("@p1", id);
                    komut2.ExecuteNonQuery();
                   
                }
            }


        }

        protected void btn_mtemizle_Click(object sender, EventArgs e)
        {
            txt_dBaslik.Text = "";
            txt_seoice.Text = "";
            txt_icerik.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            fu_Dosya.SaveAs(Server.MapPath("/Hizmetr/" + fu_Dosya.FileName));
            //Ekleme işlemini gerçekleştirmek için kullanılır 
            SqlCommand komut = new SqlCommand("insert into Tbl_makaleler(MakaleAD,MakaleOzet,Makaleicerik,MakaleResim) values(@t1,@t2,@t3,@t4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@t1", txt_dBaslik.Text);
            komut.Parameters.AddWithValue("@t2", txt_seoice.Text);
            komut.Parameters.AddWithValue("@t3", txt_icerik.Text);
            komut.Parameters.AddWithValue("@t4", "~/Hizmetr" + fu_Dosya.FileName);
            pnl_gdogru.Visible = true;
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}