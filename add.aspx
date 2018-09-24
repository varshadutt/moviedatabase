<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add.aspx.cs" Inherits="newmovie" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="#ffcccc" style="height: 425px">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <h1>
        Want To Add A Movie?</h1>
    <p>
        <asp:Label ID="Label1" runat="server" 
            style="left: 4px; position: absolute; height: 19px; width: 34px; top: 111px" 
            Text="Movie"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource2" 
            style="top: 111px; left: 529px; position: absolute; height: 229px; width: 401px">
            <Columns>
                <asp:BoundField DataField="Movies" HeaderText="Movies" 
                    SortExpression="Movies" />
                <asp:BoundField DataField="Year of Release" HeaderText="Year of Release" 
                    SortExpression="Year of Release" />
                <asp:BoundField DataField="Actors" HeaderText="Actors" 
                    SortExpression="Actors" />
                <asp:BoundField DataField="Producer" HeaderText="Producer" 
                    SortExpression="Producer" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [newmovie]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" 
            style="top: 334px; left: 7px; position: absolute; height: 19px; width: 65px" 
            Text="Producer"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" 
            style="top: 149px; left: 7px; position: absolute; height: 22px; width: 165px"></asp:TextBox>
    </p>
    <p>
    <asp:Label ID="Label2" runat="server" 
        style="top: 256px; left: 10px; position: absolute; height: 19px; width: 34px" 
        Text="Actor"></asp:Label>
    </p>
    
    <asp:Label ID="Label4" runat="server" 
        style="top: 174px; left: 10px; position: absolute; height: 19px; width: 112px" 
        Text="Year of Release"></asp:Label>
    <p>
        &nbsp;</p>
    <p>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        style="top: 403px; left: 511px; position: absolute; height: 26px; width: 56px" 
        Text="Add" />
    </p>
    
    <p>
        <asp:TextBox ID="TextBox2" runat="server" 
            style="top: 203px; left: 4px; position: absolute; height: 22px; width: 160px"></asp:TextBox>
    </p>
    <asp:TextBox ID="TextBox3" runat="server" 
        style="top: 282px; left: 3px; position: absolute; height: 22px; width: 161px"></asp:TextBox>
    <asp:TextBox ID="TextBox4" runat="server" 
        style="top: 357px; left: 4px; position: absolute; height: 22px" Width="156px"></asp:TextBox>
    
    </form>
    </body>
</html>
