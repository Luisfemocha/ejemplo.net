using CEntidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CDatos{
    public class CDProfesor{
        CConexion oconexion = new CConexion();
        SqlCommand ocmd = new SqlCommand();

        public bool CProf(CEProfesor oprof){//Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try{ // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("colegio");// se emplea para conectar

                ocmd.CommandText = "CPRO";
                ocmd.Parameters.Add("@idp_c", oprof.IdP);
                ocmd.Parameters.Add("@nomp_c", oprof.NomP);
                ocmd.Parameters.Add("@telp_c", oprof.TelP);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err){
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }
        public String RProf(CEProfesor oprof){//Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try{ // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("colegio");// se emplea para conectar

                ocmd.CommandText = "RPRO";
                ocmd.Parameters.Add("@idP_c", oprof.IdP);

                ocmd.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter(ocmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count == 0) return "NE"; //SI NO EXISTE
                String res = "ID: " + ds.Tables[0].Rows[0]["idp"].ToString() + "\nNombre: " + ds.Tables[0].Rows[0]["nomp"].ToString() + "\nTelefono: " + ds.Tables[0].Rows[0]["telp"].ToString();
                return res;
            }
            catch (Exception err){
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }
        public bool UProf(CEProfesor oprof, int id){//Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try{ // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("colegio");// se emplea para conectar

                ocmd.CommandText = "UPRO";
                ocmd.Parameters.Add("@idP1_c", id);
                ocmd.Parameters.Add("@idP2_c", oprof.IdP);
                ocmd.Parameters.Add("@nomP_c", oprof.NomP);
                ocmd.Parameters.Add("@telP_c", oprof.TelP);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err){
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }
        public bool DProf(CEProfesor oprof){//Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try{ // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("colegio");// se emplea para conectar

                ocmd.CommandText = "DPRO";
                ocmd.Parameters.Add("@idP_c", oprof.IdP);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err){
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }
    }
}
