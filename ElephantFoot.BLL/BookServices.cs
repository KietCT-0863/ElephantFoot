using ElephantFoot.DAL;
using ElephantFoot.DAL.Entities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static System.Reflection.Metadata.BlobBuilder;

namespace ElephantFoot.BLL
{
    public class BookServices
    {
        private BookRepositories _bookRepo = new();

        public List<Book> GetAllBooks() => _bookRepo.GetAllBooksFromDB().ToList();

        public List<Book> GetBooksByTitle(List<Book>books, string title) => books.Where(b => b.Title.ToLower().Contains(title.ToLower())).ToList();

        public List<Book> GetBooksByCategory(List<Book> books, string category) => books.Where(b => b.Category.Name.ToLower().Contains(category.ToLower())).ToList();

        public List<Book> GetBooksByAuthor(List<Book> books, string author) => books.Where(b => b.Author.Name.ToLower().Contains(author.ToLower())).ToList();

        public List<Book> SortBookId(List<Book> books) => books.OrderBy(b => b.BookId).ToList();

        public List<Book> SortBookTitle(List<Book> books) => books.OrderBy(b => b.Title).ToList();

        public List<Book> SortBookPrice(List<Book> books) => books.OrderBy(b => b.Price).ToList();

    }
}
