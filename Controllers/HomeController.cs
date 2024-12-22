using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using shop.Models;
using System.Security.Claims;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authorization;

namespace shop.Controllers;

public class HomeController : Controller
{
    
    public IActionResult Index()
    {
        return View();
    }

     public IActionResult Register()
    {
        return View();
    }

   
    [HttpPost]
    public IActionResult Register(string name,string email,string password)
    {
        Context db=new Context();


        if (db.TblUsers.Any(matin => matin.Email==email))
        {
            ViewBag.error="ایمیل وارد شده تکراری است";
             return View();
        }


        Users  x=new Users();
       
        x.Namefamily=name;
        x.Email=email;
        x.Password=password;

        db.TblUsers.Add(x);
        db.SaveChanges();

         ViewBag.matin="ثبت نام با موفقیت انجام شد.";


        return View();
    }


public IActionResult login()
    {
        return View();
    }

     [HttpPost]
    public IActionResult login(string email,string password)
    {

        Context  db=new Context();

        if (db.TblUsers.Any(x=>x.Email==email && x.Password==password))
        {
           
            var claims = new List<Claim>
            {
                new Claim(ClaimTypes.Email, email),
                new Claim(ClaimTypes.Name, db.TblUsers.First(x => x.Email == email).Namefamily)
            };

            var claimsIdentity = new ClaimsIdentity(claims, CookieAuthenticationDefaults.AuthenticationScheme);
            var authProperties = new AuthenticationProperties();

            HttpContext.SignInAsync(CookieAuthenticationDefaults.AuthenticationScheme, 
                new ClaimsPrincipal(claimsIdentity), 
                authProperties);

            return RedirectToAction("Profile");
        }else
        {
            ViewBag.error="اطلاعات وارد شده نادرست است ";
        }

        return View();
    }

[Authorize]
public IActionResult Profile()
    {
        return View();
    }


public IActionResult Logout()
    {
        HttpContext.SignOutAsync(CookieAuthenticationDefaults.AuthenticationScheme);
        return RedirectToAction("Index");
    }

   
}
