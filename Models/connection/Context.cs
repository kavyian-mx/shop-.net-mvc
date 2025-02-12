
using Microsoft.EntityFrameworkCore;

public class Context : DbContext
{

    public DbSet<Users> TblUsers { get; set; }
    

     public DbSet<Slider> TblSliders { get; set; }

     public DbSet<Baner> TblBaner { get; set; }

     public DbSet<Menu> TblMenu { get; set; }

     public DbSet<Logo> TblLogo { get; set; }

     public DbSet<Product> TblProduct { get; set; }

     public DbSet<Color> TblColor { get; set; }

     public DbSet<Brand> TblBrand { get; set; }

     public DbSet<Images> TblImages { get; set; }

     public DbSet<Comment> TblComment { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseSqlServer("server=.;database=Shopmarket;trusted_connection=true;MultipleActiveResultSets=True;TrustServerCertificate=True");
    }



}