<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KurumsalEmlakSitesi.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="wrap">
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
                                
                                <asp:Image ID="Image1" runat="server"  ImageUrl='<%# Eval("ProjeResim") %>'/>
                            </ItemTemplate>
                        </asp:Repeater>
                        <div class="view-all"><a href="events.html">See All</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="content">
            <div class="content_bottom">
                <h2>Welcome to our company</h2>
                <h3>Lorem Ipsum is simply dummy text of the printing atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</h3>
                <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p>
                <p>Atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p>
                <div class="feature_list">
                    <h2>Featured Services</h2>
                    <ul>
                        <li>Duis aute irure dolor Sunt in culpa</li>
                        <li>Sunt in culpa qui officia vel illum</li>
                        <li>vel illum qui dolorem eum The wise</li>
                        <li>The wise man therefore Lorem ipsum</li>
                        <li>vel illum qui dolorem eum The wise</li>
                    </ul>
                </div>
                <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia.</p>
            </div>
        </div>
        <div class="sidebar">
            <div class="sidebar_right_top">
                <h3>Haberler </h3>
                <div class="latestnews">
                    <asp:Repeater runat="server" ID="dl_haberler">
                        <ItemTemplate>
                            <div class="latestnews_desc">
                                <h4>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Habericerik") %>'></asp:Label></h4>
                                <p>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("HaberTarih") %>'></asp:Label>
                                </p>
                                <span><a href="#">read more</a></span>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>


                    <div class="view-all"><a href="events.html">ViewAll</a></div>
                </div>
            </div>
            <div class="sidebar_right_bottom">
                <h3>Member Login</h3>
                <div class="login_form">

                    <div>
                        <span>
                            <label>User Name</label></span>
                        <span>
                            <input name="userName" type="text" class="textbox"></span>
                    </div>
                    <div>
                        <span>
                            <label>Password</label></span>
                        <span>
                            <input name="userName" type="password"></span>
                    </div>
                    <div>
                        <span>
                            <input type="submit" class="mybutton" value="Submit"></span>
                    </div>
                    <span><a href="#">Forgot Password ?</a></span>

                    <h4>Free registration <a href="#">Click here</a></h4>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
