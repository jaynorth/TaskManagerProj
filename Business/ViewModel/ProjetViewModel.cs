using DataBaseProj;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.ViewModel
{
    public class ProjetViewModel: ConnectionDB
    {

        public ProjetViewModel()
        {
           _ListProjects = new List<Project>(_entity.Projects);
           _currentProject = ListProjects.FirstOrDefault();
        }

        private List<Project> _ListProjects;

        public List<Project> ListProjects
        {
            get { return _ListProjects; }
            set { _ListProjects = value; }
        }

        private Project _currentProject;

        public Project CurrentProject
        {
            get { return _currentProject; }
            set { _currentProject = value; }
        }


    }
}
