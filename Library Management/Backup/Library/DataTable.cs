using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Library
{
    class DataTable
    {
        private System.Data.SqlClient.SqlDataAdapter sda;

        public DataTable(System.Data.SqlClient.SqlDataAdapter sda)
        {
            // TODO: Complete member initialization
            this.sda = sda;
        }
    }
}
