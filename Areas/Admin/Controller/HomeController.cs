using Microsoft.AspNetCore.Mvc;

namespace Admin;

[Area("Admin")]
public class HomeController: Controller
{
public ActionResult login()
{
  return View();


}

public IActionResult index()
{
    // TODO: Your code here
    return View();
}



}