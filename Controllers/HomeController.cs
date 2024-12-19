using System.Diagnostics;
using System.Security.Claims;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using shop.Models;

namespace shop.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        return View();
    }

    public IActionResult Register()
    {

      return View();
    }

    [HttpPost]
        public IActionResult Register(string name , string email , string password)
    {
     
     
     
     Context db = new Context();

    if(db.Tblusers.Any(x=>x.Email==email))
    {
        ViewBag.error="این ایمیل قبلا ثبت شده است ";
        return View();

    }



     Users x = new Users ();

     x.Email = email;
     x.Password = password;
     x.Namefamily = name;
     db.Tblusers.Add (x);
     db.SaveChanges();

     ViewBag.matin="ثبت نام با موفقیت انجام شد ";





      return View();
    }
    [HttpPost]
      public IActionResult login(string email, string password)
    {
        
         Context db = new Context();
         if (db.Tblusers.Any(x=>x.Email==email && x.Password==password) )
         {

            
            var claims = new List<Claim>
            {
                new Claim(ClaimTypes.Email, email),
                new Claim(ClaimTypes.Name ,  db.Tblusers.First(x => x.Email == email).Namefamily)
                
            };

            var claimsIdentity = new ClaimsIdentity(claims, CookieAuthenticationDefaults.AuthenticationScheme);
            var authProperties = new AuthenticationProperties();

            HttpContext.SignInAsync(CookieAuthenticationDefaults.AuthenticationScheme, 
                new ClaimsPrincipal(claimsIdentity), 
                authProperties);
           
           
           
           
            return  RedirectToAction("profile");

         }
         else
         {

ViewBag.error="اطلاعات وارد شده صحیح نیست";
         }
        
        return View();
    }
    
     public IActionResult login()
    {
        return View();
    }
     
     [Authorize]
      public IActionResult profile()
    {
        return View();
    }

          public IActionResult logout()
    {
        HttpContext.SignOutAsync(CookieAuthenticationDefaults.AuthenticationScheme);
        return RedirectToAction("Index");
    }
 
}
