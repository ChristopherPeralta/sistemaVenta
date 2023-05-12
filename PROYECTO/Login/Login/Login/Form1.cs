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
using Domian1;
namespace Login
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }


        private void Form1_Load(object sender, EventArgs e)
        {
        
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
         
        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void textBox1_Click(object sender, EventArgs e)
        {
            textBox1.Text = "";
        }

            private void mserror ( String msg)
            {
                lblerrorusuario.Text = "  " + msg;
                lblerrorusuario.Visible = true;
            }
          
            
        

        private void textBox2_Click(object sender, EventArgs e)
        {
            textBox2.Text = "";
           
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text != "USUARIO")
            {
                if (textBox2.Text != "CONTRASEÑA") {
                    Usuario user = new Usuario();
                    var validacion = user.login(textBox1.Text, textBox2.Text);
                    if (validacion == true)
                    {
                        GUI_PRINCIPAL menu = new GUI_PRINCIPAL();
                        menu.Show();
                        menu.FormClosed += cerrarsecion;
                        this.Hide();
                    }
                    else
                    {
                        MessageBox.Show("los datos son incorrectos");
                        textBox2.Clear();
                        textBox2.Focus();
                    }
                }
                else mserror("Please Enter password");
            }
            else mserror("Please enter Username");
        }

        [DllImport("user32.dll", EntryPoint = "ReleaseCapture")]
        private extern static void ReleaseCapture();
        [DllImport("user32.dll", EntryPoint = "SendMessage")]

        private extern static void SendMessage(System.IntPtr hWnd, int wMsg, int wParam, int lParam);



        private void Form1_MouseDown(object sender, MouseEventArgs e)
        {
            ReleaseCapture();
            SendMessage(this.Handle, 0x112, 0xf012, 0);
        }

        private void panel1_MouseDown(object sender, MouseEventArgs e)
        {
            ReleaseCapture();
            SendMessage(this.Handle, 0x112, 0xf012, 0);
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
        private void cerrarsecion(object sender,FormClosedEventArgs e)
        {
            textBox1.Clear();
            textBox2.Clear();
            lblerrorusuario.Visible = false;
            this.Show();
            textBox1.Focus();
        }
    }
}
