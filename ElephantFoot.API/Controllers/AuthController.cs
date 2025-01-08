using ElephantFoot.BLL;
using ElephantFoot.DAL.Entities;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace ElephantFoot.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AuthController : ControllerBase
    {
        private UserServices _userServ = new();

        [HttpGet]
        public IActionResult Authentication(string email, string password)
        {
            User? currentUser = _userServ.GetUser(email);

            if (currentUser == null)
            {
                return NotFound(new { message = "Email doesn't Exist" });
            }

            if (currentUser.Password != password)
            {
                return BadRequest(new { message = "Wrong Password" });
            }

            if (currentUser.Available == false)
            {
                return StatusCode(403, new { message = "You don't have permission" });
            }

            return Ok(new { message = "Welcome" });
        }
    }
}
