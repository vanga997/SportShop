using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shop
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminWindow.aspx");
        }

        protected void btn_next_Click(object sender, EventArgs e)
        {
            Response.Redirect("Providers.aspx");
        }

        protected void btn_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Orders.aspx");
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            string comp = name.Text;
            string assign = assignment.SelectedValue;
            string descr = description.Text;
            int ct = int.Parse(count.Text);
            double cs = double.Parse(cost.Text);
            string prov = provider.SelectedValue;

            using (SqlConnection conn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB; Initial Catalog=sportshop; Integrated Security=True"))
            {
                conn.Open();

                using (SqlCommand cmd = new SqlCommand($"INSERT INTO Product (Name, Assignment, Description, count, cost, id_provider) VALUES (N'{comp}', N'{assign}', N'{descr}', N'{ct}', N'{cs}', N'{prov}')", conn))
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