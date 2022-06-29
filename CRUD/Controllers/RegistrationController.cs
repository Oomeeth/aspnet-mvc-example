using Microsoft.AspNetCore.Mvc;
using CRUD.Models;
using CRUD.Repository;

namespace CRUD.Controllers
{
    public class RegistrationController : Controller
    {
        private readonly ILogger<RegistrationController> _logger;
        private IUserRepository _userRepository;

        public RegistrationController(ILogger<RegistrationController> logger, IUserRepository userRepository)
        {
            _logger = logger;
            _userRepository = userRepository;
        }

        public IActionResult Index()
        {
            ViewData["DisplayLoginReg"] = false;

            return View();
        }

        [HttpPost]
        public async Task<IActionResult> CreateUser([Bind("FirstName, LastName, Phone, Email, UserDOB, UserAddress, UserPassword, AccountType")] UserModel userModel)
        {
            try
            {
                ViewData["DisplayLoginReg"] = false;
                
                await _userRepository.CreateUser(userModel);

                return View();
            }
            catch (Exception ex)
            {
                return Problem(ex.Message);
            }
        }
    }
}
