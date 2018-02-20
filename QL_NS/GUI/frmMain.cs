﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QL_NS
{
    public partial class frmMain : Form
    {
        public static bool isLogin = false;

        public frmMain()
        {
            InitializeComponent();
        }

        private void kếtXuấtDữLiệuToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void khácToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void toolStripStatusLabel1_Click(object sender, EventArgs e)
        {

        }

        private void đăngNhậpToolStripMenuItem_Click(object sender, EventArgs e)
        {
            GUI.frmLogin frm = new GUI.frmLogin();
            frm.ShowDialog();
        }

        private void frmMain_Load(object sender, EventArgs e)
        {
            if (!isLogin)
            {
                this.mnuHT_login.Visible = true;
                this.mnuHT_logout.Visible = false;
                this.Hide();
                đăngNhậpToolStripMenuItem_Click(null, null);
                
            }
            else
            {
                this.mnuHT_login.Visible = false;
                this.mnuHT_logout.Visible = true;
            }
        }

        private void mnuHT_logout_Click(object sender, EventArgs e)
        {
            frmMain.isLogin = false;
            this.frmMain_Load(null, null);
        }

        private void thoátToolStripMenuItem_Click(object sender, EventArgs e)
        {
            DialogResult ex = MessageBox.Show("Bạn có thật sự muốn thoát?", "Thoát", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (ex == DialogResult.Yes)
            {
                Application.Exit();
            }
            else
            {
                frmMain_Load(null, null);
            }
        }

        private void mnuHT_changePass_Click(object sender, EventArgs e)
        {

        }

        private void phòngBanToolStripMenuItem_Click(object sender, EventArgs e)
        {
            GUI.frmPhongBan pb = new GUI.frmPhongBan();
            pb.Show();
            //this.Hide();
        }

        private void nhânViênToolStripMenuItem_Click(object sender, EventArgs e)
        {
            GUI.frmNhanVien nv = new GUI.frmNhanVien();
            nv.Show();
        }
<<<<<<< HEAD
=======

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }
        private void frmMain_FormClosed(object sender, FormClosedEventArgs e)
        {

        }
>>>>>>> 0a1cd9ae067f2d587ba5a1897663b8de08a2c162
    }
}
