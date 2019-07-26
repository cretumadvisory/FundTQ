using System;

namespace UserDataModel
{
    public class User
    {
        private string email;
        private string password;
        string firstName;
        string lastName;
        public string Email { get => email; set => email = value; }
        public string Password { get => password; set => password = value; }
        public string FirstName { get => firstName; set => firstName = value; }
        public string LastName { get => lastName; set => lastName = value; }

    }
}
