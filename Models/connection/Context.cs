
using Microsoft.EntityFrameworkCore;

public class Context : DbContext
{

    public DbSet<Users> TblUsers { get; set; }
    

     public DbSet<Slider> TblSliders { get; set; }

     public DbSet<Baner> TblBaner { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseSqlServer("server=.;database=Shopmarket;trusted_connection=true;MultipleActiveResultSets=True;TrustServerCertificate=True");
    }



}