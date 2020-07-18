using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CEntidades{
    public class CECurso{
        private int idC;
        private String nomC;
        private int encargado;

        public int IdC { get => idC; set => idC = value; }
        public string NomC { get => nomC; set => nomC = value; }
        public int Encargado { get => encargado; set => encargado = value; }
    }
}
