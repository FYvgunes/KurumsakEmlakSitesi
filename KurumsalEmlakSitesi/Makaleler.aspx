<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Makaleler.aspx.cs" Inherits="KurumsalEmlakSitesi.Makaleler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrap">
        <div class="services_grid">
            <div class="content_bottom">
                <div class="section group service_desc">
                    <div class="listview_1_of_2 images_1_of_2">
                        <div class="listimg listimg_2_of_1">
                            <img src="images/service-1.png" alt="" />
                        </div>
                        <div class="text list_2_of_1">
                            <h4>Service - 01</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt  ut labore et dolore.Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.</p>
                            <div class="view-all"><a href="MakaleDetay.aspx">More Info</a></div>
                        </div>
                    </div>
                    <div class="listview_1_of_2 images_1_of_2">
                        <div class="listimg listimg_2_of_1">
                            <img src="images/service-2.png" alt="" />
                        </div>
                        <div class="text list_2_of_1">
                            <h4>Service - 02</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt  ut labore et dolore.Lorem ipsum dolor sit amet  sed do eiusmod tempor incididunt ut labore.Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                            <div class="view-all"><a href="MakaleDetay.aspx">More Info</a></div>
                        </div>
                    </div>
                </div>
                <div class="section group service_desc">
                    <div class="listview_1_of_2 images_1_of_2">
                        <div class="listimg listimg_2_of_1">
                            <img src="images/service-3.png" alt="" />
                        </div>
                        <div class="text list_2_of_1">
                            <h4>Service - 01</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt  ut labore et dolore.Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.</p>
                            <div class="view-all"><a href="MakaleDetay.aspx">More Info</a></div>
                        </div>
                    </div>
                    <div class="listview_1_of_2 images_1_of_2">
                        <div class="listimg listimg_2_of_1">
                            <img src="images/service-4.png" alt="" />
                        </div>
                        <div class="text list_2_of_1">
                            <h4>Service - 02</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt  ut labore et dolore.Lorem ipsum dolor sit amet  sed do eiusmod tempor incididunt ut labore.Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                            <div class="view-all"><a href="MakaleDetay.aspx">More Info</a></div>
                        </div>
                    </div>
                </div>
                <div class="section group service_desc">
                    <div class="listview_1_of_2 images_1_of_2">
                        <div class="listimg listimg_2_of_1">
                            <img src="images/service-5.png" alt="" />
                        </div>
                        <div class="text list_2_of_1">
                            <h4>Service - 01</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt  ut labore et dolore.Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.</p>
                            <div class="view-all"><a href="MakaleDetay.aspx">More Info</a></div>
                        </div>
                    </div>
                    <div class="listview_1_of_2 images_1_of_2">
                        <div class="listimg listimg_2_of_1">
                            <img src="images/service-6.png" alt="" />
                        </div>
                        <div class="text list_2_of_1">
                            <h4>Service - 02</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt  ut labore et dolore.Lorem ipsum dolor sit amet  sed do eiusmod tempor incididunt ut labore.Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                            <div class="view-all"><a href="MakaleDetay.aspx">More Info</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="sidebar">
        <div class="sidebar_right_top">
            <h3>Haberler</h3>
            <div class="latestnews">
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


                    <div class="view-all"><a href="MakaleDetay.aspxs">ViewAll</a></div>
                </div>
            </div>
            <div class="sidebar_right_bottom">
                <h3>Member Login</h3>
                <div class="login_form">
                    <form>
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
                    </form>
                    <h4>Free registration <a href="#">Click here</a></h4>
                </div>
            </div>
        </div>
</asp:Content>
