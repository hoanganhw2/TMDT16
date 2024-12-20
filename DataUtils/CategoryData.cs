using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

using BookStore.Model;
namespace BookStore.DataUtils
{

    public class CategoryData
    {
       

        public CategoryData()
        {
            
        }
        public List<Category> layDanhMucs()
        {   
            List<Category> list = new List<Category>();
            using (SqlConnection con = ConectionData.Instance.getConnection())
            {
                con.Open();
                string sql = "select * from tblcategory ";
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Category category = new Category();
                    category.id = (int)reader["id"];
                    category.name = (string)reader["name"];
                    category.image = (string)reader["image"];
                    list.Add(category);
                }


                return list;
            }
        }
    }

}