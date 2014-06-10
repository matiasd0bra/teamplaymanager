using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace TPM.DAL
{
    public class HelperDal
    {
        public static string GetConnection()
        {
            return ConfigurationManager.ConnectionStrings["tmpConnectionString"].ConnectionString;
        }
    }
}