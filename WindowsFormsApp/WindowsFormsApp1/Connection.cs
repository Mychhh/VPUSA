using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using WindowsFormsApp1.Inventory;

namespace WindowsFormsApp1
{
    internal class Connection
    {   
        //SQl Declaration
        const string SQLServerLink = "Data Source=DESKTOP-83HB1MK\\SQLEXPRESS02;Initial Catalog=VAPEDB;Integrated Security=True";
        public static SqlConnection SQLconnection = new SqlConnection(SQLServerLink);
        public static SqlCommand SQLcommand;
        public static SqlDataReader SQLdatareader;
    }
}
