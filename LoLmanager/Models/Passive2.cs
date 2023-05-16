﻿using System;
using System.Collections.Generic;

namespace LoLmanager.Models
{
    public partial class Passive2
    {
        public Passive2()
        {
            Builds = new HashSet<Build>();
        }

        public int Id { get; set; }
        public string Name { get; set; } = null!;
        public string Description { get; set; } = null!;

        public virtual ICollection<Build> Builds { get; set; }
    }
}
