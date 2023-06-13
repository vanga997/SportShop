using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace shop
{
    public partial class Providers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_menu_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminWindow.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Clients.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Products.aspx");
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            string nm = name.Text;
            int ph = int.Parse(phone.Text);
            string ad = address.Text;
            string em = email.Text;

            using (SqlConnection conn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB; Initial Catalog=sportshop; Integrated Security=True"))
            {
                conn.Open();

                using (SqlCommand cmd = new SqlCommand($"INSERT INTO Provider (NameComp, telephone, address, email) VALUES (N'{nm}', N'{ph}', N'{ad}', N'{em}')", conn))
                {
                    cmd.ExecuteNonQuery();
                    GridView1.DataBind();
                    Message.Text = "Данные добавлены!";
                }

                conn.Close();
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}