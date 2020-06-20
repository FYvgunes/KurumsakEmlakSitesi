<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Market.aspx.cs" Inherits="KurumsalEmlakSitesi.Markety" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrap">
        <div class="services_grid">
            <div class="content_bottom">
                <div class="image group marketing">
                    <div class="grid images_3_of_1">
                        <a href="#">
                            <img src="images/marketing_img1.jpg" alt=""></a>
                    </div>
                    <asp:Repeater runat="server" ID="dl_makaleler">
                        <ItemTemplate>
                            <div class="grid blog-desc">
                                <h4><a href="#">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("MakaleAD") %>'></asp:Label></a></h4>
                                <p>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Makaleicerik") %>'></asp:Label>
                                </p>
                                <div class="view-all"><a href="events.html">More Info</a></div>
                            </div>

                        </ItemTemplate>
                    </asp:Repeater>


                </div>
            </div>

        </div>
        <div class="sidebar">
            <div class="sidebar_left_top">
                <div class="services">
                    <h3>Hizmetler</h3>
                    <div class="services_list">
                        <ul>
                            <asp:Repeater runat="server" ID="dl_Hizmetler">
                                <ItemTemplate>
                                    <li style="margin-left: 10px;"><a href="">
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ServislerAd") %>'></asp:Label></a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="sidebar_left_bottom">
                <div class="projects">
                    <h3>Projeler</h3>
                    <div class="project_img">
                        <asp:Repeater ID="dl_projeler" runat="server">
                            <ItemTemplate>

                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProjeResim") %>' />
                            </ItemTemplate>
                        </asp:Repeater>
                        <div class="view-all"><a href="events.html">See All</a></div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
