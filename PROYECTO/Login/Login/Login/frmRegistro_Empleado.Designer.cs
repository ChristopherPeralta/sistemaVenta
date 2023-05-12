namespace Login
{
    partial class frmRegistro_Empleado
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
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.txtCodemple = new System.Windows.Forms.TextBox();
            this.txtnombreemple = new System.Windows.Forms.TextBox();
            this.txtdniemple = new System.Windows.Forms.TextBox();
            this.txtdirecemple = new System.Windows.Forms.TextBox();
            this.txttelefonoemple = new System.Windows.Forms.TextBox();
            this.txtemailemple = new System.Windows.Forms.TextBox();
            this.txtContraseña = new System.Windows.Forms.TextBox();
            this.cmdcargoemple = new System.Windows.Forms.ComboBox();
            this.cmdestadoemple = new System.Windows.Forms.ComboBox();
            this.btnAgregarEmple = new System.Windows.Forms.Button();
            this.btneditarempleado = new System.Windows.Forms.Button();
            this.btnEliminar = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.BackgroundColor = System.Drawing.Color.AliceBlue;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.GridColor = System.Drawing.SystemColors.ActiveCaption;
            this.dataGridView1.Location = new System.Drawing.Point(72, 38);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(587, 275);
            this.dataGridView1.TabIndex = 0;
            this.dataGridView1.CellFormatting += new System.Windows.Forms.DataGridViewCellFormattingEventHandler(this.dataGridView1_CellFormatting);
            // 
            // txtCodemple
            // 
            this.txtCodemple.Location = new System.Drawing.Point(768, 12);
            this.txtCodemple.Name = "txtCodemple";
            this.txtCodemple.Size = new System.Drawing.Size(100, 22);
            this.txtCodemple.TabIndex = 1;
            // 
            // txtnombreemple
            // 
            this.txtnombreemple.Location = new System.Drawing.Point(768, 65);
            this.txtnombreemple.Name = "txtnombreemple";
            this.txtnombreemple.Size = new System.Drawing.Size(100, 22);
            this.txtnombreemple.TabIndex = 2;
            // 
            // txtdniemple
            // 
            this.txtdniemple.Location = new System.Drawing.Point(768, 125);
            this.txtdniemple.Name = "txtdniemple";
            this.txtdniemple.Size = new System.Drawing.Size(100, 22);
            this.txtdniemple.TabIndex = 2;
            // 
            // txtdirecemple
            // 
            this.txtdirecemple.Location = new System.Drawing.Point(768, 191);
            this.txtdirecemple.Name = "txtdirecemple";
            this.txtdirecemple.Size = new System.Drawing.Size(100, 22);
            this.txtdirecemple.TabIndex = 2;
            // 
            // txttelefonoemple
            // 
            this.txttelefonoemple.Location = new System.Drawing.Point(768, 253);
            this.txttelefonoemple.Name = "txttelefonoemple";
            this.txttelefonoemple.Size = new System.Drawing.Size(100, 22);
            this.txttelefonoemple.TabIndex = 2;
            this.txttelefonoemple.TextChanged += new System.EventHandler(this.txttelefonoemple_TextChanged);
            // 
            // txtemailemple
            // 
            this.txtemailemple.Location = new System.Drawing.Point(768, 389);
            this.txtemailemple.Name = "txtemailemple";
            this.txtemailemple.Size = new System.Drawing.Size(100, 22);
            this.txtemailemple.TabIndex = 2;
            this.txtemailemple.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // txtContraseña
            // 
            this.txtContraseña.Location = new System.Drawing.Point(768, 444);
            this.txtContraseña.Name = "txtContraseña";
            this.txtContraseña.Size = new System.Drawing.Size(100, 22);
            this.txtContraseña.TabIndex = 2;
            this.txtContraseña.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // cmdcargoemple
            // 
            this.cmdcargoemple.FormattingEnabled = true;
            this.cmdcargoemple.Location = new System.Drawing.Point(768, 304);
            this.cmdcargoemple.Name = "cmdcargoemple";
            this.cmdcargoemple.Size = new System.Drawing.Size(121, 24);
            this.cmdcargoemple.TabIndex = 3;
            // 
            // cmdestadoemple
            // 
            this.cmdestadoemple.FormattingEnabled = true;
            this.cmdestadoemple.Location = new System.Drawing.Point(768, 346);
            this.cmdestadoemple.Name = "cmdestadoemple";
            this.cmdestadoemple.Size = new System.Drawing.Size(121, 24);
            this.cmdestadoemple.TabIndex = 4;
            this.cmdestadoemple.SelectedIndexChanged += new System.EventHandler(this.cmdestadoemple_SelectedIndexChanged);
            // 
            // btnAgregarEmple
            // 
            this.btnAgregarEmple.Location = new System.Drawing.Point(530, 407);
            this.btnAgregarEmple.Name = "btnAgregarEmple";
            this.btnAgregarEmple.Size = new System.Drawing.Size(75, 23);
            this.btnAgregarEmple.TabIndex = 5;
            this.btnAgregarEmple.Text = "Agregar";
            this.btnAgregarEmple.UseVisualStyleBackColor = true;
            this.btnAgregarEmple.Click += new System.EventHandler(this.btnAgregarEmple_Click);
            // 
            // btneditarempleado
            // 
            this.btneditarempleado.Location = new System.Drawing.Point(314, 366);
            this.btneditarempleado.Name = "btneditarempleado";
            this.btneditarempleado.Size = new System.Drawing.Size(75, 23);
            this.btneditarempleado.TabIndex = 6;
            this.btneditarempleado.Text = "Editar";
            this.btneditarempleado.UseVisualStyleBackColor = true;
            this.btneditarempleado.Click += new System.EventHandler(this.btneditarempleado_Click);
            // 
            // btnEliminar
            // 
            this.btnEliminar.Location = new System.Drawing.Point(283, 479);
            this.btnEliminar.Name = "btnEliminar";
            this.btnEliminar.Size = new System.Drawing.Size(136, 23);
            this.btnEliminar.TabIndex = 7;
            this.btnEliminar.Text = "Eliminar";
            this.btnEliminar.UseVisualStyleBackColor = true;
            this.btnEliminar.Click += new System.EventHandler(this.btnEliminar_Click);
            // 
            // frmRegistro_Empleado
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1070, 557);
            this.Controls.Add(this.btnEliminar);
            this.Controls.Add(this.btneditarempleado);
            this.Controls.Add(this.btnAgregarEmple);
            this.Controls.Add(this.cmdestadoemple);
            this.Controls.Add(this.cmdcargoemple);
            this.Controls.Add(this.txtContraseña);
            this.Controls.Add(this.txtemailemple);
            this.Controls.Add(this.txttelefonoemple);
            this.Controls.Add(this.txtdirecemple);
            this.Controls.Add(this.txtdniemple);
            this.Controls.Add(this.txtnombreemple);
            this.Controls.Add(this.txtCodemple);
            this.Controls.Add(this.dataGridView1);
            this.Name = "frmRegistro_Empleado";
            this.Text = "frmRegistro_Empleado";
            this.Load += new System.EventHandler(this.frmRegistro_Empleado_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.TextBox txtCodemple;
        private System.Windows.Forms.TextBox txtnombreemple;
        private System.Windows.Forms.TextBox txtdniemple;
        private System.Windows.Forms.TextBox txtdirecemple;
        private System.Windows.Forms.TextBox txttelefonoemple;
        private System.Windows.Forms.TextBox txtemailemple;
        private System.Windows.Forms.TextBox txtContraseña;
        private System.Windows.Forms.ComboBox cmdcargoemple;
        private System.Windows.Forms.ComboBox cmdestadoemple;
        private System.Windows.Forms.Button btnAgregarEmple;
        private System.Windows.Forms.Button btneditarempleado;
        private System.Windows.Forms.Button btnEliminar;
    }
}