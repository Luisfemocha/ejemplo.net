using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CEntidades;

namespace CDatos{
    public class CDCurso{
        CConexion oconexion = new CConexion();
        SqlCommand ocmd = new SqlCommand();

        public bool CCurso(CECurso ocurso){//Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try
            { // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("colegio");// se emplea para conectar

                ocmd.CommandText = "CCUR";
                ocmd.Parameters.Add("@nomC_c", ocurso.NomC);
                ocmd.Parameters.Add("@encargado_c", ocurso.Encargado);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }
        public String RCurso(CECurso ocurso){//Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try{ // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("colegio");// se emplea para conectar

                ocmd.CommandText = "RCUR";
                ocmd.Parameters.Add("@idC_c", ocurso.IdC);

                ocmd.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter(ocmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                String res = "ID: " + ds.Tables[0].Rows[0]["idc"].ToString() + "\nNombre: " + ds.Tables[0].Rows[0]["nomc"].ToString() + "\nEncargado: " + ds.Tables[0].Rows[0]["encargado"].ToString();
                return res;
            }
            catch (Exception err){
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }
        public bool UCurso(CECurso ocurso){//Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try{ // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("colegio");// se emplea para conectar

                ocmd.CommandText = "UCUR";
                ocmd.Parameters.Add("@idC_c", ocurso.IdC);
                ocmd.Parameters.Add("@nomC_c", ocurso.NomC);
                ocmd.Parameters.Add("@encargado_c", ocurso.Encargado);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err){
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }
        public bool DCurso(CECurso ocurso){//Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento

            try{ // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = oconexion.conectar("colegio");// se emplea para conectar

                ocmd.CommandText = "DCUR";
                ocmd.Parameters.Add("@idC_c", ocurso.IdC);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err){
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }
    }
}
