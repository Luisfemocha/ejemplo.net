using CDatos;
using CEntidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CReglas{
    public class CREstudiante{
        CDEstudiante cde = new CDEstudiante();
        public bool CrearEstudiante(CEEstudiante cee){
            return cde.CEstud(cee);
        }
        public String LeerEstudiante(CEEstudiante cee){
            return cde.REstud(cee);
        }
        public bool ActuEstudiante(CEEstudiante cee, int id){
            return cde.UEstud(cee, id);
        }
        public bool BorrarEstudiante(CEEstudiante cee){
            return cde.DEstud(cee);
        }
    }
}
