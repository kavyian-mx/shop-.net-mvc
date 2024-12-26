using System.ComponentModel.DataAnnotations;

public class Baner
{

    [Key]
    public int Id { get; set; }

    public string PathBaner { get; set; }

    public bool Active { get; set; }
   
    
}