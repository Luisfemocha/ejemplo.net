using CEntidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CDatos{
    public class CDEstudiante{
        CConexion oconexion = new CConexion();
        SqlCommand ocmd = new SqlCommand();

        public bool CEstud(CEEstudiante oest){//Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try{ // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("colegio");// se emplea para conectar

                ocmd.CommandText = "CEST";
                ocmd.Parameters.Add("@idE_c", oest.IdE);
                ocmd.Parameters.Add("@nomE_c", oest.NomE);
                ocmd.Parameters.Add("@telE_c", oest.TelE);
                ocmd.Parameters.Add("@cursoE_c", oest.CursoE);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err){
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }
        public String REstud(CEEstudiante oest){//Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try{ // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("colegio");// se emplea para conectar

                ocmd.CommandText = "REST";
                ocmd.Parameters.Add("@idE_c", oest.IdE);

                ocmd.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter(ocmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                String res = "ID: " + ds.Tables[0].Rows[0]["ide"].ToString() + "\nNombre: " + ds.Tables[0].Rows[0]["nome"].ToString() + "\nTelefono: "+ds.Tables[0].Rows[0]["tele"].ToString() + "\nCurso: " + ds.Tables[0].Rows[0]["cursoe"].ToString();
                return res;
            }
            catch (Exception err){
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }
        public bool UEstud(CEEstudiante oest, int id){//Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try{ // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("colegio");// se emplea para conectar

                ocmd.CommandText = "UEST";
                ocmd.Parameters.Add("@idE1_c", id);
                ocmd.Parameters.Add("@idE2_c", oest.IdE);
                ocmd.Parameters.Add("@nomE_c", oest.NomE);
                ocmd.Parameters.Add("@telE_c", oest.TelE);
                ocmd.Parameters.Add("@cursoE_c", oest.CursoE);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err){
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }
        public bool DEstud(CEEstudiante oest){//Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try{ // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("colegio");// se emplea para conectar

                ocmd.CommandText = "DEST";
                ocmd.Parameters.Add("@idE_c", oest.IdE);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err){
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }
    }
}
