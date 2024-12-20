using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookStore.DataUtils;
using BookStore.Model;

namespace BookStore.Client
{
    public partial class Register : System.Web.UI.Page
    {
        UserData userData = new UserData();
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        public void DangKy(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            string fullname = txtFullName.Text;
            string email = txtEmail.Text;
            string phone = txtPhone.Text;
            string address = txtAddress.Text;
            User user = new User();
            user.name = username;
            user.pass = password;
            user.fullname = fullname;
            user.email = email;
            user.phone = phone;
            user.address = address;
            user.role = 2;
            if (userData.add(user)){

                Response.Redirect("Login.aspx");
            }
           

        }

        
    }
}