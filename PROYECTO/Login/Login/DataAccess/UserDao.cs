using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Data;
using ClassLibrary2.Cache;
using System.Data.SqlClient;
using DataAccess;

namespace DataAccess
{
    public class UserDao:ConnectionToSql
    {
        public bool login(String user, String pass)
        {
            using ( var connection = GetConnection())
            {
                connection.Open();
                using ( var command = new SqlCommand())
                {
                    command.Connection = connection;
                    command.CommandText = "select * from EMPLEADO Where email_empleado=@email and contraseña_empleado=@pass";
                    command.Parameters.AddWithValue("@email", user);
                    command.Parameters.AddWithValue("@pass", pass);
                    command.CommandType = CommandType.Text;
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            Cache_usuario.idempelado = reader.GetString(0);
                            Cache_usuario.nombre_empleado = reader.GetString(1);
                            Cache_usuario.puesto_empleado = reader.GetString(5);
                            Cache_usuario.email_empleado = reader.GetString(7);

                        }
                        return true;
                    }
                    else
                    {
                        return false;

                    }

                }
            }
        }
        public class CD_EMPLEADOS
        {


            private ConnectionToSql conexion = new ConnectionToSql();

            SqlDataReader leer;
            DataTable tabla = new DataTable();
            SqlCommand comando = new SqlCommand();

            public DataTable Mostrar()
            {
                comando.Connection = conexion.abriconexion();
                comando.CommandText = "MostrarEmpleado ";
                comando.CommandType = CommandType.StoredProcedure;
                leer = comando.ExecuteReader();
                tabla.Load(leer);
                return tabla;

            }

            public void InsertarEmpleado(String cod_empleado, String nombre_empleado, String dni_empleado, String direccion_empleado,
                String telefono_emple, string cargo_emple, String estado_empleado, String email_emple, String contra_emple)
            {
                comando.Connection = conexion.abriconexion();
                ////comando.CommandText = "insert INTO EMPLEADO VALUES('" + cod_empleado + "','" + nombre_empleado + "','" + dni_empleado + "','" + direccion_empleado + "','" + telefono_emple + "','" 
                ////    + cargo_emple + "','" + estado_empleado + "','" + email_emple + "','" + contra_emple + "')";
                comando.CommandText = "insertarEmpleado";
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.AddWithValue("@codempleado", cod_empleado);
                comando.Parameters.AddWithValue("@nombre_empleaod", nombre_empleado);
                comando.Parameters.AddWithValue("@dniempleado", dni_empleado);
                comando.Parameters.AddWithValue("@direccempleado", direccion_empleado);
                comando.Parameters.AddWithValue("@telefonoempleado", telefono_emple);
                comando.Parameters.AddWithValue("@cargoemple", cargo_emple);
                comando.Parameters.AddWithValue("@estadoemple", estado_empleado);
                comando.Parameters.AddWithValue("@emailemple", email_emple);
                comando.Parameters.AddWithValue("@contraemple", contra_emple);
                comando.ExecuteNonQuery();
                comando.Parameters.Clear();
            }
            public void EditarEmpleado(String cod_empleado, String nombre_empleado, String dni_empleado, String direccion_empleado,
                String telefono_emple, string cargo_emple, String estado_empleado, String email_emple, String contra_emple)
            {
                comando.Connection = conexion.abriconexion();
                comando.CommandText = "editarempleado";
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.AddWithValue("@codempleado", cod_empleado);
                comando.Parameters.AddWithValue("@nombre_empleaod", nombre_empleado);
                comando.Parameters.AddWithValue("@dniempleado", dni_empleado);
                comando.Parameters.AddWithValue("@direccempleado", direccion_empleado);
                comando.Parameters.AddWithValue("@telefonoempleado", telefono_emple);
                comando.Parameters.AddWithValue("@cargoemple", cargo_emple);
                comando.Parameters.AddWithValue("@estadoemple", estado_empleado);
                comando.Parameters.AddWithValue("@emailemple", email_emple);
                comando.Parameters.AddWithValue("@contraemple", contra_emple);
                comando.ExecuteNonQuery();
                comando.Parameters.Clear();

            }
            public void eliminarEmpleado(String cod_empleado)
            {
                comando.Connection = conexion.abriconexion();
                comando.CommandText = "eliminarempleado";
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.AddWithValue("@cod_emleado", cod_empleado);
                comando.ExecuteNonQuery();
                comando.Parameters.Clear();

            }


        }
    }
}
