using System.ComponentModel.DataAnnotations;

public class Menu{
 [Key]
public int Id { get; set; }
public string CatName { get; set; }

public int ParentId { get; set; }

public bool Active { get; set; }


}