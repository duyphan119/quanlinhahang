using BTL.Model;
using System;
using System.Windows.Forms;

namespace BTL
{
    public partial class ChangePassword : Form
    {
        private NhanVien nv;
        private DAO.DAO_NhanVien dao_nv = new DAO.DAO_NhanVien();
        public ChangePassword(NhanVien x)
        {
            InitializeComponent();
            nv = x;
        }

        private void btnChangePassword_Click(object sender, EventArgs e)
        {
            string error = dao_nv.changePassword(nv, txtOldPassword.Text, txtNewPassword.Text, txtConfirmNewPassword.Text);
            if(error != "")
            {
                MessageBox.Show(this, error, "Lưu ý", MessageBoxButtons.OK, MessageBoxIcon.Stop);
            }
        }

        private void label4_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
