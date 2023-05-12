namespace Login
{
    partial class GUI_PRINCIPAL
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel2 = new System.Windows.Forms.Panel();
            this.btnsalir = new System.Windows.Forms.Button();
            this.panel8 = new System.Windows.Forms.Panel();
            this.btnEmpleado = new System.Windows.Forms.Button();
            this.panel6 = new System.Windows.Forms.Panel();
            this.btnProductos = new System.Windows.Forms.Button();
            this.panel4 = new System.Windows.Forms.Panel();
            this.panel3 = new System.Windows.Forms.Panel();
            this.lblPuesto_empleado = new System.Windows.Forms.Label();
            this.lblCorreo_empleado = new System.Windows.Forms.Label();
            this.lblcodigo_empleado = new System.Windows.Forms.Label();
            this.lblNombre_empleado = new System.Windows.Forms.Label();
            this.panel2.SuspendLayout();
            this.panel3.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(80)))), ((int)(((byte)(200)))));
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1043, 35);
            this.panel1.TabIndex = 0;
            this.panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.panel1_Paint);
            this.panel1.MouseDown += new System.Windows.Forms.MouseEventHandler(this.panel1_MouseDown);
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(26)))), ((int)(((byte)(32)))), ((int)(((byte)(40)))));
            this.panel2.Controls.Add(this.btnsalir);
            this.panel2.Controls.Add(this.panel8);
            this.panel2.Controls.Add(this.btnEmpleado);
            this.panel2.Controls.Add(this.panel6);
            this.panel2.Controls.Add(this.btnProductos);
            this.panel2.Controls.Add(this.panel4);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Left;
            this.panel2.Location = new System.Drawing.Point(0, 35);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(200, 627);
            this.panel2.TabIndex = 1;
            this.panel2.Paint += new System.Windows.Forms.PaintEventHandler(this.panel2_Paint);
            // 
            // btnsalir
            // 
            this.btnsalir.Location = new System.Drawing.Point(81, 434);
            this.btnsalir.Name = "btnsalir";
            this.btnsalir.Size = new System.Drawing.Size(75, 23);
            this.btnsalir.TabIndex = 7;
            this.btnsalir.Text = "Salir";
            this.btnsalir.UseVisualStyleBackColor = true;
            this.btnsalir.Click += new System.EventHandler(this.btnsalir_Click);
            // 
            // panel8
            // 
            this.panel8.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel8.Location = new System.Drawing.Point(0, 272);
            this.panel8.Name = "panel8";
            this.panel8.Size = new System.Drawing.Size(200, 80);
            this.panel8.TabIndex = 6;
            this.panel8.Paint += new System.Windows.Forms.PaintEventHandler(this.panel8_Paint);
            // 
            // btnEmpleado
            // 
            this.btnEmpleado.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnEmpleado.FlatAppearance.BorderSize = 0;
            this.btnEmpleado.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(80)))), ((int)(((byte)(200)))));
            this.btnEmpleado.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(80)))), ((int)(((byte)(200)))));
            this.btnEmpleado.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnEmpleado.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnEmpleado.Location = new System.Drawing.Point(0, 236);
            this.btnEmpleado.Name = "btnEmpleado";
            this.btnEmpleado.Size = new System.Drawing.Size(200, 36);
            this.btnEmpleado.TabIndex = 4;
            this.btnEmpleado.Text = "Empleados";
            this.btnEmpleado.UseVisualStyleBackColor = true;
            this.btnEmpleado.Click += new System.EventHandler(this.btnEmpleado_Click);
            // 
            // panel6
            // 
            this.panel6.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel6.Location = new System.Drawing.Point(0, 136);
            this.panel6.Name = "panel6";
            this.panel6.Size = new System.Drawing.Size(200, 100);
            this.panel6.TabIndex = 3;
            this.panel6.Paint += new System.Windows.Forms.PaintEventHandler(this.panel6_Paint);
            // 
            // btnProductos
            // 
            this.btnProductos.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnProductos.FlatAppearance.BorderSize = 0;
            this.btnProductos.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(80)))), ((int)(((byte)(200)))));
            this.btnProductos.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(80)))), ((int)(((byte)(200)))));
            this.btnProductos.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnProductos.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnProductos.Location = new System.Drawing.Point(0, 100);
            this.btnProductos.Name = "btnProductos";
            this.btnProductos.Size = new System.Drawing.Size(200, 36);
            this.btnProductos.TabIndex = 0;
            this.btnProductos.Text = "Productos";
            this.btnProductos.UseVisualStyleBackColor = true;
            this.btnProductos.Click += new System.EventHandler(this.btnProductos_Click);
            // 
            // panel4
            // 
            this.panel4.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel4.Location = new System.Drawing.Point(0, 0);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(200, 100);
            this.panel4.TabIndex = 1;
            // 
            // panel3
            // 
            this.panel3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(49)))), ((int)(((byte)(66)))), ((int)(((byte)(82)))));
            this.panel3.Controls.Add(this.lblPuesto_empleado);
            this.panel3.Controls.Add(this.lblCorreo_empleado);
            this.panel3.Controls.Add(this.lblcodigo_empleado);
            this.panel3.Controls.Add(this.lblNombre_empleado);
            this.panel3.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel3.Location = new System.Drawing.Point(200, 35);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(843, 627);
            this.panel3.TabIndex = 2;
            this.panel3.Paint += new System.Windows.Forms.PaintEventHandler(this.panel3_Paint);
            // 
            // lblPuesto_empleado
            // 
            this.lblPuesto_empleado.AutoSize = true;
            this.lblPuesto_empleado.Location = new System.Drawing.Point(287, 164);
            this.lblPuesto_empleado.Name = "lblPuesto_empleado";
            this.lblPuesto_empleado.Size = new System.Drawing.Size(46, 17);
            this.lblPuesto_empleado.TabIndex = 3;
            this.lblPuesto_empleado.Text = "label1";
            // 
            // lblCorreo_empleado
            // 
            this.lblCorreo_empleado.AutoSize = true;
            this.lblCorreo_empleado.Location = new System.Drawing.Point(171, 236);
            this.lblCorreo_empleado.Name = "lblCorreo_empleado";
            this.lblCorreo_empleado.Size = new System.Drawing.Size(46, 17);
            this.lblCorreo_empleado.TabIndex = 2;
            this.lblCorreo_empleado.Text = "label1";
            this.lblCorreo_empleado.Click += new System.EventHandler(this.lblCorreo_empleado_Click);
            // 
            // lblcodigo_empleado
            // 
            this.lblcodigo_empleado.AutoSize = true;
            this.lblcodigo_empleado.Location = new System.Drawing.Point(109, 179);
            this.lblcodigo_empleado.Name = "lblcodigo_empleado";
            this.lblcodigo_empleado.Size = new System.Drawing.Size(46, 17);
            this.lblcodigo_empleado.TabIndex = 1;
            this.lblcodigo_empleado.Text = "label1";
            // 
            // lblNombre_empleado
            // 
            this.lblNombre_empleado.AutoSize = true;
            this.lblNombre_empleado.Location = new System.Drawing.Point(172, 116);
            this.lblNombre_empleado.Name = "lblNombre_empleado";
            this.lblNombre_empleado.Size = new System.Drawing.Size(46, 17);
            this.lblNombre_empleado.TabIndex = 0;
            this.lblNombre_empleado.Text = "label1";
            // 
            // GUI_PRINCIPAL
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1043, 662);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "GUI_PRINCIPAL";
            this.Text = "GUI_PRINCIPAL";
            this.Load += new System.EventHandler(this.GUI_PRINCIPAL_Load);
            this.panel2.ResumeLayout(false);
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Button btnProductos;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.Panel panel6;
        private System.Windows.Forms.Button btnEmpleado;
        private System.Windows.Forms.Panel panel8;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Button btnsalir;
        private System.Windows.Forms.Label lblPuesto_empleado;
        private System.Windows.Forms.Label lblCorreo_empleado;
        private System.Windows.Forms.Label lblcodigo_empleado;
        private System.Windows.Forms.Label lblNombre_empleado;
    }
}