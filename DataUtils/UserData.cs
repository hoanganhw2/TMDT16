using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using BookStore.Model;

namespace BookStore.DataUtils
{       
    public class UserData
    {
        SqlConnection con;

        public UserData()
            
        {
           con=ConectionData.Instance.getConnection();
        }

        public bool add(User user)
        {
            con.Open();
            string sql = "INSERT INTO tbluser (name, pass, fullname, email, phone, address, role) VALUES (@name, @pass, @fullname, @email, @phone, @address, @role);";

            SqlCommand cmd = new SqlCommand(sql,con);
            cmd.Parameters.AddWithValue("name",user.name);
            cmd.Parameters.AddWithValue("pass", user.pass);
            cmd.Parameters.AddWithValue("fullname", user.fullname);
            cmd.Parameters.AddWithValue("email", user.email);
            cmd.Parameters.AddWithValue("phone", user.phone);
            cmd.Parameters.AddWithValue("address", user.address);
            cmd.Parameters.AddWithValue("role", user.role);
            cmd.ExecuteNonQuery();
            con.Close();
            return true;
        }
        public bool edit(User user)
        {
           
            return true;
        }
        public bool remove(User user)
        {
          
            return true;

        }
        public User getUser(int id)
        {
           
            string sql = "select * from tbluser where id";
            User user = new User();
            return user;
        }

        

        public User getUser(string user, string pass)
        {   con.Open();
            User userLogin = null;
            string sql = "SELECT * FROM tbluser WHERE name = @tk AND pass = @mk";         
            SqlCommand cmd =  new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("tk", user);
            cmd.Parameters.AddWithValue("mk", pass);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                userLogin = new User();
                userLogin.id= (int)reader["id"];
                userLogin.name= (string)reader["name"];
                userLogin.pass = (string)reader["pass"];
            }
            con.Close();
           
            return userLogin;
        }

    }
}