using System.ComponentModel.DataAnnotations;

public class Users
{



    [Key]
    public int Id { get; set; }
    public string Namefamily { get; set; }

    public string Email { get; set; }

    public string Password { get; set; }
    
}