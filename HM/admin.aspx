<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="HM.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #FFFFFF">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 151px;
        }
        .auto-style2 {
            height: 155px;
        }
        .auto-style3 {
            height: 52px;
        }
        .auto-style4 {
            height: 54px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data" style="background-color: #FFFFFF">
        <table>
            <tr>
                <td>
                    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                        <EditItemTemplate>
                            <table>
                            </table>
                            &nbsp;&nbsp;<table>
                                <tr>
                                    <td>Name :</td>
                                    <td>
                                        <asp:TextBox ID="name_m" runat="server" Text='<%# Bind("name") %>' Width="175px"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>Year : </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="year" DataValueField="yearid" SelectedValue='<%# Bind("year") %>' Width="180px">
                                            <asp:ListItem>   </asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [year]"></asp:SqlDataSource>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>Type:</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="type" DataValueField="type" SelectedValue='<%# Bind("Type") %>' Width="180px">
                                            <asp:ListItem> </asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [type]"></asp:SqlDataSource>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        Country :</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource4" DataTextField="country" DataValueField="country" Width="180px">
                                            <asp:ListItem Value="   0">   </asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [country]"></asp:SqlDataSource>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>Language :</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="lang" DataValueField="lang" SelectedValue='<%# Bind("lang") %>' Width="180px">
                                            <asp:ListItem> </asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [lang]"></asp:SqlDataSource>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        Duration :</td>
                                    <td>
                                        <asp:TextBox ID="duration_m" runat="server" Text='<%# Bind("duration") %>' Width="175px"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>Rating :</td>
                                    <td>
                                        <asp:TextBox ID="rating_m" runat="server" Text='<%# Bind("rating") %>' Width="175px"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                            &nbsp;&nbsp;<table>
                                <tr>
                                    <td style="vertical-align: top">Story :</td>
                                    <td>
                                        <asp:TextBox ID="story_m" runat="server" Height="153px" Text='<%# Bind("story") %>' TextMode="MultiLine" Width="188px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <table class="auto-style1">
                                            <tr>
                                                <td style="vertical-align: top">stars:</td>
                                                <td>
                                                    <table class="auto-style2">
                                                        <tr>
                                                            <td class="auto-style3" style="vertical-align: top">name star 1
                                                                <br />
                                                                <asp:TextBox ID="name_star1" runat="server" Text='<%# Bind("nst1") %>' Width="175px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="vertical-align: top">name star 2
                                                                <br />
                                                                <asp:TextBox ID="name_star4" runat="server" Text='<%# Bind("nst2") %>' Width="175px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="vertical-align: top">name star 3<br />
                                                                <asp:TextBox ID="name_star5" runat="server" Text='<%# Bind("nst3") %>' Width="175px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <asp:TextBox ID="poster_txt0" runat="server" Visible="False" Height="22px" Text='<%# Bind("postar") %>'></asp:TextBox>
                            <br />
&nbsp;<asp:TextBox ID="poster_txt1" runat="server" Height="22px" Text='<%# Bind("imst1") %>' Visible="False"></asp:TextBox>
                            <br />
                            <br />
                            &nbsp;<asp:TextBox ID="poster_txt2" runat="server" Text='<%# Bind("imst2") %>' Visible="False"></asp:TextBox>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="poster_txt3" runat="server" Height="22px" Text='<%# Bind("imst3") %>' Visible="False"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="UpdateButton" runat="server" BorderStyle="Outset" CausesValidation="True" CommandName="Update" Text="Update" ValidationGroup="Insert" OnClick="UpdateButton_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="UpdateCancelButton" runat="server" BorderStyle="Outset" CausesValidation="False" CommandName="Cancel" Text="Cancel" OnClick="UpdateCancelButton_Click" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <table>
                                <tr>
                                    <td>Name :</td>
                                    <td>
                                        <asp:TextBox ID="name_m" runat="server" Text='<%# Bind("name") %>' Width="175px"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>Year : </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList1" runat="server" Width="180px" DataSourceID="SqlDataSource1" DataTextField="year" DataValueField="yearid" SelectedValue='<%# Bind("year") %>'>
                                            <asp:ListItem>   </asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [year]"></asp:SqlDataSource>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>Type:</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList2" runat="server" Width="180px" DataSourceID="SqlDataSource2" DataTextField="type" DataValueField="type" SelectedValue='<%# Bind("Type") %>'>
                                            <asp:ListItem> </asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [type]"></asp:SqlDataSource>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>Country :</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList4" runat="server" Width="180px" DataSourceID="SqlDataSource4" DataTextField="country" DataValueField="country" SelectedValue='<%# Bind("country") %>'>
                                            <asp:ListItem Value="   0">   </asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [country]"></asp:SqlDataSource>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>Language :</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList3" runat="server" Width="180px" DataSourceID="SqlDataSource3" DataTextField="lang" DataValueField="lang" SelectedValue='<%# Bind("lang") %>'>
                                            <asp:ListItem> </asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [lang]"></asp:SqlDataSource>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>Duration :</td>
                                    <td>
                                        <asp:TextBox ID="duration_m" runat="server" Text='<%# Bind("duration") %>' Width="175px"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>Rating :</td>
                                    <td>
                                        <asp:TextBox ID="rating_m" runat="server" Text='<%# Bind("rating") %>' Width="175px"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                            &nbsp;&nbsp;<table>
                                <tr>
                                    <td style="vertical-align: top">Story :</td>
                                    <td>
                                        <asp:TextBox ID="story_m" runat="server" Height="153px" Text='<%# Bind("story") %>' TextMode="MultiLine" Width="188px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <table class="auto-style1">
                                            <tr>
                                                <td style="vertical-align: top">stars:</td>
                                                <td>
                                                    <table class="auto-style2">
                                                        <tr>
                                                            <td class="auto-style3" style="vertical-align: top">name star 1
                                                                <br />
                                                                <asp:TextBox ID="name_star1" runat="server" Text='<%# Bind("nst1") %>' Width="175px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="vertical-align: top">name star 2
                                                                <br />
                                                                <asp:TextBox ID="name_star4" runat="server" Text='<%# Bind("nst2") %>' Width="175px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="vertical-align: top">name star 3<br />
                                                                <asp:TextBox ID="name_star5" runat="server" Text='<%# Bind("nst3") %>' Width="175px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <asp:TextBox ID="poster_txt0" runat="server" Height="22px" Text='<%# Bind("postar") %>' Visible="False"></asp:TextBox>
                            <br />
                            &nbsp;<asp:TextBox ID="poster_txt1" runat="server" Text='<%# Bind("imst1") %>' Height="22px" Visible="False"></asp:TextBox>
                            <br />
                            <br />
                            &nbsp;<asp:TextBox ID="poster_txt2" runat="server" Text='<%# Bind("imst2") %>' Visible="False"></asp:TextBox>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="poster_txt3" runat="server" Height="22px" Text='<%# Bind("imst3") %>' Visible="False"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="InsertButton" runat="server" BorderStyle="Outset" CausesValidation="True" CommandName="Insert" OnClick="InsertButton_Click" Text="Insert" ValidationGroup="Insert" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="InsertCancelButton" runat="server" BorderStyle="Outset" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <table>
                                <tr>
                                    <td>Name :</td>
                                    <td>
                                        <asp:TextBox ID="name_m" runat="server" Text='<%# Bind("name") %>' Width="175px" ReadOnly="True"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>Year : </td>
                                    <td>
                                        <asp:TextBox ID="year_m" runat="server" ReadOnly="True" Text='<%# Bind("year") %>' Width="175px"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>Type:</td>
                                    <td>
                                        <asp:TextBox ID="type_m" runat="server" ReadOnly="True" Text='<%# Bind("Type") %>' Width="175px"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>Country :</td>
                                    <td>
                                        <asp:TextBox ID="conu_m" runat="server" Text='<%# Bind("country") %>' Width="175px" ReadOnly="True"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>Language :</td>
                                    <td>
                                        <asp:TextBox ID="lng_m" runat="server" ReadOnly="True" Text='<%# Bind("lang") %>' Width="175px"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>Duration :</td>
                                    <td>
                                        <asp:TextBox ID="duration_m" runat="server" Text='<%# Bind("duration") %>' Width="175px" ReadOnly="True"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>Rating :</td>
                                    <td>
                                        <asp:TextBox ID="rating_m" runat="server" ReadOnly="True" Text='<%# Bind("rating") %>' Width="175px"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                            &nbsp;&nbsp;<table>
                                <tr>
                                    <td style="vertical-align: top">stars:</td>
                                    <td>
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:Image ID="Image1" runat="server" Height="111px" ImageUrl='<%# Eval("imst1") %>' Width="185px" />
                                                </td>
                                                <td>
                                                    <asp:Image ID="Image4" runat="server" Height="111px" ImageUrl='<%# Eval("imst2") %>' Width="185px" />
                                                </td>
                                                <td>
                                                    <asp:Image ID="Image5" runat="server" Height="111px" ImageUrl='<%# Eval("imst3") %>' Width="185px" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID="name_star1" runat="server" Width="175px" Text='<%# Bind("nst1") %>' ReadOnly="True"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="name_star2" runat="server" Width="175px" Text='<%# Bind("nst2") %>' ReadOnly="True"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="name_star3" runat="server" Width="175px" Text='<%# Bind("nst3") %>' ReadOnly="True"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <table>
                                <tr>
                                    <td style="vertical-align: top">Story :</td>
                                    <td>
                                        <asp:TextBox ID="story_m" runat="server" Height="153px" ReadOnly="True" Text='<%# Bind("story") %>' TextMode="MultiLine" Width="188px"></asp:TextBox>
                                    </td>
                                    <td style="vertical-align: top">poster:</td>
                                    <td>
                                        <asp:Image ID="Image6" runat="server" Height="153px" ImageUrl='<%# Eval("postar") %>' Width="185px" />
                                    </td>
                                </tr>
                            </table>
                            <br />
                            &nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="EditButton" runat="server" BorderStyle="Outset" CausesValidation="False" CommandName="Edit" Text="Edit" OnClick="EditButton_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="DeleteButton" runat="server" BorderStyle="Outset" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="NewButton" runat="server" BorderStyle="Outset" CausesValidation="False" CommandName="New" OnClick="NewButton_Click" Text="New" />
                        </ItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [moves] WHERE [id] = @id" InsertCommand="INSERT INTO [moves] ([name], [year], [Type], [lang], [country], [postar], [story], [rating], [duration], [nst1], [nst2], [nst3], [imst1], [imst2], [imst3]) VALUES (@name, @year, @Type, @lang, @country, @postar, @story, @rating, @duration, @nst1, @nst2, @nst3, @imst1, @imst2, @imst3)" SelectCommand="SELECT * FROM [moves]" UpdateCommand="UPDATE [moves] SET [name] = @name, [year] = @year, [Type] = @Type, [lang] = @lang, [country] = @country, [postar] = @postar, [story] = @story, [rating] = @rating, [duration] = @duration, [nst1] = @nst1, [nst2] = @nst2, [nst3] = @nst3, [imst1] = @imst1, [imst2] = @imst2, [imst3] = @imst3 WHERE [id] = @id">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="year" Type="String" />
                            <asp:Parameter Name="Type" Type="String" />
                            <asp:Parameter Name="lang" Type="String" />
                            <asp:Parameter Name="country" Type="String" />
                            <asp:Parameter Name="postar" Type="String" />
                            <asp:Parameter Name="story" Type="String" />
                            <asp:Parameter Name="rating" Type="String" />
                            <asp:Parameter Name="duration" Type="String" />
                            <asp:Parameter Name="nst1" Type="String" />
                            <asp:Parameter Name="nst2" Type="String" />
                            <asp:Parameter Name="nst3" Type="String" />
                            <asp:Parameter Name="imst1" Type="String" />
                            <asp:Parameter Name="imst2" Type="String" />
                            <asp:Parameter Name="imst3" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="year" Type="String" />
                            <asp:Parameter Name="Type" Type="String" />
                            <asp:Parameter Name="lang" Type="String" />
                            <asp:Parameter Name="country" Type="String" />
                            <asp:Parameter Name="postar" Type="String" />
                            <asp:Parameter Name="story" Type="String" />
                            <asp:Parameter Name="rating" Type="String" />
                            <asp:Parameter Name="duration" Type="String" />
                            <asp:Parameter Name="nst1" Type="String" />
                            <asp:Parameter Name="nst2" Type="String" />
                            <asp:Parameter Name="nst3" Type="String" />
                            <asp:Parameter Name="imst1" Type="String" />
                            <asp:Parameter Name="imst2" Type="String" />
                            <asp:Parameter Name="imst3" Type="String" />
                            <asp:Parameter Name="id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <asp:Panel ID="Panel0" runat="server" BackColor="White" Height="244px" Width="546px" Visible="False">
            &nbsp;<table>
                <tr>
                    <td>Poster :</td>
                    <td>
                        <asp:FileUpload ID="Up_poster" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Stars :</td>
                    <td>
                        <table>
                            <tr>
                                <td class="auto-style4">img star 1<br />
                                    <asp:FileUpload ID="Upload_star1" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>img star 2<br />
                                    <asp:FileUpload ID="Upload_star2" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>img star 3<br />
                                    <asp:FileUpload ID="Upload_star3" runat="server" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />&nbsp;&nbsp;&nbsp;&nbsp;
        <br />&nbsp;<br />&nbsp;</form>
    <br />
    <br />
    </body>
</html>
