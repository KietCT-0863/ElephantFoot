using ElephantFoot.DAL;
using ElephantFoot.DAL.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Metadata.Ecma335;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace ElephantFoot.BLL
{
    public class UserServices
    {
        private UserRepositories _userRepo = new();
        private User? _currentUser = new();

        public List<User> GetAllUsers() => _userRepo.GetAllUsersFromDB();

        //public User? Authentication(string email, string password)
        //{
        //    _currentUser = _userRepo.GetUserInDb(email);

        //    if (_currentUser == null)
        //    {
        //        return null;
        //    }

        //    if (_currentUser.Password != password)
        //    {
        //        _currentUser.Password = "";
        //        return _currentUser;
        //    }

        //    return _currentUser;
        //}

        //public bool IsAvailable()
        //{
        //    if (_currentUser == null || _currentUser.Available == false)
        //    {
        //        return false;
        //    }

        //    return true;
        //}

        public User? GetUser(string email) => _userRepo.GetUserInDb(email);

        public void CreateNewUser(User newUser) => _userRepo.AddUserToDB(newUser);

        public void UpdateUser(User User) => _userRepo.UpdateUserFromDB(User);

        public bool IsValidUserName(string userName)
        {
            if (string.IsNullOrWhiteSpace(userName))
                return false;

            string namePattern = "^[a-zA-Z ]{5,15}$";
            Regex regex = new(namePattern);
            return regex.IsMatch(userName);
        }

        public bool IsValidEmail(string email)
        {
            string emailPattern = @"^(?(""?[\w\s-]+"")|[\w.%+-]+)@([a-zA-Z0-9.-]+)\.[a-zA-Z]{2,}$";
            Regex regex = new Regex(emailPattern);
            return regex.IsMatch(email);
        }

        public bool IsValidPassword(string password)
        {
            string passwordPattern = @"^(?=.*[A-Za-z])(?=.*\d)(?=.*[!@#$%^&*()_+{}\[\]:;<>,.?~\\/-])[A-Za-z\d!@#$%^&*()_+{}\[\]:;<>,.?~\\/-]{8,}$";
            Regex regex = new Regex(passwordPattern);
            return regex.IsMatch(password);
        }

        public bool IsExistEmail(string email)
        {
            if (_userRepo.GetUserInDb(email) == null)
            {
                return false;
            }

            return true;
        }
    }
}
