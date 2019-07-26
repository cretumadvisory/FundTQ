using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo1
{
    public partial class steps : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnInfoSubmit_Click(object sender, EventArgs e)
        {
            Response.Redirect("HistData.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["years"] = txtHistoricalYears.Value;

            Response.Redirect("HistData.aspx");

        }









        //protected void ddl_primarySec_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    List<string> list_subSector = new List<string>();
        //    if (ddl_primarySec.SelectedItem.ToString().Equals("Infrastructure Development"))
        //    {
        //        list_subSector.Add("Residential");
        //        list_subSector.Add("Industrial");
        //        list_subSector.Add("Commercial,");
        //        list_subSector.Add("Roads");
        //        list_subSector.Add("Ports");
        //        list_subSector.Add("Rail");
        //        list_subSector.Add("Metro");
        //        list_subSector.Add("Airport");
        //        list_subSector.Add("Bridges");
        //        list_subSector.Add("Highway");
        //        ddl_sub.DataSource = list_subSector;
        //        ddl_sub.DataBind();
        //        ddl_sub.Enabled = true;
        //    }
        //    else if (ddl_primarySec.SelectedItem.ToString().Equals("Transport operations"))
        //    {
        //        list_subSector.Add("Rail");
        //        list_subSector.Add("Metro");
        //        list_subSector.Add("Ports");
        //        list_subSector.Add("Bus");
        //        list_subSector.Add("Airline");
        //        ddl_sub.DataSource = list_subSector;
        //        ddl_sub.DataBind();
        //    }
        //    else if (ddl_primarySec.SelectedItem.ToString().Equals("Manufacturing"))
        //    {


        //        list_subSector.Add("Aerospace and defense");
        //        list_subSector.Add("industrial machinery");
        //        list_subSector.Add("tools");
        //        list_subSector.Add("lumber production");
        //        list_subSector.Add("cement");
        //        list_subSector.Add("metal");
        //        list_subSector.Add("locomotives");
        //        list_subSector.Add("wagons");
        //        list_subSector.Add("FMCG");
        //        list_subSector.Add("any equipments");
        //        list_subSector.Add("automobile");
        //        list_subSector.Add("textile");
        //        list_subSector.Add("paper");
        //        list_subSector.Add("leather");
        //        list_subSector.Add("rubber");
        //        list_subSector.Add("silk");
        //        list_subSector.Add("electronics");
        //        list_subSector.Add("pharmaceutical");
        //        list_subSector.Add("Dairy");
        //        list_subSector.Add("Tobacco");
        //        list_subSector.Add("Cotton");
        //        list_subSector.Add("Sugar");
        //        list_subSector.Add("Tea");
        //        list_subSector.Add("Poultry");
        //        ddl_sub.DataSource = list_subSector;
        //        ddl_sub.DataBind();
        //        ddl_sub.Enabled = true;
        //    }
        //    else if (ddl_primarySec.SelectedItem.ToString().Equals("Professional Services"))
        //    {
        //        list_subSector.Add("Advertising");
        //        list_subSector.Add("Electronic");
        //        ddl_sub.DataSource = list_subSector;
        //        ddl_sub.DataBind(); ddl_sub.Enabled = true;
        //    }
        //    else if (ddl_primarySec.SelectedItem.ToString().Equals("Energy (Electricity Generation)"))
        //    {

        //        list_subSector.Add("Electricity Generation");
        //        list_subSector.Add("Electricity Distribution");
        //    }
        //    else if (ddl_primarySec.SelectedItem.ToString().Equals("Energy (Solid Waste management)"))
        //    {


        //        list_subSector.Add("Solid Waste Management");
        //    }
        //    else if (ddl_primarySec.SelectedItem.ToString().Equals("Brokerage companies"))
        //    {
        //        list_subSector.Add("Mutual funds");
        //    }
        //    else if (ddl_primarySec.SelectedItem.ToString().Equals("Commercial development"))
        //    {
        //        list_subSector.Add("Theme park");
        //        list_subSector.Add("snow park");
        //        list_subSector.Add("Movie Theatre");
        //        list_subSector.Add("Kids Zone");

        //    }
        //    else
        //    {
        //        ddl_sub.Enabled = false;
        //    }
        //    ddl_sub.DataSource = list_subSector;
        //    ddl_sub.DataBind(); ddl_sub.Enabled = true;
        //}


    }
}