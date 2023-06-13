using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace shop
{
    public partial class Orders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_menu_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminWindow.aspx");
        }

        protected void btn_next_Click(object sender, EventArgs e)
        {
            Response.Redirect("Products.aspx");
        }

        protected void btn_exit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Employees.aspx");
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection("Data Source = (localdb)\\MSSQLLocalDB; Initial Catalog=sportshop; Integrated Security=True"))
            {
                conn.Open();
                int ct = int.Parse(count.Text);
                int cs = int.Parse(cost.Text); 
                int client = Convert.ToInt32(clients.SelectedValue);
                int employee = Convert.ToInt32(employees.SelectedValue);
                int product = Convert.ToInt32(products.SelectedValue);
                using (SqlCommand cmd = new SqlCommand($"INSERT INTO [Order] (count, cost, id_client, id_emp, id_prod) VALUES (N'{ct}', N'{cs}', N'{client}', N'{employee}', N'{product}')", conn))
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

        protected void clients_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void employees_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void products_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource4_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}