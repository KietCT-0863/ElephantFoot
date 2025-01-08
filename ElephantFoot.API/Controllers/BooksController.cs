using ElephantFoot.BLL;
using ElephantFoot.DAL.Entities;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace ElephantFoot.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BooksController : ControllerBase
    {
        private BookServices _bookServ = new();

        [HttpGet]
        public IActionResult GetAllBook()
        {
            return Ok(_bookServ.GetAllBooks());
        }
    }
}
