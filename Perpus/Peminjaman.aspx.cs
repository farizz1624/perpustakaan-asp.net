using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Perpus.Classes;

namespace Perpus
{
    public partial class Peminjaman : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowPinjam();
                ClearForm();
            }
        }
        private void ShowPinjam()
        {
            DataTable Dt = new DataTable();
            Dt = ClsPeminjaman.ShowPinjam();
            RptShowPinjam.DataSource = Dt;
            RptShowPinjam.DataBind();
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            ClsPeminjaman.TambahPinjam(TxtNama.Text, TxtNotelepon.Text, TxtJudulBuku.Text, TxtTglPinjam.Text, TxtTglKembali.Text, DDLStatus.SelectedValue);
            ShowPinjam();
            ClearForm();
        }
        public void ClearForm()
        {
            TxtNama.Text = string.Empty;
            TxtNotelepon.Text = string.Empty;
            TxtJudulBuku.Text = string.Empty;
            TxtTglPinjam.Text = string.Empty;
            TxtTglKembali.Text = string.Empty;
            DDLStatus.SelectedValue = "--Pilih Status--";
        }

        protected void BtnHapus_Click(object sender, EventArgs e)
        {
            ClsPeminjaman.HapusPinjam(TxtEditId.Text);
            ShowPinjam();
            ClearForm();
        }

        protected void BtnEdit_Click(object sender, EventArgs e)
        {
            ClsPeminjaman.EditPinjam(TxtEditNama.Text, TxtEditNoTelp.Text, TxtEditJudulBuku.Text, TxtEditTglPinjam.Text, TxtEditTglkembali.Text, DDLEditStatus.Text, TxtEditId.Text);
            ShowPinjam();
            ClearForm();
        }
    }
}