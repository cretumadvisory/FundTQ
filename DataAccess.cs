using System;
using System.Data;
using System.Data.SqlClient;

namespace UserDataAcess
{
    public class DataAccess

    {
        SqlConnection con = new SqlConnection(@"Data Source=PC-13\FUNDTQSQL;Initial Catalog=fundtq;Persist Security Info=True;User ID=sa;Password=password-1");

        public void insertUser(SqlParameter[]sp)
        {
            SqlCommand cmd = new SqlCommand("[dbo].[usp_insertUser]",con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddRange(sp);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

    }
}
