<%@ Page Language="C#" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="movielist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-family: "Courier New", Courier, monospace;
            font-size: xx-large;
            text-decoration: underline;
        }
    </style>
</head>
<body background="cam%20roll.jpg">
    <form id="form1" runat="server">
    <div class="style1">
    
        <strong><em style="font-size: xx-large">&nbsp;&nbsp; MovieTime</em></strong></div>
    <p>
    
        <strong><em style="font-size: xx-large">
       
        </em></strong></p>
    <p>
            <asp:HyperLink ID="HyperLink1" runat="server" BackColor="Purple" Font-Bold="False"
            Font-Names="Arial Black" Font-Size="XX-Large" ForeColor="Thistle" Style="z-index: 102;
            left: 299px; position: absolute; top: 102px; width: 405px;">Movie List </asp:HyperLink>
              
     
    </p>
    <asp:Image ID="Image2" runat="server" Height="211px" ImageUrl="~/starwars.jpg" 
        style="top: 436px; left: 6px; position: absolute" Width="178px" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        
        SelectCommand="SELECT Movie, [Year of Release] AS Year_of_Release, Actors, Producer FROM movielist ORDER BY Movie"></asp:SqlDataSource>
    <p>
        <asp:Button ID="Button1" runat="server" PostBackUrl="add.aspx"
            style="top: 524px; left: 859px; position: absolute; height: 26px; width: 89px" 
            Text="ADD/EDIT" />
        
    </p>
    <p>
        &nbsp;</p>
         <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" PostBackUrl="homepage.aspx" Style="z-index: 103;
            left: 934px; position: absolute; top: 576px" Width="60px" 
        BackColor="#FF99FF">Back</asp:LinkButton>
     
    <asp:Label ID="Label1" runat="server" BackColor="White" 
        style="top: 528px; left: 540px; position: absolute; height: 19px; width: 301px" 
        Text="Not finding the movie you are looking for?"></asp:Label>
     
    <p>
        
        &nbsp;</p>
    <asp:GridView ID="GridView1" runat="server" BackColor="#99FFCC" 
        BackImageUrl="~/pctlogo.png" 
        
        style="top: 196px; left: 386px; position: absolute; right: 10px; width: 638px; height: 320px;" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <Columns>
                <asp:BoundField DataField="Movie" HeaderText="Movie" SortExpression="Movie" />
                <asp:BoundField DataField="Year_of_Release" HeaderText="Year_of_Release" 
                    SortExpression="Year_of_Release" />
                <asp:BoundField DataField="Actors" HeaderText="Actors" 
                    SortExpression="Actors" />
                <asp:BoundField DataField="Producer" HeaderText="Producer" 
                    SortExpression="Producer" />
        </Columns>
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
    </asp:GridView>
     
    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="movie1.aspx"
            style="top: 271px; left: 1095px; position: absolute; width: 132px" 
            BackColor="#CC66FF">Bajirao Mastani</asp:LinkButton>
        
    <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="movie3.aspx" 
        BackColor="#CC99FF" 
        
        
        style="top: 385px; left: 1098px; position: absolute; height: 19px; width: 73px">Padmaavat</asp:LinkButton>
     
    <p>
        &nbsp;<asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="movie2.aspx" 
        BackColor="#CC99FF" 
        
            
            
            style="left: 1095px; position: absolute; height: 21px; width: 149px; right: 49px; top: 326px;">Hum Saath Saath Hain</asp:LinkButton>
        
        </p>
    <p>
        
        <asp:Image ID="Image1" runat="server" Height="216px" 
            ImageUrl="~/Hotel_Transylvania_3_(2018)_Poster.jpg" 
            style="top: 194px; left: 7px; position: absolute; right: 888px;" 
            Width="178px" />
            </p>
    <p>
        &nbsp;</p>
        
    <p>
        &nbsp;</p>
    <p>
    <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="movie4.aspx" 
        BackColor="#CC99FF" 
        
        
        
            
            
            style="top: 431px; left: 1095px; position: absolute; height: 22px; width: 257px">Prem Ratan Dhan Payo</asp:LinkButton>
    </p>
        
    </form>
    <p>
        &#39;
        &#39;</p>
    <p>
        &nbsp;</p>
    </body>
</html>
