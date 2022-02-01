<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="starmoves.aspx.cs" Inherits="HM.starmoves" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
                      body {
  background-image: url("/img/ba.jpg");
   background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
                         .form-style1 {
                        margin-left: 20%;    
            margin-right: 20%;                        
            width:60%;
            height: 83px;                 
                       
            color: white;
        }
                          .div-s {           
            width: 100%;
                      background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
                      color: white;
                      font-weight: bold;                         
                      padding-top:2%;           
        }
        .auto-style1 {
            width: 121px;
        }
        .auto-style2 {
            width: 246px;
        }
        .auto-style3 {
            width: 260px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="form-style1">
        <div class="div-s">
            <table>
                <tr>
                    <td class="auto-style3" style="padding-top: 10px; padding-left: 10px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style1" style="vertical-align: middle;">
                        <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Size="Larger" ForeColor="#4290E2"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />

             <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="4" Width="100%">
                 <EditItemStyle Wrap="True" />
                 <ItemStyle HorizontalAlign="Center" Wrap="True" />
                 <ItemTemplate>
                     <table style="border-style: none;">
                         <tr>
                             <td class="auto-style2" style="border-style: none; vertical-align: bottom;">
                                 <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl='<%# Eval("postar") %>' NavigateUrl='<%# Eval("id", "details.aspx?id={0}") %>' ImageHeight="250px" ImageWidth="175px">[HyperLink1]</asp:HyperLink>
                             </td>
                         </tr>
                         <tr>
                             <td style="text-align: center">
                                 <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("Id", "detalis.aspx?id={0}") %>' Text='<%# Eval("name") %>' Font-Overline="False" ForeColor="#FFFFCC"></asp:HyperLink>
                             </td>
                         </tr>
                     </table>
                     <br />
                     <br />
                 </ItemTemplate>
             </asp:DataList>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [moves] WHERE ([nst1] = @nst1) OR ([nst2] = @nst1) OR ([nst3] = @nst1)  ORDER BY [nst1] DESC, [nst2] DESC, [nst3] DESC">
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
