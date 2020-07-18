using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CEntidades{
    public class CEProfesor{
        private int idP;
        private String nomP;
        private String telP;

        public int IdP { get => idP; set => idP = value; }
        public string NomP { get => nomP; set => nomP = value; }
        public string TelP { get => telP; set => telP = value; }
    }
}
