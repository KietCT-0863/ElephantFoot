using System;
using System.Collections.Generic;
using System.Text.Json.Serialization;

namespace ElephantFoot.DAL.Entities;

public partial class Author
{
    public int AuthorId { get; set; }

    public string Name { get; set; } = null!;

    public string? Biography { get; set; }

}
