<%@ Page Title="" Language="C#" MasterPageFile="~/kurumsaluser/Admin.Master" AutoEventWireup="true" CodeBehind="Makaleler.aspx.cs" Inherits="KurumsalEmlakSitesi.kurumsaluser.Makaleler" %>
  <%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <section class="content-header">
        <h1>Makaleler</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>Makaleler</a></li>
        </ol>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-warning box-solid">
                    <div class="box-header with-border">
                        <h3 class="box-title">Makale Ekle</h3>
                        <div class="box-tools pull-right">
                            <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        </div>
                        <!-- /.box-tools -->
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="form-group"> 
                            <label for="exampleInputFile">Başlık</label>
                            <asp:FileUpload ID="fu_Dosya" runat="server" />
                            <p class="help-block">Makele Ekle</p>
                        </div>
                        <div class="form-group">
                            <label id="Label1" runat="server">Resim Seç</label>
                            <asp:TextBox ID="txt_dBaslik" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label id="Label2" runat="server">Resim seç </label>
                            <asp:DropDownList ID="ddl_mKategori" CssClass="form-control" runat="server"></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>Özet</label>
                            <asp:TextBox ID="txt_seoice" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>İçerik</label>
                            <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server"></CKEditor:CKEditorControl>
                         
                        </div>
                        <div class="form-group" style="width: 200px;">
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-block btn-primary" Text="EKLE" />
                            <asp:Button ID="btn_mtemizle" runat="server" CssClass="btn btn-block btn-danger" Text="TEMİZLE" />
                        </div>
                        <asp:Panel ID="pnl_gdogru" runat="server">
                            <div class="form-group">
                                <div class="alert alert-success alert-dismissable">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                    <h4><i class="icon fa fa-check"></i>Eklendi!</h4>
                                    Başarıyla Eklendi...
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="pnl_gyanlis" runat="server">
                            <div class="form-group">
                                <div class="alert alert-danger alert-dismissable">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                    <h4><i class="icon fa fa-ban"></i>Hata!</h4>
                                    Bir Sorun Çıktı Boşlukları Doldurun Lütfen...
                                </div>
                            </div>
                        </asp:Panel>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-warning box-solid">
                    <div class="box-header with-border">
                        <h3 class="box-title">Hizmetler</h3>
                        <div class="box-tools pull-right">
                            <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        </div>
                        <!-- /.box-tools -->
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="box">
                            <div class="box-body table-responsive no-padding">
                                <table class="table table-hover">
                                    <tbody>
                                        <tr>
                                            <th>ID</th>
                                            <th>Makale Ad</th>
                                            <th>Yayınlanma Tarihi</th>
                                            <th>Güncelle</th>
                                            <th>Sil</th>
                                        </tr>
                                        <asp:Repeater ID="dl_makaleler" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td>
                                                       
                                                    </td>
                                                    <td>
                                                        
                                                    </td>
                                                    <td>
                                                        
                                                    </td>
                                                    <td><a href=""><i class="fa fa-pencil"></i></a></td>
                                                    <td><a href=""><i class="fa fa-trash-o"></i></a></td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
        </div>
    </section>
</asp:Content>
