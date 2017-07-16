using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DDACMaersk.Models;
using System.Data.Entity;

namespace DDACMaersk
{
    public partial class DeleteContainer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Delete_Container(object sender, EventArgs e)
        {
            var ContainerID = Int32.Parse(containerid.Value);
            var db = new CMSDbContext();
            IQueryable<ContainerData> query = db.ContainerDataList;
            query = query.Where(p => p.ContainerID == ContainerID);
            if (query.Count() != 0)
            {
                db.Entry(query.First()).State = EntityState.Deleted;
                db.SaveChanges();
                Response.Redirect("ListContainer");
            }
            
        }
    }
}