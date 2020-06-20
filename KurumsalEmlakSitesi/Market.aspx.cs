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
    public partial class Markety : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();

        protected void Page_Load(object sender, EventArgs e)
        {

            //Makaleleri sıalamak için kullanılır
            SqlCommand komut = new SqlCommand("Select * From Tbl_Makaleler", bgl.baglanti());
            SqlDataReader rd = komut.ExecuteReader();
            dl_makaleler.DataSource = rd;
            dl_makaleler.DataBind();


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

        }
    }
}