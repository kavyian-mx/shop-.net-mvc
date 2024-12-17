using Microsoft.AspNetCore.Mvc;

namespace Admin;

[Area("Admin")]
public class HomeController: Controller
{
public ActionResult login()
{
  return View();


}




}