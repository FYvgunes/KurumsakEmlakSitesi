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
    public partial class Hizmetler : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        string hizmetid = "";
        string islem = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            hizmetid = Request.QueryString["Servislerid"];
            islem = Request.QueryString["islem"];
            pnl_gdogru.Visible = false;
            pnl_gyanlis.Visible = false;
            //hizmetler panelindeli üeürnleri gürntülemek için kullanılır
            SqlCommand hizmet_tekrar = new SqlCommand("select * from Tbl_Servisler", bgl.baglanti());
            SqlDataReader rd2 = hizmet_tekrar.ExecuteReader();
            dl_hizmetler.DataSource = rd2;
            dl_hizmetler.DataBind();
            bgl.baglanti().Close();
            if(Page.IsPostBack==false)
            {
                //Silme işlemini gerçekleştirmek için kullanılır 
                if (islem == "sil")
                {
                    SqlCommand komuut3 = new SqlCommand("delete tbl_Servisler where Servislerid=@p1", bgl.baglanti());
                    komuut3.Parameters.AddWithValue("@p1", hizmetid);
                    komuut3.ExecuteNonQuery();
                }
            }
           
           

         


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(txt_dBaslik.Text==string.Empty && txt_seoice.Text==string.Empty && txt_icerik.Text==string.Empty)
            {
                pnl_gyanlis.Visible = true;
            }
            else
            {

                fu_dosya.SaveAs(Server.MapPath("/Hizmetr/" + fu_dosya.FileName));

                SqlCommand komut = new SqlCommand("insert into tbl_servisler(servislerAD,ServislerOzet,Servislericerik,ServislerResim) values(@p1, @p2,@p3,@f1)", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", txt_dBaslik.Text);
                komut.Parameters.AddWithValue("@p2", txt_seoice.Text);
                komut.Parameters.AddWithValue("@p3", txt_icerik.Text);
                komut.Parameters.AddWithValue("@f1", "~/Hizmetr/" + fu_dosya.FileName);
                pnl_gdogru.Visible = true;
                komut.ExecuteNonQuery();
            }
          
            
            
        }

        protected void btn_mtemizle_Click(object sender, EventArgs e)
        {
            txt_icerik.Text = "";
            txt_dBaslik.Text = "";
            txt_seoice.Text = "";
            
        }
    }
}