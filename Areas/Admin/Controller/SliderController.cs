using System.ComponentModel;
using Microsoft.AspNetCore.Mvc;


namespace Admin;

[Area("Admin")]
public class SliderController:Controller
{


    public IActionResult index()
    {
        Context db =new Context();
        var list=db.TblSliders.ToList();
        ViewBag.list=list;
        return View();
    }

  [HttpPost]
    public IActionResult upload(IFormFile file)
    {
      
      if(file!=null)
      {
          var fileName=Guid.NewGuid().ToString()+Path.GetExtension(file.FileName);
          var path=Path.Combine(Directory.GetCurrentDirectory(),"wwwroot/Uploads/Sliders",fileName);
          using(var strem=new FileStream(path,FileMode.Create))
          {
            file.CopyTo(strem);
          }


          Context db =new Context();
          Slider slider = new Slider();
          slider.PathSlider=fileName;
          slider.Active=true;
          db.TblSliders.Add(slider);
          db.SaveChanges();
       


      }
      
      
        // TODO: Your code here
         return RedirectToAction("index");
    }

[HttpGet]
    public IActionResult delete(int id )
    {
        Context db=new Context();
         var slider=db.TblSliders.Find(id);
         db.TblSliders.Remove(slider);
         db.SaveChanges();
        return RedirectToAction("index");
        

    }
    

    
    
    
    
}