﻿using System;
using System.Collections.Generic;

namespace ElephantFoot.DAL.Entities;

public partial class Category
{
    public int CategoryId { get; set; }

    public string Name { get; set; } = null!;

}
