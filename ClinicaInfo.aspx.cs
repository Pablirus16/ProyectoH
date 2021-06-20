using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using static ProyectoH.Datos.Coneccion;

namespace ProyectoH
{
    public partial class ClinicaInfo : System.Web.UI.Page
    {

        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataTable table;

        public void DataLoad()
        {
            if (Page.IsPostBack)
            {
                GridView1.DataBind();
            }
        }

        public void ClearGrid()
        {
            txtId.Text = "";
            TxtNombre.Text = "";
            TxtCorreo.Text = "";
            TxtSitio.Text = "";
            TxtNum.Text = "";
            TxtDir.Text = "";
            TxtProv.Text = "";
            TxtCanton.Text = "";
            TxtDis.Text = "";
            TxtHorario.Text = "";
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtId.Text = GridView1.SelectedRow.Cells[1].Text;
            TxtNombre.Text = GridView1.SelectedRow.Cells[2].Text;
            TxtCorreo.Text = GridView1.SelectedRow.Cells[3].Text;
            TxtSitio.Text = GridView1.SelectedRow.Cells[4].Text;
            TxtNum.Text = GridView1.SelectedRow.Cells[5].Text;
            TxtDir.Text = GridView1.SelectedRow.Cells[6].Text;
            TxtProv.Text = GridView1.SelectedRow.Cells[7].Text;
            TxtCanton.Text = GridView1.SelectedRow.Cells[8].Text;
            TxtDis.Text = GridView1.SelectedRow.Cells[9].Text;
            TxtHorario.Text = GridView1.SelectedRow.Cells[10].Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = Conectar();

            if(txtId.Text !="" && TxtNombre.Text != "" && TxtCorreo.Text != "" && TxtSitio.Text != "" && TxtNum.Text != "" && TxtDir.Text != "" && TxtProv.Text != "" && TxtCanton.Text != "" && TxtDis.Text != "" && TxtHorario.Text != "")
            {
                using(con)
                {
                    cmd = new SqlCommand("Insert Into CLINICA(Id, Nombre, Direccion, Telefono, Correo, Sitio_Web, Horario_Atencion, Provincia, Distrito, Canton) VALUES (@Id, @Nombre, @Direccion, @Telefono, @Correo, @Sitio_Web, @Horario_Atencion, @Provincia, @Distrito, @Canton)", con);

                    cmd.Parameters.AddWithValue("@Id", txtId.Text);
                    cmd.Parameters.AddWithValue("@Nombre", TxtNombre.Text);
                    cmd.Parameters.AddWithValue("@Telefono", TxtNum.Text);
                    cmd.Parameters.AddWithValue("@Correo", TxtCorreo.Text);
                    cmd.Parameters.AddWithValue("@Sitio_Web", TxtSitio.Text);
                    cmd.Parameters.AddWithValue("@Direccion", TxtDir.Text);
                    cmd.Parameters.AddWithValue("@Provincia", TxtProv.Text);
                    cmd.Parameters.AddWithValue("@Canton", TxtCanton.Text);
                    cmd.Parameters.AddWithValue("@Distrito", TxtDis.Text);
                    cmd.Parameters.AddWithValue("@Horario_Atencion", TxtHorario.Text);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    DataLoad();
                    ClearGrid();

                }
            }
            else
            {
                
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (txtId.Text != "" && TxtNombre.Text != "" && TxtCorreo.Text != "" && TxtSitio.Text != "" && TxtNum.Text != "" && TxtDir.Text != "" && TxtProv.Text != "" && TxtCanton.Text != "" && TxtDis.Text != "" && TxtHorario.Text != "")
            {
                SqlConnection con = Conectar();
                string actualizar = "UPDATE CLINICA SET Id=@Id, Nombre=@Nombre, Direccion=@Direccion, Telefono=@Telefono, Correo=@Correo, Sitio_Web=@Sitio_Web, Horario_Atencion=@Horario_Atencion, Provincia=@Provincia, Distrito=@Distrito, Canton=@Canton WHERE Id=@Id";
                SqlCommand cmd = new SqlCommand(actualizar, Conectar());

                cmd.Parameters.AddWithValue("@Id", txtId.Text);
                cmd.Parameters.AddWithValue("@Nombre", TxtNombre.Text);
                cmd.Parameters.AddWithValue("@Telefono", TxtNum.Text);
                cmd.Parameters.AddWithValue("@Correo", TxtCorreo.Text);
                cmd.Parameters.AddWithValue("@Sitio_Web", TxtSitio.Text);
                cmd.Parameters.AddWithValue("@Direccion", TxtDir.Text);
                cmd.Parameters.AddWithValue("@Provincia", TxtProv.Text);
                cmd.Parameters.AddWithValue("@Canton", TxtCanton.Text);
                cmd.Parameters.AddWithValue("@Distrito", TxtDis.Text);
                cmd.Parameters.AddWithValue("@Horario_Atencion", TxtHorario.Text);

                cmd.ExecuteNonQuery();
                con.Close();
                DataLoad();
                ClearGrid();

            }
            else
            {
                //
            }
                
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = Conectar();

            if(txtId.Text == "")
            {
                //
            }
            string eliminar = "DELETE FROM CLINICA WHERE Id = @Id";
            SqlCommand cmd = new SqlCommand(eliminar, Conectar());

            cmd.Parameters.AddWithValue("@Id", txtId.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            DataLoad();
            ClearGrid();
        }
    }
}
