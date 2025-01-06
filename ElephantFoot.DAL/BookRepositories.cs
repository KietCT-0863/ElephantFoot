using ElephantFoot.DAL.Entities;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static System.Reflection.Metadata.BlobBuilder;

namespace ElephantFoot.DAL
{
    public class BookRepositories
    {
        private ElephantFootDbContext? _dbContext;

        public List<Book> GetAllBooksFromDB()
        {
            _dbContext = new();
            return _dbContext.Books.Include("Author").Include("Category").ToList();
        }

        public void AddBookToDB(Book newBook)
        {
            if (newBook == null)
            {
                return;
            }

            _dbContext = new();
            _dbContext.Books.Add(newBook);
            _dbContext.SaveChanges();
        }

        public void UpdateBookFromDb(Book book)
        {
            if (book == null)
            {
                return;
            }

            _dbContext = new();
            _dbContext.Books.Update(book);
            _dbContext.SaveChanges();
        }

        public void DeleteBookFromDB(Book book)
        {
            if (book == null)
            {
                return;
            }

            _dbContext = new();
            _dbContext.Books.Remove(book);
            _dbContext.SaveChanges();
        }
    }
}
