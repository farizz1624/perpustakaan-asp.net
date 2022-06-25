using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using Perpus.Classes;

namespace Perpus.Classes
{
    public class ClsBeranda
    {
        public static DataTable ShowData()
        {
            try
            {
                DataTable DtTampil = new DataTable();
                SqlConnection Sqlconn = new SqlConnection(ClsModule.Conn.ToString());
                SqlCommand cmd = new SqlCommand();
                SqlDataAdapter Da = new SqlDataAdapter();

                Sqlconn.Open();
                cmd.Connection = Sqlconn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from tblBuku order by KodeBuku asc";
                Da.SelectCommand = cmd;
                Da.Fill(DtTampil);
                Sqlconn.Close();
                return DtTampil;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public static void TambahBuku(string JudulBuku, string Pengarang, string Penerbit, string Rak, string Stok)
        {
            try
            {
                SqlConnection Sqlconn = new SqlConnection(ClsModule.Conn.ToString());
                SqlCommand cmd = new SqlCommand();

                Sqlconn.Open();
                cmd.Connection = Sqlconn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into tblBuku values('"+JudulBuku+"','"+Pengarang+"','"+Penerbit+"','"+Rak+"','"+Stok+"')";
                cmd.ExecuteNonQuery();
                Sqlconn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static void EditBuku(string judul, string pngrng, string pnrbt, string rakbuku, string stokbuku, string kode)
        {
            try
            {
                SqlConnection Sqlconn = new SqlConnection(ClsModule.Conn.ToString());
                SqlCommand cmd = new SqlCommand();

                Sqlconn.Open();
                cmd.Connection = Sqlconn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update tblBuku set JudulBuku='"+judul+"', Pengarang = '"+pngrng+"', Penerbit = '"+pnrbt+"', Rak ='"+rakbuku+"', Stok='"+stokbuku+ "' where KodeBuku = '"+kode+"'";
                cmd.ExecuteNonQuery();
                Sqlconn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public static void HapusBuku(string kode)
        {
            try
            {
                SqlConnection Sqlconn = new SqlConnection(ClsModule.Conn.ToString());
                SqlCommand cmd = new SqlCommand();

                Sqlconn.Open();
                cmd.Connection = Sqlconn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "delete from tblBuku where KodeBuku = '" + kode + "'";
                cmd.ExecuteNonQuery();
                Sqlconn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}