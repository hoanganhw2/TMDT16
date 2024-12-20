using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
namespace BookStore.Model
{
    public class User
    {
        public int id { get; set; }
        public string name { get; set; }
        public string pass { get; set; } 
        public string fullname { get; set; }
        public string email { get; set; }
        public string phone { get; set; }
        public string address { get; set; }
        public int role { get; set; }

    }

    
}