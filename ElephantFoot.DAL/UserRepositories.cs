using ElephantFoot.DAL.Entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ElephantFoot.DAL
{
    public class UserRepositories
    {
        private ElephantFootDbContext? _dbContext;

        public List<User> GetAllUsersFromDB()
        {
            _dbContext = new();
            return _dbContext.Users.Include("Order").ToList();
        }

        public void AddUserToDB(User newUser)
        {
            _dbContext = new();
            _dbContext.Users.Add(newUser);
            _dbContext.SaveChanges();
        }

        public void UpdateUserFromDB(User selectedUser)
        {
            _dbContext = new();
            _dbContext.Users.Update(selectedUser);
            _dbContext.SaveChanges();
        }

        public void RemoveUserFromDB(User selectedUser)
        {
            _dbContext = new();
            _dbContext.Users.Remove(selectedUser);
            _dbContext.SaveChanges();
        }

        public User? GetUserInDb(string email)
        {
            _dbContext = new();
            return _dbContext.Users.FirstOrDefault(x => x.Email == email);
        }
    }
}
