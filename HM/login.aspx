<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="HM.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

        .auto-style3 {
            width: 100%;
            height: 209px;
        }
        .div_c{
            width:50%;
            padding-left :25% ;
            padding-right :25%;
            padding-top:8%;

        }
       

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div  class="div_c">
            <table class="auto-style3" style="border: 2px outset #ABD3F2;">
                <tr>
                    <td style="text-align: center; background-color: #007ACC;">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="LOG IN"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">User Name :
                        <asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">Password :&nbsp;&nbsp;
                        <asp:TextBox ID="pas" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
