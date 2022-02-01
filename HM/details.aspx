<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="HM.details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        
    </title>
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
        .auto-style3 {
            width: 100%;
        }
         .div-s {           
            width: 100%;
                      background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
                      color: white;
                      font-weight: bold;                         
                      padding-top:2%;           
        }

        .auto-style7 {
            width: 307px;
        }
        .auto-style8 {
            height: 32px;
        }
        .auto-style9 {
            width: 100%;
            height: 449px;
        }

        .auto-style13 {
            margin-left: 0px;
        }

    </style>
</head>
<body>
    <form runat="server" class="form-style1">
        <div class="div-s" >
        
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" Height="84px" Width="100%">
            <ItemTemplate>
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style7" style="padding-left: 10px; padding-top: 10px;">
                            <asp:Image ID="Image2" runat="server" Height="452px" ImageUrl='<%# Eval("postar") %>' Width="311px" BorderColor="#4290E2" BorderStyle="Outset" BorderWidth="2px" />
                        </td>
                        <td style="padding-top: 10px; padding-left: 20px">
                            <table class="auto-style9" style="border: 1px solid #000000; text-align: center">
                                <tr>
                                    <td style="border: 1px solid #000000">
                                        <asp:Label ID="Label21" runat="server" Text="Name " ForeColor="#4290E2"></asp:Label>
                                    </td>
                                    <td style="border: 1px solid #000000">
                                        <asp:Label ID="Label22" runat="server" Text='<%# Eval("name") %>' Font-Bold="True" ForeColor="#FFFFCC"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid #000000">
                                        <asp:Label ID="Label28" runat="server" Text="Year" ForeColor="#4290E2"></asp:Label>
                                    </td>
                                    <td style="border: 1px solid #000000">
                                        <asp:Label ID="Label23" runat="server" Text='<%# Eval("year") %>' Font-Bold="True" ForeColor="#FFFFCC"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8" style="border: 1px solid #000000">
                                        <asp:Label ID="Label25" runat="server" Text="Conutry" ForeColor="#4290E2"></asp:Label>
                                    </td>
                                    <td class="auto-style8" style="border: 1px solid #000000">
                                        <asp:Label ID="Label24" runat="server" Text='<%# Eval("country") %>' Font-Bold="True" ForeColor="#FFFFCC"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid #000000">
                                        <asp:Label ID="Label26" runat="server" Text="Language " ForeColor="#4290E2"></asp:Label>
                                    </td>
                                    <td style="border: 1px solid #000000">
                                        <asp:Label ID="Label27" runat="server" Text='<%# Eval("lang") %>' Font-Bold="True" ForeColor="#FFFFCC"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid #000000">
                                        <asp:Label ID="Label29" runat="server" Text="Type" ForeColor="#4290E2"></asp:Label>
                                    </td>
                                    <td style="border: 1px solid #000000">
                                        <asp:Label ID="Label30" runat="server" Text='<%# Eval("Type") %>' Font-Bold="True" ForeColor="#FFFFCC"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid #000000">
                                        <asp:Label ID="Label31" runat="server" Text="Rating " ForeColor="#4290E2"></asp:Label>
                                    </td>
                                    <td style="border: 1px solid #000000">
                                        <asp:Label ID="Label32" runat="server" Text='<%# Eval("rating") %>' Font-Bold="True" ForeColor="#FFFFCC"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid #000000">
                                        <asp:Label ID="Label33" runat="server" Text="Duration " ForeColor="#4290E2"></asp:Label>
                                    </td>
                                    <td style="border: 1px solid #000000">
                                        <asp:Label ID="Label34" runat="server" Text='<%# Eval("duration") %>' Font-Bold="True" ForeColor="#FFFFCC"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                &nbsp;<br />
                <table>
                    <tr>
                        <td style="vertical-align: top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#4290E2" Text="Story      "></asp:Label>
                            &nbsp; &nbsp;&nbsp; </td>
                        <td>
                            <asp:Label ID="Label20" runat="server" CssClass="auto-style13" Font-Size="Large" ForeColor="#FFFFCC" Height="83px" Text='<%# Eval("story") %>' Width="443px"></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <asp:Label ID="Label35" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#4290E2" Text="Stars       "></asp:Label>
                <br />
                <br />
                <table class="auto-style3" style="text-align: center">
                    <tr>
                        <td style="padding-top: 10px">
                            <asp:HyperLink ID="HyperLink1" runat="server" ImageWidth="130px" ImageUrl='<%# Eval("imst1") %>' NavigateUrl='<%# Eval("nst1", "starmoves.aspx?nam={0}") %>' ImageHeight="150px">[HyperLink1]</asp:HyperLink>
                        </td>
                        <td style="padding-top: 10px">
                            <asp:HyperLink ID="HyperLink2" runat="server" ImageWidth="130px" ImageUrl='<%# Eval("imst2") %>' ImageHeight="150px" NavigateUrl='<%# Eval("nst2", "starmoves.aspx?nam={0}") %>'>[HyperLink2]</asp:HyperLink>
                        </td>
                        <td style="padding-top: 10px">
                            <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl='<%# Eval("imst3") %>' ImageHeight="150px" ImageWidth="130px" NavigateUrl='<%# Eval("nst2", "starmoves.aspx?nam={0}") %>'>[HyperLink3]</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8" style="padding-top: 10px">
                            <asp:HyperLink ID="HyperLink7" runat="server" Text='<%# Eval("nst1") %>' Font-Overline="False" ForeColor="#FFFFCC" NavigateUrl='<%# Eval("nst1", "starmoves.aspx?nam={0}") %>'></asp:HyperLink>
                        </td>
                        <td class="auto-style8" style="padding-top: 10px">
                            <asp:HyperLink ID="HyperLink8" runat="server" Text='<%# Eval("nst2") %>' Font-Overline="False" ForeColor="#FFFFCC" NavigateUrl='<%# Eval("nst2", "starmoves.aspx?nam={0}") %>'></asp:HyperLink>
                        </td>
                        <td class="auto-style8" style="padding-top: 10px">
                            <asp:HyperLink ID="HyperLink9" runat="server" Text='<%# Eval("nst3") %>' Font-Overline="False" ForeColor="#FFFFCC" NavigateUrl='<%# Eval("nst3", "starmoves.aspx?nam={0}") %>'></asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [moves] WHERE ([id] = @id) ORDER BY [imst1]">
                <SelectParameters>
                    <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        
            <br />
            <br />
            <br />
            <br />
        
    </div>
    </form>
    
</body>
</html>
