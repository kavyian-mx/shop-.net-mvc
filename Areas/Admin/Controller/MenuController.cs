using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using shop.Migrations;


namespace Admin;

[Area("Admin")]
public class MenuController:Controller
{

    public IActionResult index()
    {
        Context db = new Context();
        ViewBag.Menu=db.TblMenu.ToList();
        ViewBag.Select = new SelectList(db.TblMenu.ToList(), "Id", "CatName");
        
        return View();
    }
[HttpPost]
    public IActionResult index(string cat,int parent)
    {
        Context db = new Context();
        Menu menu= new Menu();
        menu.CatName = cat;
        menu.ParentId = parent;
        menu.Active = true;
        
        db.TblMenu.Add(menu);
        db.SaveChanges();
        return RedirectToAction("index");
    }

    [HttpGet]
    public IActionResult delete(int id )
    {
        Context db=new Context();
         var Menu=db.TblMenu.Find(id);
         db.TblMenu.Remove(Menu);
         db.SaveChanges();
        return RedirectToAction("index");
        

    }

    
    
    
    
}