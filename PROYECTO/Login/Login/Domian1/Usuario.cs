using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccess;
using System.Data;

namespace Domian1
{
    public class Usuario
    {
        UserDao userdao = new UserDao();
        public bool login(String user, String pass)
        {
            return userdao.login(user, pass);
        }
        
    }
    public class EMPLEADO
    {
        private UserDao.CD_EMPLEADOS objetoCD = new UserDao.CD_EMPLEADOS();

        public DataTable MostrarEMPELADO()
        {
            DataTable tabla = new DataTable();
            tabla = objetoCD.Mostrar();
            return tabla;
        }
        public void InsertEmple(String cod_empleado, String nombre_empleado, String dni_empleado, String direccion_empleado,
                String telefono_emple, string cargo_emple, String estado_empleado, String email_emple, String contra_emple)
        {
            objetoCD.InsertarEmpleado(cod_empleado, nombre_empleado, dni_empleado, direccion_empleado, telefono_emple,
                cargo_emple, estado_empleado, email_emple, contra_emple);
        }
        public void editarempleado(String cod_empleado, String nombre_empleado, String dni_empleado, String direccion_empleado,
              String telefono_emple, string cargo_emple, String estado_empleado, String email_emple, String contra_emple)
        {
            objetoCD.EditarEmpleado(cod_empleado, nombre_empleado, dni_empleado, direccion_empleado, telefono_emple,
                cargo_emple, estado_empleado, email_emple, contra_emple);
        }

        public void EliminarEmpleado(String cod_empleado)
        {
            objetoCD.eliminarEmpleado(cod_empleado);
        }


    }
}