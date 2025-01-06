using System;
using System.Collections.Generic;

namespace ElephantFoot.DAL.Entities;

public partial class User
{
    public int UserId { get; set; }

    public string UserName { get; set; } = null!;

    public string Email { get; set; } = null!;

    public string Password { get; set; } = null!;

    public string? Address { get; set; }

    public string? Phone { get; set; }

    public string? Role { get; set; }

    public bool? Available { get; set; }

    public virtual ICollection<Order> Orders { get; set; } = new List<Order>();
}
