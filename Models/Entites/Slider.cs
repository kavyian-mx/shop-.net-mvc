using System.ComponentModel.DataAnnotations;

public class Slider
{

    [Key]
    public int Id { get; set; }

    public string PathSlider { get; set; }

    public bool Active { get; set; }
   
    
}