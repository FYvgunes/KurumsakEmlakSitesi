using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace KurumsalEmlakSitesi
{
    public partial class Default : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            //hizmetleri sıralamak için kullanılır
            SqlCommand komut = new SqlCommand("Select * From Tbl_Servisler", bgl.baglanti());
            SqlDataReader rd = komut.ExecuteReader();
            dl_Hizmetler.DataSource = rd;
            dl_Hizmetler.DataBind();

            //Haberleri listelemel içim kullanılır
            SqlCommand komut1 = new SqlCommand("Select * from Tbl_Haberler", bgl.baglanti());
            SqlDataReader rd1 = komut1.ExecuteReader();
            dl_haberler.DataSource = rd1;
            dl_haberler.DataBind();

            //Projeleri Listelemek için kullanılır
            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Projeler", bgl.baglanti());
            SqlDataReader rd2 = komut2.ExecuteReader();
            dl_projeler.DataSource = rd2;
            dl_projeler.DataBind();
        }
    }
}