using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Domian1;

namespace Login
{
    public partial class frmRegistro_Empleado : Form
    {
        EMPLEADO onjetoCN = new EMPLEADO();
        private bool editar = false;

        public frmRegistro_Empleado()
        {
            InitializeComponent();
        }

        private void frmRegistro_Empleado_Load(object sender, EventArgs e)
        {
            mostrarEmpleado();
            agregarcombo();
        }

        private void mostrarEmpleado()
        {
            EMPLEADO onjeto = new EMPLEADO();
            dataGridView1.DataSource = onjeto.MostrarEMPELADO();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void txttelefonoemple_TextChanged(object sender, EventArgs e)
        {

        }

        private void btnAgregarEmple_Click(object sender, EventArgs e)
        {
            if (editar == false)
            {


                try
                {
                    onjetoCN.InsertEmple(txtCodemple.Text, txtnombreemple.Text, txtdniemple.Text, txtdirecemple.Text, txttelefonoemple.Text,
                        cmdcargoemple.Text, cmdestadoemple.Text, txtemailemple.Text, txtContraseña.Text);
                    MessageBox.Show("Se añadio un nuevo usuario");
                    mostrarEmpleado();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("no se pudo insertar los datos por: " + ex);
                }
            }
            if (editar == true)
            {
                try
                {
                    onjetoCN.editarempleado(txtCodemple.Text, txtnombreemple.Text, txtdniemple.Text, txtdirecemple.Text, txttelefonoemple.Text,
                        cmdcargoemple.Text, cmdestadoemple.Text, txtemailemple.Text, txtContraseña.Text);
                    MessageBox.Show("se edito correctamente");
                    mostrarEmpleado();
                    limpiarfor();
                    editar = false;
                }
                catch (Exception ex)
                {
                    MessageBox.Show("no se pudo editar los datos por: " + ex);
                }
            }
        }

        private void btneditarempleado_Click(object sender, EventArgs e)
        {
            if (dataGridView1.SelectedRows.Count > 0)
            {
                editar = true;
                txtCodemple.Text = dataGridView1.CurrentRow.Cells["codigo_empleado"].Value.ToString();
                txtnombreemple.Text = dataGridView1.CurrentRow.Cells["nombre_empleado"].Value.ToString();
                txtdniemple.Text = dataGridView1.CurrentRow.Cells["dni_empleado"].Value.ToString();
                txtdirecemple.Text = dataGridView1.CurrentRow.Cells["dirección_empleador"].Value.ToString();
                txttelefonoemple.Text = dataGridView1.CurrentRow.Cells["telefono_empleado"].Value.ToString();
                cmdcargoemple.Text = dataGridView1.CurrentRow.Cells["cargo_empleado"].Value.ToString();
                cmdestadoemple.Text= dataGridView1.CurrentRow.Cells["estado"].Value.ToString();
                txtemailemple.Text = dataGridView1.CurrentRow.Cells["email_empleado"].Value.ToString();
                txtContraseña.Text = dataGridView1.CurrentRow.Cells["contraseña_empleado"].Value.ToString();
            }
            else
            {
                MessageBox.Show("selecciona una fila");
            }

           
        }
        private void limpiarfor()
        {
            txtCodemple.Clear();
            txtContraseña.Clear();
            txtdirecemple.Clear();
            txtdniemple.Clear();
            txtemailemple.Clear();
            txtnombreemple.Clear();
            txttelefonoemple.Clear();

        }
        private void agregarcombo()
        {
            cmdcargoemple.Items.Add("Administrador");
            cmdcargoemple.Items.Add("Compras");
            cmdcargoemple.Items.Add("Ventas");
            cmdcargoemple.Items.Add("almacen");
            cmdestadoemple.Items.Add("ACTIVO");
            cmdestadoemple.Items.Add("INACTIVO");
        }
        //private void elimiarcombo()
        //{
        //    cmdcargoemple.Items.Clear();
        //    cmdestadoemple.Items.Clear();
        //}

        private void cmdestadoemple_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            if (dataGridView1.SelectedRows.Count > 0)
            {
              
                txtCodemple.Text = dataGridView1.CurrentRow.Cells["codigo_empleado"].Value.ToString();
                onjetoCN.EliminarEmpleado(txtCodemple.Text);
                MessageBox.Show("Eliminado Correctamente");
                mostrarEmpleado();

             
            }
            else
            {
                MessageBox.Show("selecciona una fila");
            }

        }

        private void dataGridView1_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            if(this.dataGridView1.Columns[e.ColumnIndex].Name == "estado")
            {
                if (Convert.ToString(e.Value) == "ACTIVO")
                {
                    e.CellStyle.ForeColor = Color.Green;
                    e.CellStyle.BackColor = Color.Orange;
                }
                else if(Convert.ToString(e.Value) == "INACTIVO")
                    {
                        e.CellStyle.ForeColor = Color.Red;
                        e.CellStyle.BackColor = Color.Gray;
                    }
                    
                
            }
        }
    }
}
