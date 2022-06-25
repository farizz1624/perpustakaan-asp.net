<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Beranda.aspx.cs" Inherits="Perpus.Beranda" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <title>eBrary</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link href="additional-file/css/jquery.dataTables.min.css" rel="stylesheet" />

    </head>

    <body>
        <form id="form1" runat="server">
            <header>
                <nav class="navbar navbar-inverse navbar-fixed-top">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="#">Perpusku</a>
                        </div>
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#">Buku</a></li>
                            <li><a href="Peminjaman.aspx">Peminjaman</a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Login.aspx"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
                        </ul>
                    </div>
                </nav>
            </header>
            <main role="main">
                <div class="container mt-5 mb-5" style="margin-top:60px">
                    <center>
                        <h1>Data Buku</h1>
                    </center>
                    <asp:Repeater ID="RptShowBuku" runat="server">
                        <HeaderTemplate>
                            <table id="myTable" class="table table-borderless table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>Kode Buku</th>
                                        <th>Judul Buku</th>
                                        <th>Pengarang</th>
                                        <th>Penerbit</th>
                                        <th>Rak</th>
                                        <th>Stok</th>
                                        <th>Opsi</th>
                                    </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <%# Eval("KodeBuku") %>
                                </td>
                                <td>
                                    <%# Eval("JudulBuku") %>
                                </td>
                                <td>
                                    <%# Eval("Pengarang") %>
                                </td>
                                <td>
                                    <%# Eval("Penerbit") %>
                                </td>
                                <td>
                                    <%# Eval("Rak") %>
                                </td>
                                <td>
                                    <%# Eval("Stok") %>
                                </td>
                                <td>
                                    <a id="Edit_Buku" data-toggle="modal" data-target="#ModalUpdate" 
                                        data-kode =" <%# Eval("KodeBuku") %>"
                                        data-judul ="<%# Eval("JudulBuku") %>"
                                        data-pngrng="<%# Eval("Pengarang") %>"
                                        data-pnrbt=" <%# Eval("Penerbit") %>"
                                        data-rakbuku= "<%# Eval("Rak") %>"
                                        data-stokbuku="<%# Eval("Stok") %>"
                                        class="btn btn-primary btn-sm">Pilih</a>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </tbody>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
                    <center>
                        <button type="button" class="btn btn-info" data-target="#ModalTambah" data-toggle="modal">Tambah
                            Data</button>
                    </center>
                </div>
                <!--Add-->
                <div class="modal fade" id="ModalTambah" tabindex="-1" role="dialog"
                    aria-labelledby="#exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header alert-info">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <h3 class="modal-title text-center" id="exampleModalLabel">Tambah Data Buku</h3>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <asp:Label ID="Label1" runat="server" Text="Judul Buku"></asp:Label>
                                    <asp:TextBox ID="TxtJudulBuku" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label2" runat="server" Text="pengarang"></asp:Label>
                                    <asp:TextBox ID="TxtPengarang" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label3" runat="server" Text="Penerbit"></asp:Label>
                                    <asp:TextBox ID="TxtPenerbit" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label4" runat="server" Text="Rak"></asp:Label>
                                    <asp:DropDownList ID="DDLRak" CssClass="form-control" runat="server">
                                        <asp:ListItem>--Pilih Rak--</asp:ListItem>
                                        <asp:ListItem>A1</asp:ListItem>
                                        <asp:ListItem>A2</asp:ListItem>
                                        <asp:ListItem>A3</asp:ListItem>
                                        <asp:ListItem>B1</asp:ListItem>
                                        <asp:ListItem>B2</asp:ListItem>
                                        <asp:ListItem>B3</asp:ListItem>
                                        <asp:ListItem>C1</asp:ListItem>
                                        <asp:ListItem>C2</asp:ListItem>
                                        <asp:ListItem>C3</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label5" runat="server" Text="Stok"></asp:Label>
                                    <asp:TextBox ID="TxtStok" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
                                <asp:Button ID="BtnSave" onClick="BtnSave_Click" CssClass="btn btn-primary"
                                    runat="server" Text="Simpan" />
                            </div>
                        </div>
                    </div>
                </div>
                <!--update-->
                <div class="modal fade" id="ModalUpdate" tabindex="-1" role="dialog"
                    aria-labelledby="#exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header alert-info">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <h3 class="modal-title text-center">Hapus Atau Edit Data Buku</h3>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <asp:Label ID="Label11" runat="server" Text="Kode Buku"></asp:Label>
                                    <asp:TextBox ClientIDMode="Static" ID="TxtEditKodeBuku" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label6" runat="server" Text="Judul Buku"></asp:Label>
                                    <asp:TextBox ClientIDMode="Static" ID="TxtEditJudul" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label7" runat="server" Text="pengarang"></asp:Label>
                                    <asp:TextBox ClientIDMode="Static" ID="TxtEditPengarang" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label8" runat="server" Text="Penerbit"></asp:Label>
                                    <asp:TextBox ClientIDMode="Static" ID="TxtEditPenerbit" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label9" runat="server" Text="Rak"></asp:Label>
                                    <asp:DropDownList ClientIDMode="Static" ID="DDLEditRak" CssClass="form-control" runat="server">
                                        <asp:ListItem>--Pilih Rak--</asp:ListItem>
                                        <asp:ListItem>A1</asp:ListItem>
                                        <asp:ListItem>A2</asp:ListItem>
                                        <asp:ListItem>A3</asp:ListItem>
                                        <asp:ListItem>B1</asp:ListItem>
                                        <asp:ListItem>B2</asp:ListItem>
                                        <asp:ListItem>B3</asp:ListItem>
                                        <asp:ListItem>C1</asp:ListItem>
                                        <asp:ListItem>C2</asp:ListItem>
                                        <asp:ListItem>C3</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label10" runat="server" Text="Stok"></asp:Label>
                                    <asp:TextBox ClientIDMode="Static" ID="TxtEditStok" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <asp:Button ID="BtnHapus" OnClick="BtnHapus_Click" CssClass="btn btn-danger" runat="server" Text="Hapus" />
                                <asp:Button ID="BtnEdit" OnClick="BtnEdit_Click" CssClass="btn btn-primary" runat="server" Text="Edit" />
                            </div>
                        </div>
                    </div>
                </div>
            </main>
            <footer></footer>
        </form>

        <script src="additional-file/js/jquery-3.2.1.slim.min.js"></script>
        <script src="additional-file/js/popper.min.js"></script>
        <script src="bootstrap4/js/bootstrap.min.js"></script>
        <script src="additional-file/js/jquery.dataTables.min.js"></script>
        <script>
            $(document).ready(function () {
                $('#myTable').DataTable();
            });
            $(document).on("click", "#Edit_Buku", function () {
                var _kode = $(this).data("kode");
                var _judul = $(this).data("judul");
                var _pngrng = $(this).data("pngrng");
                var _pnrbt = $(this).data("pnrbt");
                var _rakbuku = $(this).data("rakbuku");
                var _stokbuku = $(this).data("stokbuku");

                $("#ModalUpdate #TxtEditKodeBuku").val(_kode);
                $("#ModalUpdate #TxtEditJudul").val(_judul);
                $("#ModalUpdate #TxtEditPengarang").val(_pngrng);
                $("#ModalUpdate #TxtEditPenerbit").val(_pnrbt);
                $("#ModalUpdate #DDLEditRak").val(_rakbuku);
                $("#ModalUpdate #TxtEditStok").val(_stokbuku);
                $("#ModalUpdate #TxtEditKodeBuku").attr("ReadOnly", true);;
            })
        </script>
    </body>

    </html>