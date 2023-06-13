using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace shop
{
    public partial class Clients : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            surname.Text = GridView1.SelectedRow.Cells[2].Text;
            name.Text = GridView1.SelectedRow.Cells[3].Text;
            lastname.Text = GridView1.SelectedRow.Cells[4].Text;
            birthdate.Text = GridView1.SelectedRow.Cells[5].Text;
            email.Text = GridView1.SelectedRow.Cells[6].Text;
            address.Text = GridView1.SelectedRow.Cells[7].Text;
            phone.Text = GridView1.SelectedRow.Cells[8].Text;

        }

        protected void btn_add_Click1(object sender, EventArgs e)
        {
            string sur = surname.Text;
            string nm = name.Text;
            string ln = lastname.Text;
            string bd = birthdate.Text;
            string em = email.Text;
            string ad = address.Text;
            long ph = int.Parse(phone.Text);
            using (SqlConnection conn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB; Initial Catalog=sportshop; Integrated Security=True"))
            {
                conn.Open();

                using (SqlCommand cmd = new SqlCommand($"INSERT INTO Client (Surname, Name, LastName, BirthDate, email, address, phone) VALUES (N'{sur}', N'{nm}', N'{ln}', N'{bd}', N'{em}', N'{ad}', N'{ph}')", conn))
                {
                    cmd.ExecuteNonQuery();
                    GridView1.DataBind();
                    Message.Text = "Данные добавлены!";
                }
                
                conn.Close();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void btn_menu_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminWindow.aspx");
        }

        protected void btn_next_Click(object sender, EventArgs e)
        {
            Response.Redirect("Employees.aspx");
        }

        protected void btn_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Providers.aspx");
        }
    }
}