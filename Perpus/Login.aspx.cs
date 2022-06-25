using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Perpus.Classes;

namespace Perpus
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            DataTable DtLogin = new DataTable();
            DtLogin = ClsLogin.DtLogin(TxtUser.Text, TxtPassword.Text);

            if (DtLogin.Rows.Count != 0)
            {
                Response.Redirect("~/Beranda.aspx");
            }
            else
            {
                LblWarning.Text = "Username atau Password Anda Salah!";
            }
        }
    }
}