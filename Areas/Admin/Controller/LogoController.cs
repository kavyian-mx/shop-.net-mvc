using System.ComponentModel;
using Microsoft.AspNetCore.Mvc;


namespace Admin;

[Area("Admin")]
public class LogoController:Controller
{


    public IActionResult index()
    {
        Context db =new Context();
        var list=db.TblLogo.ToList();
        ViewBag.list=list;
        return View();
    }

  [HttpPost]
    public IActionResult upload(IFormFile file)
    {
      
      if(file!=null)
      {
          var fileName=Guid.NewGuid().ToString()+Path.GetExtension(file.FileName);
          var path=Path.Combine(Directory.GetCurrentDirectory(),"wwwroot/Uploads/Logo",fileName);
          using(var strem=new FileStream(path,FileMode.Create))
          {
            file.CopyTo(strem);
          }


          Context db =new Context();
          Logo Logo = new Logo();
          Logo.PathLogo=fileName;
          Logo.Active=true;
          db.TblLogo.Add(Logo);
          db.SaveChanges();
       


      }
      
      
        // TODO: Your code here
         return RedirectToAction("index");
    }

[HttpGet]
    public IActionResult delete(int id )
    {
        Context db=new Context();
         var Logo=db.TblLogo.Find(id);
         db.TblLogo.Remove(Logo);
         db.SaveChanges();
        return RedirectToAction("index");
        

    }
    

    
    
    
    
}