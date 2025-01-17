using System.ComponentModel.DataAnnotations;

public class Color
{
    [Key]
public int Id { get; set; }

public int ProductId { get; set; }

public string ColorName { get; set; }


}