using CEntidades;
using CReglas;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace capasColegio{
    public partial class formProfesor : System.Web.UI.Page{
        protected void Page_Load(object sender, EventArgs e){}

        private String ver(int id){ //si no existe devuelve "NE"
            CRProfesor cr = new CRProfesor();
            CEProfesor ce = new CEProfesor { IdP = id };
            return cr.LeerProfesor(ce);
        }

        //CREAR
        protected void btnveridp_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idp.Text);
            if (this.ver(id).Equals("NE")) lblveridp.Text = System.Convert.ToString("ID válido.");
            else lblveridp.Text = System.Convert.ToString("ID inválido.");
        }

        protected void btnCP_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idp.Text);
            if (! this.ver(id).Equals("NE")){
                lblCP1.Text= System.Convert.ToString("Verifique el ID.");
                lblveridp.Text = System.Convert.ToString("ID inválido.");
                return;
            }
            String nombre = System.Convert.ToString(nomp.Text);
            String telefono = System.Convert.ToString(telp.Text);
            CRProfesor cr = new CRProfesor();
            CEProfesor ce = new CEProfesor { IdP = id, NomP=nombre, TelP=telefono };
            if (cr.CrearProfesor(ce)) lblCP1.Text = System.Convert.ToString("Se ha creado el profesor.");
            else lblCP1.Text = System.Convert.ToString("No se ha creado el profesor.");
        }

        //LEER
        protected void btnveridp1_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idp1.Text);
            if (this.ver(id).Equals("NE")) lblveridp1.Text = System.Convert.ToString("ID inválido.");
            else lblveridp.Text = System.Convert.ToString("ID válido.");
        }

        protected void btnRP_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idp1.Text);
            String res = this.ver(id);
            if (res.Equals("NE")){
                lblveridp1.Text = System.Convert.ToString("ID inválido.");
                lblRP1.Text= System.Convert.ToString("Verifique el ID.");
                return;
            }
            lblRP1.Text = System.Convert.ToString(res);
        }

        //ACTUALIZAR
        protected void btnveridpviejo_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idpviejo.Text);
            if (this.ver(id).Equals("NE")) lblveridpviejo.Text = System.Convert.ToString("ID inválido.");
            else lblveridpviejo.Text = System.Convert.ToString("ID válido.");
        }

        protected void btnveridp3_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idp3.Text);
            if (this.ver(id).Equals("NE")) lblveridp3.Text = System.Convert.ToString("ID válido.");
            else lblveridp3.Text = System.Convert.ToString("ID inválido.");
        }

        protected void btnUP_Click(object sender, EventArgs e){
            int idviejo = System.Convert.ToInt32(idpviejo.Text);
            if (this.ver(idviejo).Equals("NE")){
                lblveridpviejo.Text = System.Convert.ToString("ID inválido.");
                lblUP1.Text = System.Convert.ToString("Verifique el ID viejo");
                return;
            }
            int id = System.Convert.ToInt32(idp3.Text);
            if (! this.ver(id).Equals("NE")) {
                lblveridp3.Text = System.Convert.ToString("ID inválido.");
                lblUP1.Text = System.Convert.ToString("Verifique el ID nuevo");
                return;
            }
            String nombre= System.Convert.ToString(nomp3.Text);
            String telefono=System.Convert.ToString(telp3.Text);
            CRProfesor cr = new CRProfesor();
            CEProfesor ce = new CEProfesor { IdP = id, NomP = nombre, TelP = telefono };
            if (cr.ActuProfesor(ce, idviejo)) lblUP1.Text = System.Convert.ToString("Se ha actualizado el profesor");
            else lblUP1.Text = System.Convert.ToString("No se ha actualizado el profesor");
        }

        //BORRAR
        protected void btnveridp4_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idp4.Text);
            if (this.ver(id).Equals("NE")) lblveridp4.Text = System.Convert.ToString("ID inválido, no existe");
            else lblveridp4.Text = System.Convert.ToString("ID válido");
        }

        protected void btnDP_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idp4.Text);
            if (this.ver(id).Equals("NE")){
                lblveridp4.Text = System.Convert.ToString("ID inválido, no existe");
                lblDP1.Text=System.Convert.ToString("Verifique el ID");
                return;
            }
            CRProfesor cr = new CRProfesor();
            CEProfesor ce = new CEProfesor { IdP = id};
            if (cr.BorrarProfesor(ce)) lblDP1.Text= System.Convert.ToString("Se ha borrado el profesor.");
            else lblDP1.Text = System.Convert.ToString("No se ha borrado el profesor.");
        }
    }
}