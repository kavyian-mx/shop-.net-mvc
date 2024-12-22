
using Microsoft.EntityFrameworkCore;

public class Context : DbContext
{

    public DbSet<Users> TblUsers { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseSqlServer("server=.;database=Shopmarket;trusted_connection=true;MultipleActiveResultSets=True;TrustServerCertificate=True");
    }

}