using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Runtime.InteropServices;
using ClassLibrary2.Cache;
namespace Login
{
    public partial class GUI_PRINCIPAL : Form
    {
        public GUI_PRINCIPAL()
        {
            InitializeComponent();

        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void btnProductos_Click(object sender, EventArgs e)
        {

        }

        private void panel3_Paint(object sender, PaintEventArgs e)
        {

        }

        [DllImport("user32.dll", EntryPoint = "ReleaseCapture")]
        private extern static void ReleaseCapture();
        [DllImport("user32.dll", EntryPoint = "SendMessage")]

        private extern static void SendMessage(System.IntPtr hWnd, int wMsg, int wParam, int lParam);


        private void panel5_Paint(object sender, PaintEventArgs e)
        {

        }

        private void panel6_Paint(object sender, PaintEventArgs e)
        {

        }


        private void panel8_Paint(object sender, PaintEventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {
        }

        private void panel1_MouseDown(object sender, MouseEventArgs e)
        {
            ReleaseCapture();
            SendMessage(this.Handle, 0x112, 0xf012, 0);
        }

        private void btnsalir_Click(object sender, EventArgs e)
        {
            this.Close();


        }

        private void lblCorreo_empleado_Click(object sender, EventArgs e)
        {

        }
        private void datos_empleado()
        {
            lblcodigo_empleado.Text = Cache_usuario.idempelado;
            lblNombre_empleado.Text = Cache_usuario.nombre_empleado;
            lblCorreo_empleado.Text = Cache_usuario.email_empleado;
            lblPuesto_empleado.Text = Cache_usuario.puesto_empleado;
        }

        private void GUI_PRINCIPAL_Load(object sender, EventArgs e)
        {
            datos_empleado();
        }

        private void btnEmpleado_Click(object sender, EventArgs e)
        {
            abrirformhija(new frmRegistro_Empleado());
        }

        private void abrirformhija(object formhija)
        {
            if (this.panel3.Controls.Count > 0)
                this.panel3.Controls.RemoveAt(0);
            Form fh = formhija as Form;
            fh.TopLevel = false;
            fh.Dock = DockStyle.Fill;
            this.panel3.Controls.Add(fh);
            this.panel3.Tag = fh;
            fh.Show();
        }

    }
}
