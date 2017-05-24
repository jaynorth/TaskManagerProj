using DataBaseProj;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business
{
    public class ConnectionDB
    {
        public TaskManDBEntities _entity { get; set; }

        public ConnectionDB()
        {
            _entity = new TaskManDBEntities();
        }
    }
}
