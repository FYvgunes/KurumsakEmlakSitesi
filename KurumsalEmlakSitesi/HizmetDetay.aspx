<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="HizmetDetay.aspx.cs" Inherits="KurumsalEmlakSitesi.HizmetDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="wrap">
        <div class="services_grid">
            <div class="content_bottom">
            </div>
        </div>
    </div>
    <div class="sidebar">
        <div class="sidebar_right_top">
            <h3>Latest News</h3>
            <div class="latestnews">
                <div class="latestnews_desc">
                    <h4>Jan 15, 2012</h4>
                    <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                    <span><a href="#">read more</a></span>
                </div>
                <div class="latestnews_desc">
                    <h4>Jan 20, 2013</h4>
                    <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                    <span><a href="#">read more</a></span>
                </div>
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
