using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DDACMaersk.Models;

namespace DDACMaersk
{
    public partial class ListContainer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<ContainerData> GetContainerData()
        {
            var db = new CMSDbContext();
            IQueryable<ContainerData> query = db.ContainerDataList;
            return query;
        }
    }
}