using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M3_database
{
    public partial class nongucianStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null || Session["usertype"].ToString() != "4")

            {
                Session["loggedIn"] = false;
                Response.Redirect("login.aspx");
            }

        String connStr = WebConfigurationManager.ConnectionStrings["Milestone3"].ToString();

        SqlConnection conn = new SqlConnection(connStr);

        int userid_h = Convert.ToInt32(Session["user"]);
        SqlCommand getallthes = new SqlCommand("liststudentongoinghelper", conn);
        getallthes.CommandType = CommandType.StoredProcedure;
            getallthes.Parameters.Add(new SqlParameter("@studentID", userid_h));
            if (conn.State == ConnectionState.Closed)
                conn.Open();
            SqlDataReader s222 = getallthes.ExecuteReader();

        GridView gridView222 = new GridView();
        gridView222.DataSource = s222;
            gridView222.DataBind();
            if (gridView222.Rows.Count==0)
            {
                Session["hasThesis"] = "0";
                addfillLabel.Attributes["class"] = "meeow2";
                addfillLabel.InnerText = "Add/fill Progress Report ";
                addfillLabel.Controls.Add(hidden_area);

                addpubLabel.Attributes["class"] = "meeow2";
                addpubLabel.InnerText = "Add Publication";
                addpubLabel.Controls.Add(hidden_area2);
                

            }
            else
            {
                hidden_area.Visible = false;
                hidden_area2.Visible = false;
                Session["hasThesis"] = "1";
            }
            conn.Close();
            }

        

       
        }
    }

        