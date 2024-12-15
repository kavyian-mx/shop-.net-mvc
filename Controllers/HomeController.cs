using System.Diagnostics;
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
 
}
