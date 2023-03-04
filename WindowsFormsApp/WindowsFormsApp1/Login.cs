using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }

        private void Login_Load(object sender, EventArgs e)
        {

        }

        private void btn_exit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
         
        private void btn_login_Click(object sender, EventArgs e)
        {
            Users.Login(txt_box_username.Text.ToString(), txt_box_password.Text.ToString());
        }

        private void btn_showhide_Click(object sender, EventArgs e)
        {
            if (txt_box_password.UseSystemPasswordChar == true)
            {
                btn_showhide.Image = Properties.Resources.show;
                txt_box_password.UseSystemPasswordChar = false;
            }
            else if (txt_box_password.UseSystemPasswordChar == false)
            {
                btn_showhide.Image = Properties.Resources.hide;
                txt_box_password.UseSystemPasswordChar = true;
            }
        }
    }
}
