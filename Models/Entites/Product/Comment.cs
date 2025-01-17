using System.ComponentModel.DataAnnotations;

public class Comment
{
    [Key]
public int Id { get; set; }

public int ProductId { get; set; }

public int UserId { get; set; }

public string CommentUser { get; set; }

public DateTime CreatDate { get; set; }

public bool Accept { get; set; }


}