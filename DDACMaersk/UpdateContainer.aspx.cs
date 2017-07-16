using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using DDACMaersk.Models;

namespace DDACMaersk
{
    public partial class UpdateContainer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Update_Container(object sender, EventArgs e)
        {
            var ContainerData = new ContainerData
            {
                ContainerID = Int32.Parse(containerid.Value),
                Type = typeid.Value,
                LotNumber = lotnumberid.Value,
                Size = sizeid.Value,
                UsedSize = usedsizeid.Value,
                Status = statusid.Value,
            };

            var db = new CMSDbContext();
            db.Entry(ContainerData).State = EntityState.Modified;
            db.SaveChanges();
            Response.Redirect("ListContainer");
        }

        protected void Get_Data(object sender, EventArgs e)
        {
            var ContainerID = Int32.Parse(containerid.Value);
            var db = new CMSDbContext();
            IQueryable<ContainerData> query = db.ContainerDataList;
            query = query.Where(p => p.ContainerID == ContainerID);
            if (query.Count() != 0)
            {
                typeid.Value = query.First().Type;
                lotnumberid.Value = query.First().LotNumber;
                sizeid.Value = query.First().Size;
                usedsizeid.Value = query.First().UsedSize;
                statusid.Value = query.First().Status;
            }
        }
    }
}