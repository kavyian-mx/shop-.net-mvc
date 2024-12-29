using System.ComponentModel.DataAnnotations;

public class Logo
{

    [Key]
    public int Id { get; set; }

    public string PathLogo { get; set; }

    public bool Active { get; set; }
   
    
}

