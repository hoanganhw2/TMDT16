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
    public partial class TrangChu : System.Web.UI.Page
    {   CategoryData categoryData = new CategoryData();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDanhMucs();
            }
        }
        public void LoadDanhMucs()
        {
            try
            {
                List<Category> categories = categoryData.layDanhMucs();             
                Repeater1.DataSource = categories;
                DataBind();

            }
            catch (Exception ex)
            {

            }

            
        }
    }
}