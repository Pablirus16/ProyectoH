using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProyectoH.Datos
{
    public class Coneccion
    {
        public static SqlConnection Conectar()
        {
            SqlConnection cn = new SqlConnection ("Data Source=LAPTOP-L5PR73MD\\SQLEXPRESS;Initial Catalog=Health;Integrated Security=True");
            cn.Open();
            return cn;

        }
    }
}