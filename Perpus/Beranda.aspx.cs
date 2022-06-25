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
    public partial class Beranda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowData();
                ClearForm();
            }
        }
        private void ShowData()
        {
            DataTable Dt = new DataTable();
            Dt = ClsBeranda.ShowData();
            RptShowBuku.DataSource = Dt;
            RptShowBuku.DataBind();
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            ClsBeranda.TambahBuku(TxtJudulBuku.Text, TxtPengarang.Text, TxtPenerbit.Text, DDLRak.SelectedValue, TxtStok.Text);
            ShowData();
            ClearForm();
        }
        public void ClearForm()
        {
            TxtJudulBuku.Text = string.Empty;
            TxtPengarang.Text = string.Empty;
            TxtPenerbit.Text = string.Empty;
            DDLRak.SelectedValue = "--Pilih Rak--";
            TxtStok.Text = string.Empty;
        }

        protected void BtnEdit_Click(object sender, EventArgs e)
        {
            ClsBeranda.EditBuku(TxtEditJudul.Text,TxtEditPengarang.Text,TxtEditPenerbit.Text,DDLEditRak.Text,TxtEditStok.Text, TxtEditKodeBuku.Text);
            ShowData();
            ClearForm();
        }

        protected void BtnHapus_Click(object sender, EventArgs e)
        {
            ClsBeranda.HapusBuku(TxtEditKodeBuku.Text);
            ShowData();
            ClearForm();
        }
    }
}