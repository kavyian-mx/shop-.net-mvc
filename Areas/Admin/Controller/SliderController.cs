using Microsoft.AspNetCore.Mvc;

namespace Admin;

[Area("Admin")]
public class SliderController: Controller
{

public IActionResult index()
{
   
    return View();
}

}



