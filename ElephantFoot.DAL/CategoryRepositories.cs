using ElephantFoot.DAL.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ElephantFoot.DAL
{
    public class CategoryRepositories
    {
        private ElephantFootDbContext? _dbContext;

        public List<Category> GetAllCategoriesInDB()
        {
            _dbContext = new();
            return _dbContext.Categories.ToList();
        }
    }
}
