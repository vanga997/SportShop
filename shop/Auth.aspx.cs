using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace shop
{
    public partial class Auth : System.Web.UI.Page
    {
        static public string login;
        static public string password;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_enter_Click(object sender, EventArgs e)
        {
            login = login_text.Text;
            password = password_text.Text;

            string user_type;

            using (SqlConnection conn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB; Initial Catalog=sportshop; Integrated Security = True"))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand($"SELECT Post FROM Employee WHERE Login = '{login}' AND Password = '{password}'", conn);
                user_type = (string)cmd.ExecuteScalar();

                if (user_type == "Администратор")
                {
                    Response.Redirect("AdminWindow.aspx");
                }
                else if (user_type == "Менеджер")
                {
                    Response.Redirect("AdminWindow.aspx");
                }
                else if (login == "" && password == "")
                {
                    Response.Write("Введите логин и/или пароль!");
                }

            }
        }

    }
}