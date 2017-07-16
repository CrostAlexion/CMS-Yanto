using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace DDACMaersk.Models
{
    public class ContainerDataInit : DropCreateDatabaseIfModelChanges<CMSDbContext>
    {
        protected override void Seed(CMSDbContext context)
        {
            System.Diagnostics.Debug.WriteLine("Database context is seeding");
            GetShipmentData().ForEach(c => context.ContainerDataList.Add(c));
        }

        private static List<ContainerData> GetShipmentData()
        {
            var ShipmentActitivies = new List<ContainerData>
            {
                new ContainerData
                {
                    ContainerID = 1,
                    Type = "Dry",
                    LotNumber = "A10",
                    Size = "50",
                    UsedSize = "0",
                    Status = "Unused",
                },
                 new ContainerData
                {
                    ContainerID = 2,
                    Type = "Refrigerated",
                    LotNumber = "B10",
                    Size = "50",
                    UsedSize = "0",
                    Status = "Unused",
                },
                 new ContainerData
                {
                    ContainerID = 3,
                    Type = "Special",
                    LotNumber = "C10",
                    Size = "50",
                    UsedSize = "0",
                    Status = "Unused",
                }
            };

            return ShipmentActitivies;
        }
    }
}