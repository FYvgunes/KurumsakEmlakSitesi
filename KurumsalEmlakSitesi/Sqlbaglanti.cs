using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace KurumsalEmlakSitesi
{
    public class Sqlbaglanti
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection("Data Source=.;Initial Catalog=Db_KurumsalEmlakSitesi;Integrated Security=True ");
            baglan.Open();
            return (baglan);
        }
    }
}