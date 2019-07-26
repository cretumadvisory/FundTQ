using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo1
{
    public partial class Land : System.Web.UI.Page
    {
        UserDataModel.User obj_user = new UserDataModel.User();
        UserBusiness.UserBusiness obj_business = new UserBusiness.UserBusiness();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            obj_user.Email = txtEmail.Value;
            obj_user.Password = txtPassword.Value;
            obj_user.FirstName = txtFirstName.Value;
            obj_user.LastName = txtLastName.Value;
          //  try
          //  {
                int result = obj_business.AddUser(obj_user);
                Response.Redirect("steps.aspx");
          //  }
            //catch (Exception)
            //{
            //    Response.Redirect("https://i.ytimg.com/vi/x9mGRTaD_00/maxresdefault.jpg");

            //}

            

        }
    }
}