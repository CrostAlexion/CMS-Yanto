using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DDACMaersk.Models;

namespace DDACMaersk
{
    public partial class AddContainer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add_Container(object sender, EventArgs e)
        {
            var ContainerData = new ContainerData
            {
                Type = typeid.Value,
                LotNumber = lotnumberid.Value,
                Size = sizeid.Value,
                UsedSize = usedsizeid.Value,
                Status = statusid.Value,
            };

            var db = new CMSDbContext();
            db.ContainerDataList.Add(ContainerData);
            db.SaveChanges();
            Response.Redirect("ListContainer");
        }
    }
}