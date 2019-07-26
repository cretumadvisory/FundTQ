using System;
using System.Data;
using System.Data.SqlClient;

namespace UserBusiness
{
    public class UserBusiness
    {
        UserDataAcess.DataAccess obj_dataAccess = new UserDataAcess.DataAccess();
        
        public int AddUser(UserDataModel.User obj_usermodel)
        {
            SqlParameter[] sp = new SqlParameter[5];
            int result=0;
       
            sp[0] = new SqlParameter("@email", obj_usermodel.Email);
            sp[1] = new SqlParameter("@password", obj_usermodel.Password);
            sp[2] = new SqlParameter("@firstName", obj_usermodel.FirstName);
            sp[3] = new SqlParameter("@lastName", obj_usermodel.LastName);
            sp[4] = new SqlParameter("@id", result);
            sp[4].Direction = ParameterDirection.Output;

            obj_dataAccess.insertUser(sp);
            result = int.Parse(sp[4].Value.ToString());
            return result;

        }
    }
}
