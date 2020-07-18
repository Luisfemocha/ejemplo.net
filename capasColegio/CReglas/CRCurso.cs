using CDatos;
using CEntidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CReglas{
    public class CRCurso{
        CDCurso cdc = new CDCurso();
        public bool CrearCurso(CECurso cec){
            return cdc.CCurso(cec);
        }
        public String LeerCurso(CECurso cec){
            return cdc.RCurso(cec);
        }
        public bool ActuCurso(CECurso cec){
            return cdc.UCurso(cec);
        }
        public bool BorrarCurso(CECurso cec){
            return cdc.DCurso(cec);
        }
    }
}
