<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Peminjaman.aspx.cs" Inherits="Perpus.Peminjaman" %>

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
                        <li><a href="Beranda.aspx">Buku</a></li>
                        <li class="active"><a href="Peminjaman.aspx">Peminjaman</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="Login.Aspx"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
                    </ul>
                </div>
            </nav>
        </header>
        <main role="main">
            <div class="container mt-5 mb-5" style="margin-top:60px">
                <center>
                    <h1>Data Peminjaman</h1>
                </center>
                <asp:Repeater ID="RptShowPinjam" runat="server">
                    <HeaderTemplate>
                        <table id="myTable" class="table table-borderless table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Nama</th>
                                    <th>No Telepon</th>
                                    <th>Judul Buku</th>
                                    <th>Tanggal Pinjam</th>
                                    <th>Tanggal Kembali</th>
                                    <th>Status</th>
                                    <th>Opsi</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <%# Eval("Id") %>
                            </td>
                            <td>
                                <%# Eval("Nama") %>
                            </td>
                            <td>
                                <%# Eval("NoTelepon") %>
                            </td>
                            <td>
                                <%# Eval("JudulBuku") %>
                            </td>
                            <td>
                                <%# Eval("TanggalPinjam") %>
                            </td>
                            <td>
                                <%# Eval("TanggalKembali") %>
                            </td>
                            <td>
                                <%# Eval("Status") %>
                            </td>
                            <td>
                                <a id="Edit_Peminjaman" data-toggle="modal" data-target="#ModalUpdate" 
                                    data-idpinjam =" <%# Eval("Id") %>"
                                    data-namapeminjam ="<%# Eval("Nama") %>"
                                    data-nohp="<%# Eval("NoTelepon") %>"
                                    data-jdlbuku=" <%# Eval("JudulBuku") %>"
                                    data-tglpinjam= "<%# Eval("TanggalPinjam") %>"
                                    data-tglkembali="<%# Eval("TanggalKembali") %>"
                                    data-stts="<%# Eval("Status") %>"
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
                            <h3 class="modal-title text-center" id="exampleModalLabel">Tambah Data Peminjaman</h3>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" Text="Nama"></asp:Label>
                                <asp:TextBox ID="TxtNama" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label2" runat="server" Text="No Telepon"></asp:Label>
                                <asp:TextBox ID="TxtNotelepon" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label3" runat="server" Text="Judul Buku"></asp:Label>
                                <asp:TextBox ID="TxtJudulBuku" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label5" runat="server" Text="Tanggal Pinjam"></asp:Label>
                                <asp:TextBox ID="TxtTglPinjam" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label6" runat="server" Text="Tanggal Kembali"></asp:Label>
                                <asp:TextBox ID="TxtTglKembali" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label4" runat="server" Text="Status"></asp:Label>
                                <asp:DropDownList ID="DDLStatus" CssClass="form-control" runat="server">
                                    <asp:ListItem>--Pilih Status--</asp:ListItem>
                                    <asp:ListItem>Belum Dikembalikan</asp:ListItem>
                                    <asp:ListItem>Sudah Dikembalikan</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
                                <asp:Button ID="BtnSave" onClick="BtnSave_Click" CssClass="btn btn-primary"
                                    runat="server" Text="Simpan" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--Update-->
            <div class="modal fade" id="ModalUpdate" tabindex="-1" role="dialog"
                    aria-labelledby="#exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header alert-info">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <h3 class="modal-title text-center">Hapus Atau Edit Data Peminjaman</h3>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <asp:Label ID="Label11" runat="server" Text="Id"></asp:Label>
                                    <asp:TextBox ClientIDMode="Static" ID="TxtEditId" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label7" runat="server" Text="Nama"></asp:Label>
                                    <asp:TextBox ClientIDMode="Static" ID="TxtEditNama" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label8" runat="server" Text="No Telepon"></asp:Label>
                                    <asp:TextBox ClientIDMode="Static" ID="TxtEditNoTelp" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label9" runat="server" Text="Judul Buku"></asp:Label>
                                    <asp:TextBox ClientIDMode="Static" ID="TxtEditJudulBuku" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label12" runat="server" Text="Tanggal Pinjam"></asp:Label>
                                    <asp:TextBox ClientIDMode="Static" ID="TxtEditTglPinjam" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label13" runat="server" Text="Tanggal Kembali"></asp:Label>
                                    <asp:TextBox ClientIDMode="Static" ID="TxtEditTglkembali" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label10" runat="server" Text="Status"></asp:Label>
                                    <asp:DropDownList ClientIDMode="Static" ID="DDLEditStatus" CssClass="form-control" runat="server">
                                    <asp:ListItem>--Pilih Status--</asp:ListItem>
                                    <asp:ListItem>Belum Dikembalikan</asp:ListItem>
                                    <asp:ListItem>Sudah Dikembalikan</asp:ListItem>
                                    </asp:DropDownList>
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
        $(document).on("click", "#Edit_Peminjaman", function () {
            var _idpinjam = $(this).data("idpinjam");
            var _namapeminjam = $(this).data("namapeminjam");
            var _nohp = $(this).data("nohp");
            var _jdlbuku = $(this).data("jdlbuku");
            var _tglpinjam = $(this).data("tglpinjam");
            var _tglkembali = $(this).data("tglkembali");
            var _stts = $(this).data("stts");

            $("#ModalUpdate #TxtEditId").val(_idpinjam);
            $("#ModalUpdate #TxtEditNama").val(_namapeminjam);
            $("#ModalUpdate #TxtEditNoTelp").val(_nohp);
            $("#ModalUpdate #TxtEditJudulBuku").val(_jdlbuku);
            $("#ModalUpdate #TxtEditTglPinjam").val(_tglpinjam);
            $("#ModalUpdate #TxtEditTglkembali").val(_tglkembali);
            $("#ModalUpdate #DDLEditStatus").val(_stts);
            $("#ModalUpdate #TxtEditId").attr("ReadOnly", true);;
        })
    </script>
</body>

</html>