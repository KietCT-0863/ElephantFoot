using System;
using System.Collections.Generic;

namespace ElephantFoot.DAL.Entities;

public partial class Book
{
    public int BookId { get; set; }

    public string Title { get; set; } = null!;

    public string? Description { get; set; }

    public DateOnly? PublicationDate { get; set; }

    public decimal Price { get; set; }

    public int? Quantity { get; set; }

    public bool Available { get; set; }

    public int CategoryId { get; set; }

    public int AuthorId { get; set; }

    public virtual Author Author { get; set; } = null!;

    public virtual Category Category { get; set; } = null!;

    public virtual ICollection<OrderDetail> OrderDetails { get; set; } = new List<OrderDetail>();
}
