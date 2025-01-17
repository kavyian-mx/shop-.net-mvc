using System.ComponentModel.DataAnnotations;

public class Images
{
    [Key]
public int Id { get; set; }

public int ProductId { get; set; }

public string PathImages { get; set; }


}