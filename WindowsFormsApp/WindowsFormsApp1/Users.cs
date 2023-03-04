using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WindowsFormsApp1.Cashier;
using WindowsFormsApp1.Inventory;

namespace WindowsFormsApp1
{
    internal class Users
    {
        //Login Instantiation
        public static Login login = new Login();

        //Admin side instantiation
        static InventoryRead inventoryRead = new InventoryRead();

        //Cashier side Instantiation
        public static NewTransaction newTransaction = new NewTransaction();

        public static void Login(string user_name, string user_password)
        {
            try
            {
                Connection.SQLconnection.Open();
                string loginVerifivatioQuery = "SELECT * FROM users " +
                                               "WHERE user_name = '" + user_name + "' AND user_password = '" + user_password + "' ";
                Connection.SQLcommand = new SqlCommand(loginVerifivatioQuery, Connection.SQLconnection);
                Connection.SQLdatareader = Connection.SQLcommand.ExecuteReader();

                if (Connection.SQLdatareader.Read())
                {
                    string user_type = Connection.SQLdatareader[3] + "";

                    if (user_type == "admin")
                    {
                        WindowsFormsApp1.Login.ActiveForm.Hide();
                        inventoryRead.ShowDialog();
                    }else if (user_type == "cashier")
                    {
                        WindowsFormsApp1.Login.ActiveForm.Hide();
                        newTransaction.ShowDialog();
                    }
                }
                else
                {
                    Console.WriteLine("Error");
                }

            }
            catch (Exception e)
            {
                Console.WriteLine(e);
            }
            finally
            {
                Connection.SQLconnection.Close();
            }
        }

       
    }
}
