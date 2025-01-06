using ElephantFoot.DAL.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ElephantFoot.DAL
{
    public class AuthorRepositories
    {
        private ElephantFootDbContext? _dbContext;

        public List<Author> GetAllAuthorsInDB()
        {
            _dbContext = new ();
            return _dbContext.Authors.ToList();
        }
    }
}
