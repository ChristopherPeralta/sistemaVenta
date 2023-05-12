using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using MySql.Data.MySqlClient;
using System.Data.SqlClient;
namespace DataAccess
{
    public class ConnectionToSql
    {
      
            private readonly string connectionString;
            public ConnectionToSql()
        {
            connectionString = "Server=LAPTOP-BRNLL0FS;DataBase=BDCAMILA;integrated security = true";
        }
        protected SqlConnection GetConnection()
        {
            return new SqlConnection(connectionString);
        }

        private SqlConnection conexion = new SqlConnection("Server=LAPTOP-BRNLL0FS;DataBase=BDCAMILA;integrated security = true");

        public SqlConnection abriconexion()
        {
            if (conexion.State == ConnectionState.Closed)
                conexion.Open();
            return conexion;

        }
        public SqlConnection cerrarconexion()
        {
            if (conexion.State == ConnectionState.Open)
                conexion.Close();
            return conexion;
        }







    }
}
