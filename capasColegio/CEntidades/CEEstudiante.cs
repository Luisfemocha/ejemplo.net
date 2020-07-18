using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CEntidades{
    public class CEEstudiante{
        private int idE;
        private String nomE;
        private String telE;
        private int cursoE;

        public int IdE { get => idE; set => idE = value; }
        public string NomE { get => nomE; set => nomE = value; }
        public string TelE { get => telE; set => telE = value; }
        public int CursoE { get => cursoE; set => cursoE = value; }
    }
}
