using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace shop
{
    public partial class Employees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            string sur = surname.Text;
            string n = name.Text;
            string ln = lastname.Text;
            string p = post_list.SelectedValue;
            string log = login.Text;
            string pas = password.Text;

            using (SqlConnection conn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB; Initial Catalog=sportshop; Integrated Security=True"))
            {
                conn.Open();

                using (SqlCommand cmd = new SqlCommand($"INSERT INTO Employee (Surname, Name, LastName, Post, Login, Password) VALUES (N'{sur}', N'{n}', N'{ln}', N'{p}', N'{log}', N'{pas}')", conn))
                {
                    cmd.ExecuteNonQuery();
                    GridView1.DataBind();
                    Message.Text = "Данные добавлены!";
                }

                conn.Close();
            }
        }

        protected void btn_menu_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminWindow.aspx");
        }

        protected void btn_next_Click(object sender, EventArgs e)
        {
            Response.Redirect("Orders.aspx");
        }

        protected void btn_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Clients.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void post_list_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}