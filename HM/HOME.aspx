<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HOME.aspx.cs" Inherits="HM.HOME" %>

<!DOCTYPE html>

<html >
<head runat="server">
    <link href='https://css.gg/css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="shortcut icon" type="image/x-icon" href="~/ows.ico" />
    <title></title>
    <style type="text/css">
         body {
  background-image: url("/img/ba.jpg");
   background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
        .form-style1 {
            background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
            color: white;
            font-weight: bold;
           
            height: 83px;                 
            margin-left: 20%;    
            margin-right: 20%;                        
            width:60%;           
            color: white;

        }
        .search {
    width: 100%;
    padding-top :1px;
    padding-bottom :1px;
    padding-left:1px;
    background: #358ab1;
    position: relative;
    display: flex;
     border-radius: 7px 5px 7px 5px;
}
        .searchButton {
   margin-left:8.9px;
    height: 20px;
    border: 1px solid #358ab1;
    background: #358ab1;
    text-align: center;
    color: #fff;
    border-radius: 0 5px 5px 0;
    cursor: pointer;
    font-size: 20px;
}
        .searchTerm {
    width: 100%;
    border: 3px solid #358ab1;
   padding-bottom:2px;
    border-right: none;
    
    height: 20px;
    border-radius: 5px 0 0 5px;
    outline: none;
    color: #9DBFAF;
}        
          .Downdiv-style {
            background: #358ab1;
            width: 100%;
            position: relative;                 
            top: 0px;
            height: 30px;
            border-radius: 2px 2px 2px 2px;
          }
       .menu-item {
    position: relative;    
    text-align: center;  
    line-height: 2.5rem;
    top: 4px;
    margin-left :7%;
   width:15%;
}
          .div-style1 {
                            
                      background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
                      color: white;
                      font-weight: bold;                         
                      padding-top:5%;    
         
        }
             .dbut-style1 {
                            
                      background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
                      color: white;
                      font-weight: bold;     
                      
                      
                         
         
              }          

        .auto-style2 {
            height: 36px;
        }

        .auto-style6 {
            width: 695px;
        }

        .auto-style7 {
            width: 99%;
        }

        .auto-style8 {
            position: relative;
            text-align: center;
            line-height: 2.5rem;
            top: 4px;
            margin-left : 7%;
            width: 15%;
            left: 0px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server" class="form-style1">
         <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [lang]"></asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [type]"></asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [country]"></asp:SqlDataSource>
    
         <div class="search">
             <table class="auto-style7" >
                 <tr >
                     <td class="auto-style6">
            
             <asp:TextBox ID="TextBox1" runat="server" Width="100%" Height="24px"   > </asp:TextBox>
         
                        
                     </td>
                     <td style="padding-left: 10px">
         
            
                         
                    
         
            
                         
                         <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Overline="True" ForeColor="White" Font-Size="Large" OnClick="LinkButton1_Click">       <i class="fa fa-search"></i></asp:LinkButton>
         
            
                         
                    
         
            
                         
                     </td>
                 </tr>
             </table>
   </div>
        <div class="dbut-style1">
            <asp:Button ID="Button1" runat="server" Text="Admin" Width="10%" BackColor="#358AB1" BorderColor="Black" BorderStyle="Inset" BorderWidth="2px" OnClick="Button1_Click" ForeColor="White" Height="22px" />
        </div>
        <div class="Downdiv-style">
     <asp:DropDownList ID="DropDownList3" runat="server" CssClass="menu-item" DataSourceID="SqlDataSource2" DataTextField="country" DataValueField="country" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
     <asp:DropDownList ID="DropDownList4" runat="server" CssClass="auto-style8" DataSourceID="SqlDataSource3" DataTextField="type" DataValueField="type" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
     <asp:DropDownList ID="DropDownList5" runat="server" CssClass="auto-style8" DataSourceID="SqlDataSource4" DataTextField="lang" DataValueField="lang" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
     <asp:DropDownList ID="DropDownList6" runat="server" CssClass="menu-item" DataSourceID="SqlDataSource5" DataTextField="year" DataValueField="year" OnSelectedIndexChanged="DropDownList6_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
           
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [year]"></asp:SqlDataSource>
           
        </div>
        
             <div  class="div-style1">

             <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="4" Width="100%">
                 <EditItemStyle Wrap="True" />
                 <ItemStyle HorizontalAlign="Center" Wrap="True" />
                 <ItemTemplate>
                     <table style="border-style: none;">
                         <tr>
                             <td class="auto-style2" style="border-style: none; vertical-align: bottom;">
                                 <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl='<%# Eval("postar") %>' NavigateUrl='<%# Eval("id", "details.aspx?id={0}") %>' ImageHeight="225px" ImageWidth="150px">[HyperLink1]</asp:HyperLink>
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
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [moves]"></asp:SqlDataSource>

        </div>
        
    </form>
        
    </body>
</html>
