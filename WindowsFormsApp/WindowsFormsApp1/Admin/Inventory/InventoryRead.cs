using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1.Inventory
{
    public partial class InventoryRead : Form
    {
        public InventoryRead()
        {
            InitializeComponent();
        }

        private void btn_logout_Click_1(object sender, EventArgs e)
        {
            this.Close();
            Users.login.Show();
        }

        private void Header_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
