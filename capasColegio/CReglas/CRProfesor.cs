using CDatos;
using CEntidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CReglas{
    public class CRProfesor{
        CDProfesor cdp = new CDProfesor();
        public bool CrearProfesor(CEProfesor cep){
            return cdp.CProf(cep);
        }
        public String LeerProfesor(CEProfesor cep){
            return cdp.RProf(cep);
        }
        public bool ActuProfesor(CEProfesor cep, int id){
            return cdp.UProf(cep, id);
        }
        public bool BorrarProfesor(CEProfesor cep){
            return cdp.DProf(cep);
        }
    }
}
