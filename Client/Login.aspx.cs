using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookStore.Client;
using BookStore.DataUtils;
using BookStore.Model;
namespace BookStore.Client
{
    public partial class Login : System.Web.UI.Page
    {
        UserData userData = new UserData();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                msg.Visible = false; 
            }
        }

        protected void DangNhap(object sender, EventArgs e)
        {
            string tk = txtUsername.Text;
            string mk = txtPassword.Text;
            User user = userData.getUser(tk,mk);
            
            if (user == null)
            {
                msg.Visible = true;
                msg.Text = "Tài khoản hoặc mật khẩu không đúng";
            }
            else
            {
                Response.Redirect("Home.aspx");
            }

        }
    }
}