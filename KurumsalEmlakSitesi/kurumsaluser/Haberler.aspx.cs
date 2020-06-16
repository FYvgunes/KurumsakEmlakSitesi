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
    public partial class Haberler : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Haberid"];
            islem = Request.QueryString["islem"];


            pnl_gdogru.Visible = false;
            pnl_gyanlis.Visible = false;

            //Haberler listesini listelemek için yapıyoruz.
            SqlCommand komut = new SqlCommand("Select *  From Tbl_haberler", bgl.baglanti());
            SqlDataReader rd = komut.ExecuteReader();
            dl_Haberler.DataSource = rd;
            dl_Haberler.DataBind();
            bgl.baglanti().Close();



            if(Page.IsPostBack==false)
            {

                //Silme işlemi gerçekleştirmek için kullanırız
                if (islem == "sil")
                {
                    SqlCommand komut2 = new SqlCommand("delete Tbl_haberler Where haberid=@p1", bgl.baglanti());
                    komut2.Parameters.AddWithValue("@p1", id);
                    komut2.ExecuteNonQuery();
                }
            }





        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txt_baslik.Text == string.Empty && txt_ozet.Text == string.Empty && txt_icerik.Text == string.Empty)
            {
                pnl_gyanlis.Visible = true;
            }
            else
            {
                //Ekleme butonuna tıkladığımızda gerçekleşecek işlemler
                fu_Dosya.SaveAs(Server.MapPath("/Hizmetr/" + fu_Dosya.FileName));
                SqlCommand komut3 = new SqlCommand("insert into Tbl_Haberler(HaberBaslik,HaberOzet,Habericerik,HaberResim) values(@p1,@p2,@p3,@p4)", bgl.baglanti());
                komut3.Parameters.AddWithValue("@p1", txt_baslik.Text);
                komut3.Parameters.AddWithValue("@p2", txt_ozet.Text);
                komut3.Parameters.AddWithValue("@p3", txt_icerik.Text);
                komut3.Parameters.AddWithValue("@p4", "~/Hizmetr/" + fu_Dosya.FileName);
                pnl_gdogru.Visible = true;
                komut3.ExecuteNonQuery();
            }

        }

        protected void btn_mtemizle_Click(object sender, EventArgs e)
        {
            txt_baslik.Text = "";
            txt_icerik.Text = "";
            txt_ozet.Text = "";
        }
    }
}