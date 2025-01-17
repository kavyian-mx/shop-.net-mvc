using System.ComponentModel.DataAnnotations;

public class Product
{

    [Key]
   public int Id { get; set; }

   public string NameProduct { get; set; }

   public int CatId { get; set; }

   public decimal Price { get; set; }

   public int Offer { get; set; }

   public string MainImage { get; set; }

   public string Description { get; set; }

   public int BranId { get; set; }

   public string Garanti { get; set; }

   public string Info { get; set; }


   public string CheckIn { get; set; }


   public string Type { get; set; }

 
}