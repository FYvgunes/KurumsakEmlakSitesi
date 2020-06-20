<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="KurumsalEmlakSitesi.iletisim" %>
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

                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProjeResim") %>' />
                            </ItemTemplate>
                        </asp:Repeater>
                        <div class="view-all"><a href="events.html">See All</a></div>
                    </div>
			    	</div>
	    		</div>
	  		</div> 
       <div class="content">
		      <div class="content_bottom">
		      	<h2>İletişim</h2>
		      	<div class="contact-form">
					    <form method="post" action="contact-post.html">
					    	<div>
						    	<span><label>Ad</label></span>
                                <asp:TextBox ID="txt_ad" runat="server" CssClass="textbox" ></asp:TextBox>
						    	
						    </div>
						    <div>
                        
						    	<span><label>E-mail</label></span>
                                <asp:TextBox ID="txt_mail" runat="server" CssClass="textbox" ></asp:TextBox>
						    	
						    </div>
						    <div>
						    	<span><label>İçerik</label></span>
                                <asp:TextBox ID="txt_icerik" runat="server" CssClass="textbox"  TextMode="MultiLine"></asp:TextBox>
						    	
						    </div>
                            
						   <div>
						   		<asp:Button ID="btn_gonder" runat="server" CssClass="submit_button" Text="Gönder" OnClick="btn_gonder_Click" />
						  </div>
                            <div>
                                    <asp:Label ID="Label4" runat="server" Text="Label" Visible="false" ForeColor="Green"></asp:Label>
                            </div>
					    </form>
				  </div>
				 		 <div class="contact_info">
				 		 	<h2>Adresimiz</h2>
					    	  <div class="map">
							   	    <iframe src="https://www.google.com/maps/embed?pb=!1m24!1m12!1m3!1d7156.1047403145185!2d28.844542612575786!3d41.052127687352176!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m9!3e6!4m3!3m2!1d41.0338888!2d28.8467308!4m3!3m2!1d41.0566785!2d28.8467371!5e0!3m2!1sen!2str!4v1592682190820!5m2!1sen!2str" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe><br><small><a href="https://maps.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265" style="color:#777;text-align:left;font-size:0.85em">View Larger Map</a></small>
							  </div>
      				</div>
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
        		<form>
        		 <div>
				   <span><label>User Name</label></span>
				   <span><input name="userName" type="text" class="textbox"></span>
			     </div>
	        	 <div>
				   <span><label>Password</label></span>
				   <span><input name="userName" type="password"></span>
			     </div>
	        	  <div>
					 <span><input type="submit" class="mybutton" value="Submit"></span>
				  </div>
	        	  <span><a href="#">Forgot Password ?</a></span>
	          </form>
        	  	   <h4>Free registration <a href="#">Click here</a></h4>
        	</div>
         </div>
       </div>k
       </div>k
</asp:Content>
