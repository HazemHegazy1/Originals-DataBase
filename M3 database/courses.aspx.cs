using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M3_database
{
    public partial class courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((String)Session["hasThesis"] == "0")
            {
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
            }


            if (Session["user"] == null || Session["usertype"].ToString()!="4")
            {
                Session["loggedin"] = false;
                Response.Redirect("login.aspx");
            }
        }
    }
}