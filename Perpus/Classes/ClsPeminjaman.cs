using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using Perpus.Classes;

namespace Perpus.Classes
{
    public class ClsPeminjaman
    {
        public static DataTable ShowPinjam()
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
                cmd.CommandText = "select * from tblPinjam order by Id asc";
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
        public static void TambahPinjam(string Nama, string NoTelepon, string JudulBuku, string TanggalPinjam, string TanggalKembali, string Status)
        {
            try
            {
                SqlConnection Sqlconn = new SqlConnection(ClsModule.Conn.ToString());
                SqlCommand cmd = new SqlCommand();

                Sqlconn.Open();
                cmd.Connection = Sqlconn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into tblPinjam values('"+Nama+"','"+NoTelepon+"','"+JudulBuku+"','"+TanggalPinjam+"','"+TanggalKembali+"','"+Status+"')";
                cmd.ExecuteNonQuery();
                Sqlconn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public static void EditPinjam(string namapeminjam, string nohp, string jdlbuku, string tglpinjam, string tglkembali, string stts, string idpinjam)
        {
            try
            {
                SqlConnection Sqlconn = new SqlConnection(ClsModule.Conn.ToString());
                SqlCommand cmd = new SqlCommand();

                Sqlconn.Open();
                cmd.Connection = Sqlconn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update tblPinjam set Nama='"+namapeminjam+"', NoTelepon = '"+nohp+"', JudulBuku = '"+jdlbuku+"', TanggalPinjam ='"+tglpinjam+"', TanggalKembali='"+tglkembali+"',Status='"+stts+"' where Id = '" +idpinjam + "'";
                cmd.ExecuteNonQuery();
                Sqlconn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public static void HapusPinjam(string idpinjam)
        {
            try
            {
                SqlConnection Sqlconn = new SqlConnection(ClsModule.Conn.ToString());
                SqlCommand cmd = new SqlCommand();

                Sqlconn.Open();
                cmd.Connection = Sqlconn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "delete from tblPinjam where Id = '" + idpinjam + "'";
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