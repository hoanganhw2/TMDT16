using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BookStore.DataUtils
{
    public class ConectionData
    {
        private static ConectionData instance;
        private SqlConnection conn;
        private static readonly object _lock = new object();
        public ConectionData()
        {
            string sqlCon = @"Data Source=phihoanganh;Initial Catalog=BookStore;Integrated Security=True";
            conn = new SqlConnection(sqlCon);
        }
        public static ConectionData Instance
        {
            get
            {
                if (instance == null)
                {
                    lock (_lock) 
                    {
                        if (instance == null)
                        {
                            instance = new ConectionData();
                        }
                    }
                }
                return instance;
            }
        }
        public SqlConnection getConnection()
        {
            return conn;
        }
    }
}