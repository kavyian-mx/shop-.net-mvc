using System.Data.Common;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
[Area ("Admin")]
public class ProductController: Controller

{
public IActionResult index()
{
    Context db = new Context();

    ViewBag.BrandList= new SelectList(db.TblBrand.OrderByDescending(x =>x.Id),"Id","BrandName");
    ViewBag.ColorList= new SelectList(db.TblColor.OrderByDescending(x =>x.Id),"Id","ColorName");
    ViewBag.MenuList= new SelectList(db.TblMenu.OrderByDescending(x =>x.Id).Where(x=>x.ParentId!=0),"Id","CatName");
    return View();
}
[HttpGet]
public IActionResult brand()
{ 
    if(HttpContext.Session.GetString("error" )!=null){

    ViewBag.error=HttpContext.Session.GetString("error");
    HttpContext.Session.SetString("error"," ");

    }  
Context db = new Context();
    ViewBag.list=db.TblBrand.OrderByDescending(x=>x.Id).ToList();
    // TODO: Your code here
    return View();
}
[HttpPost]
public IActionResult brand(string BrandName)
{ Context db = new Context();
 if(!db.TblBrand.Any(x=>x.BrandName==BrandName)){
    

Brand b=new Brand();
b.BrandName=BrandName;
db.TblBrand.Add(b);
db.SaveChanges();
}
else
{

HttpContext.Session.SetString("error","این برند قبلا ثبت شده است ");

}

    // TODO: Your code here
    return RedirectToAction("brand");
}

public IActionResult DeleteBrand(int Id)
{
    Context db = new Context();
    var find=db.TblBrand.Find(Id);
    db.TblBrand.Remove(find);
    db.SaveChanges();
    return RedirectToAction("brand");
    
}

// Color
public IActionResult Color()
{ 
    if(HttpContext.Session.GetString("error" )!=null){

    ViewBag.error=HttpContext.Session.GetString("error");
    HttpContext.Session.SetString("error"," ");

    }  
Context db = new Context();
    ViewBag.list=db.TblColor.OrderByDescending(x=>x.Id).ToList();
    // TODO: Your code here
    return View();
}
[HttpPost]
public IActionResult Color(string ColorName)
{ Context db = new Context();
 if(!db.TblColor.Any(x=>x.ColorName==ColorName)){
    

Color b=new Color();
b.ColorName=ColorName;
db.TblColor.Add(b);
db.SaveChanges();
}
else
{

HttpContext.Session.SetString("error","این رنگ قبلا ثبت شده است ");

}

    // TODO: Your code here
    return RedirectToAction("Color");
}

public IActionResult deletecolor(int Id)
{
    Context db = new Context();
    var find=db.TblColor.Find(Id);
    db.TblColor.Remove(find);
    db.SaveChanges();
    return RedirectToAction("color");
    
}




}