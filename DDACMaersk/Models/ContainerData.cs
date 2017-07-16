using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DDACMaersk.Models
{
    public class ContainerData
    {
        [Key]
        [ScaffoldColumn(false)]
        public int ContainerID { get; set; }
        
        public string Type { get; set; }

        public string LotNumber { get; set; }

        public string Size { get; set; }

        public string UsedSize { get; set; }

        public string Status { get; set; }
        
    }
}