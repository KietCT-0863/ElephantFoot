using ElephantFoot.DAL;
using ElephantFoot.DAL.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ElephantFoot.BLL
{
    public class CategoryServicies
    {
        private CategoryRepositories _cateRepo = new();

        public List<Category> GetAllCategory() => _cateRepo.GetAllCategoriesInDB();
    }
}
