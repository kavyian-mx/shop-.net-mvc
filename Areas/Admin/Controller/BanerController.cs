using System.ComponentModel;
using Microsoft.AspNetCore.Mvc;


namespace Admin;

[Area("Admin")]
public class BanerController:Controller
{


    public IActionResult index()
    {
        Context db =new Context();
        var list=db.TblBaner.ToList();
        ViewBag.list=list;
        return View();
    }

  [HttpPost]
    public IActionResult upload(IFormFile file)
    {
      
      if(file!=null)
      {
          var fileName=Guid.NewGuid().ToString()+Path.GetExtension(file.FileName);
          var path=Path.Combine(Directory.GetCurrentDirectory(),"wwwroot/Uploads/Baner",fileName);
          using(var strem=new FileStream(path,FileMode.Create))
          {
            file.CopyTo(strem);
          }


          Context db =new Context();
          Baner baner = new Baner();
          baner.PathBaner=fileName;
          baner.Active=true;
          db.TblBaner.Add(baner);
          db.SaveChanges();
       


      }
      
      
        // TODO: Your code here
         return RedirectToAction("index");
    }

[HttpGet]
    public IActionResult delete(int id )
    {
        Context db=new Context();
         var baner=db.TblBaner.Find(id);
         db.TblBaner.Remove(baner);
         db.SaveChanges();
        return RedirectToAction("index");
        

    }
    

    
    
    
    
}