using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shop
{
    public partial class MainWindow : System.Web.UI.Page
    {
        string login = Auth.login.ToString();
        string password = Auth.password.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            string user_type;

            using (SqlConnection conn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB; Initial Catalog=sportshop; Integrated Security=True;"))
            {
                conn.Open();

                using (SqlCommand cmd = new SqlCommand($"SELECT Surname, Name, LastName FROM Employee WHERE Login='{login}' AND Password='{password}'", conn))
                {
                    using (var rd = cmd.ExecuteReader())
                    {
                        if (rd.Read())
                        {
                            user_name.Text = ($"{rd.GetValue(0).ToString()}" + ' ' + $"{rd.GetValue(1).ToString()}" + ' ' + $"{rd.GetValue(2).ToString()}");
                        }
                    }
                }
            }


            using (SqlConnection conn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB; Initial Catalog=sportshop; Integrated Security=True;"))
            {
                conn.Open();

                using (SqlCommand cmd = new SqlCommand($"SELECT Post FROM Employee WHERE Login='{login}' AND Password='{password}'", conn))
                {
                    user_type = (string)cmd.ExecuteScalar();

                    if (user_type == "Администратор")
                    {
                        adm_name.Text = "Администратор";
                    }
                    else if (user_type == "Менеджер")
                    {
                        adm_name.Text = "Менеджер";
                        btn_prov.Visible = false;
                        btn_employee.Visible = false;

                    }
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btn_client_Click(object sender, EventArgs e)
        {
            Response.Redirect("Clients.aspx");
        }

        protected void btn_order_Click(object sender, EventArgs e)
        {
            Response.Redirect("Orders.aspx");
        }

        protected void btn_employee_Click(object sender, EventArgs e)
        {
            Response.Redirect("Employees.aspx");
        }

        protected void btn_product_Click(object sender, EventArgs e)
        {
            Response.Redirect("Products.aspx");
        }

        protected void btn_prov_Click(object sender, EventArgs e)
        {
            Response.Redirect("Providers.aspx");
        }

        protected void btn_exit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Auth.aspx");
        }
    }
}