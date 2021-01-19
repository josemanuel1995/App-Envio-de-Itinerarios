                    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebAppvuelo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <style type="text/css">
        .auto-style3 {
            height: 34px;
        }
        .auto-style5 {
            background: #FFFFFF;
            height: 94px;
            margin-left: 89px;
            margin-right: 103px;
            align-content: center;
            margin-top: 76px;
        }
        .auto-style6 {
            height: 217px;
            width: 1066px;
            margin-left: 90px;
            margin-top: 20px;
            margin-right: 255px;
        }
        .auto-style7 {
            width: 339px;
            margin-left: 433px;
        }
        .auto-style8 {
            margin-left: 19px;
        }
        .auto-style9 {
            margin-left: 350px;
        }
        .auto-style10 {
            margin-left: 541px;
            margin-top: 14px;
        }
        .auto-style11 {
            margin-left: 18px;
        }
        .auto-style12 {
            margin-left: 22px;
        }
        .auto-style13 {
            margin-left: 284px;
            margin-top: 20px;
        }
        .auto-style14 {
            background: url('img/avion.jpg') no-repeat;
            height: 279px;
            width: 1340px;
        }
    </style>

</head>
<body style="height: 542px; width: 1344px; margin-right: 287px;">
    <form id="form1" runat="server">

        <div class="auto-style14">
            <br />
            <div class="auto-style5">
                
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="origen" DataValueField="origen" Width="195px" CssClass="auto-style13" Height="16px">
                    </asp:DropDownList>
                    
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="destino" DataValueField="destino" Height="16px" Width="195px" CssClass="auto-style12">
                    </asp:DropDownList>
                    
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="fecha_vuelo" DataValueField="fecha_vuelo" Height="17px" Width="195px" CssClass="auto-style11">
                    </asp:DropDownList>
                

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Buscar vuelos" CssClass="auto-style10"/>
        </div>
        </div>
      
        <div class="auto-style6">

             <p align="center" class="auto-style7"> Disponibilidades de vuelos <p class="auto-style8"/>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idvuelo" DataSourceID="SqlDataSource1" ForeColor="Black" Visible="False" Width="483px" CssClass="auto-style9" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
            <Columns>
                <asp:BoundField DataField="idvuelo" HeaderText="idvuelo" InsertVisible="False" ReadOnly="True" SortExpression="idvuelo" />
                <asp:BoundField DataField="origen" HeaderText="origen" SortExpression="origen" />
                <asp:BoundField DataField="destino" HeaderText="destino" SortExpression="destino" />
                <asp:BoundField DataField="fecha_vuelo" HeaderText="fecha_vuelo" SortExpression="fecha_vuelo" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        </div>

        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bdvueloConnectionString22 %>" SelectCommand="SELECT * FROM [vuelo_destino] WHERE (([origen] = @origen) AND ([destino] = @destino))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="origen" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="destino" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p class="auto-style3">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:bdvueloConnectionString20 %>" SelectCommand="SELECT DISTINCT [origen], [destino], [fecha_vuelo] FROM [vuelo_destino]"></asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
