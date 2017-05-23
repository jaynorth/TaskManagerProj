using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataBaseProj
{
    class Program
    {
        static void Main(string[] args)
        {

            TaskManDBEntities entity = new TaskManDBEntities();
            List<Project> lp = new List<Project>(entity.Projects);

            foreach (Project p in lp)
            {
                Console.WriteLine(p.Name);
            }


            Console.WriteLine("Hello");
            Console.ReadKey();
        }
    }
}
