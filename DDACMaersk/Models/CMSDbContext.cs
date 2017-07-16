using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace DDACMaersk.Models
{
    public class CMSDbContext : DbContext
    {
        public CMSDbContext() : base("CloudConnection")
        {
            System.Diagnostics.Debug.WriteLine("Database is initialized");
        }

        public DbSet<ContainerData> ContainerDataList { get; set; }
    }
}