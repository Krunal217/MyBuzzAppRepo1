﻿<%@ page title="" language="C#" masterpagefile="~/User (Student)/HomeMaster.master" autoeventwireup="true" inherits="User__Student_UserSearchE_Materials, App_Web_htqrhh3e" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <head>
        <style type="text/css">
            .drp
            {
                width: 100%;
                box-shadow: 1px 1px 1px black;
                height: 100%px;
                margin-left: 2%;
                margin-top: 1%;
                border-radius: 25px;
            }
            .cls
            {
                border: 0px solid gray;
                width: 100%;
                height: auto;
                padding: 15px;
                margin-top: 30px;
                margin-left: 95px;
                border-radius: 10px 10px 10px 10px;
                box-shadow: 0px 0px 20px #072C53;
                margin: 5px 0px 0px 0px;
            }
            #reg
            {
                margin: 5px 0px 0px 295px;
            }
        </style>
        <script type="text/javascript">
            function download(file) {
                window.location = file;
            }
        </script>
    </head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <fieldset class="cls">
        <div style="width: 100%; height: auto;">
            <cc1:TabContainer ID="TabContainer1" runat="server" TabIndex="0">
                <cc1:TabPanel ID="TabPanel1" runat="server" HeaderText="E-Books" TabIndex="0">
                    <ContentTemplate>
                        <br />
                        <table>
                            <tr>
                                <td>
                                    <asp:DropDownList ID="drpcategory" runat="server" Width="100%" 
                                        AutoPostBack="True" onselectedindexchanged="drpcategory_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:DropDownList ID="drpsubcategory" runat="server" Width="100%">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:Button ID="btnsearch" runat="server" Text="Search" 
                                        onclick="btnsearch_Click" />
                                </td>
                            </tr>
                        </table>
                        <table style="margin-top: 0px;" align="center" width="100%">
                            <tr align="left">
                                <td colspan="5">
                                    <div style="overflow: auto; height: 100%; width: 100%;">
                                        <div style="width: 100%;">
                                            <asp:Repeater ID="repeatersearchbook" runat="server" 
                                                onitemcommand="repeatersearchbook_ItemCommand">
                                                <HeaderTemplate>
                                                    <table style="border: 1px solid #df5015; width: 100%" cellpadding="0">
                                                        <tr style="background-color: #df5015; color: White">
                                                            <td colspan="2">
                                                                <b>Books</b>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <table style="background-color: #EBEFF0; border-top: 1px dotted #df5015; width: 100%">
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblbook" runat="server" Text="Book Name : "></asp:Label>
                                                                <asp:Label ID="lblbookname" runat="server" Text='<%#bind("bookname") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:LinkButton ID="lnkbtnbook" runat="server" BackColor="#EBEFF0" CommandName="Download" CommandArgument='<%#bind("bookfile") %>'>Download....</asp:LinkButton>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </cc1:TabPanel>
            </cc1:TabContainer>
        </div>
    </fieldset>
</asp:Content>
