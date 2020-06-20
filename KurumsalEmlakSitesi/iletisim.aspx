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
		      	<h2>Contact Us</h2>
		      	<div class="contact-form">
					    <form method="post" action="contact-post.html">
					    	<div>
						    	<span><label>Name</label></span>
						    	<span><input name="userName" type="text" class="textbox"></span>
						    </div>
						    <div>
						    	<span><label>E-mail</label></span>
						    	<span><input name="userEmail" type="text" class="textbox"></span>
						    </div>
						    <div>
						    	<span><label>Subject</label></span>
						    	<span><textarea name="userMsg"> </textarea></span>
						    </div>
						   <div>
						   		<span><input type="submit" class="submit_button" value="Send"></span>
						  </div>
					    </form>
				  </div>
				 		 <div class="contact_info">
				 		 	<h2>Find Us Here</h2>
					    	  <div class="map">
							   	    <iframe width="100%" height="175" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265&amp;output=embed"></iframe><br><small><a href="https://maps.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265" style="color:#777;text-align:left;font-size:0.85em">View Larger Map</a></small>
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
