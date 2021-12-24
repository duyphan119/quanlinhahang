using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BTL.Model;
using Guna.UI2.WinForms;

namespace BTL
{
    public partial class DangNhap : Form
    {
        private DAO.DAO_NhanVien dao_nv = new DAO.DAO_NhanVien();
        public DangNhap()
        {
            InitializeComponent();
        }

        private void DangNhap_Load(object sender, EventArgs e)
        {
            
            
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            login();
        }

        private void lblExit_Click(object sender, EventArgs e)
        {
            Close();
        }

        public void login()
        {
            NhanVien nv = dao_nv.login(txtID.Text, txtPassword.Text);

            if (nv != null)
            {
                new F_TrangChu(this, nv).Visible = true;
                txtID.Text = txtPassword.Text = "";
                Visible = false;
            }
            else
            {
                MessageDialog.Show("Mã nhân viên hoặc mật khẩu không chính xác", "Lỗi", MessageDialogButtons.OK, MessageDialogIcon.Error, MessageDialogStyle.Dark);
            }
        }

        private void picToggleViewPassword_Click(object sender, EventArgs e)
        {
            if (txtPassword.UseSystemPasswordChar == true)
            {
                picToggleViewPassword.Image = Image.FromFile(@"../../public/img/visibility.png");
            }
            else
            {
                picToggleViewPassword.Image = Image.FromFile(@"../../public/img/view.png");
            }
            txtPassword.UseSystemPasswordChar = !txtPassword.UseSystemPasswordChar;
        }

        private void txtPassword_KeyPress(object sender, KeyPressEventArgs e)
        {
            if(e.KeyChar == (char)13)
            {
                login();
            }
        }

        private void txtID_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (char)13)
            {
                login();
            }
        }
    }
}
