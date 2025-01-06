using ElephantFoot.DAL;
using ElephantFoot.DAL.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ElephantFoot.BLL
{
    public class AuthorServices
    {
        private AuthorRepositories _authorRepo = new();

        public List<Author> GetAllAuthor() => _authorRepo.GetAllAuthorsInDB();
    }
}
