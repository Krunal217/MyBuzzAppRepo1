﻿<%@ page title="" language="C#" masterpagefile="~/Visitors/Visitor.master" autoeventwireup="true" inherits="Visitors_VisitorContactUS, App_Web_aydit35v" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <head>
        <style type="text/css">
            .addres
            {
                overflow: hidden;
                padding-bottom: 40px;
                width: 100%;
            }
            .cls
            {
                border: 0px solid gray;
                width: 100px;
                height: auto;
                padding: 15px;
                margin-top: 30px;
                margin-left: 95px;
                border-radius: 10px 10px 10px 10px;
                box-shadow: 0px 0px 20px #072C53;
                margin: 5px 0px 0px 375px;
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
        <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
        <script type="text/javascript">
            var map;
            function initialize() {
                var latlng = new google.maps.LatLng(-34.397, 150.644);
                var myOptions = {
                    zoom: 8,
                    center: latlng,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };
                map = new google.maps.Map(document.getElementById("map"), myOptions);
                var marker = new google.maps.Marker
        (
            {
                position: new google.maps.LatLng(-34.397, 150.644),
                map: map,
                title: 'Click me'
            }
        );
                var infowindow = new google.maps.InfoWindow({
                    content: 'Location info:<br/>4th Floor Amruta Arcade,<br />Nr Maninagar Station,<br />Ahmedabad,<br />GUJARAT-380008<br />Mobile : 099 74 863333<br />Email : chavadakrunal@gmail.com'
                });
                google.maps.event.addListener(marker, 'click', function () {
                    // Calling the open method of the infoWindow 
                    infowindow.open(map, marker);
                });
            }
            window.onload = initialize;
        </script>
    </head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" width="100%">
        <tr>
            <td colspan="5" align="center">
                <h1>
                    <asp:Label ID="lbladmincollages" runat="server" Text="CONTACT US" Font-Size="X-Large"></asp:Label>
                </h1>
            </td>
        </tr>
    </table>
    <fieldset class="cls">
        <div style="width: 100%; height: auto;">
            <div class="addres">
                <table border="0px;">
                    <tr>
                        <td rowspan="3">
                            <%--<div id="map" style="height: 322px; width: 380px; top: 56%; position: fixed;">
                            </div>--%>
                            <iframe width="380px" height="322px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=TOPS+Technologies+P+Ltd,+maninagar,Ahmedabad,+Gujarat&amp;aq=&amp;sll=23.032031,72.571907&amp;sspn=0.08752,0.169086&amp;ie=UTF8&amp;hq=TOPS+Technologies+P+Ltd,&amp;hnear=Maninagar,+Ahmedabad,+Gujarat&amp;ll=22.997612,72.610078&amp;spn=0.006295,0.012665&amp;t=m&amp;output=embed"></iframe><br /><small></small>
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="7">
                            <strong>E-Buzz</storng><br />
                                <address>
                                    <p>
                                        4th Floor Amruta Arcade,<br />
                                        Nr Maninagar Station,<br />
                                        Ahmedabad,<br />
                                        GUJARAT-380008
                                        <br />
                                        Mobile : 099 74 863333<br />
                                        Email : chavadakrunal@gmail.com
                                    </p>
                                </address>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <table>
            <tr>
                <td align="right">
                    <asp:Label ID="lblcategory" runat="server" Text="Name : " Width="100px"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="txtlname" runat="server" PlaceHolder="Name"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="lblemail" runat="server" Text="Email : " Width="100px"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="txtemail" runat="server" PlaceHolder="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="lblphone" runat="server" Text="Phone No. : " Width="100px"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="txtphone" runat="server" PlaceHolder="Phone"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="lblmessage" runat="server" Text="Message : "></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="txtemessage" runat="server" PlaceHolder="Message" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                </td>
            </tr>
            <tr>
                <td colspan="5" align="center">
                    <asp:Button ID="btnok" runat="server" Text="SEND" OnClick="btnok_Click" />
                    <asp:Button ID="btncancel" runat="server" Text="Cancel" OnClick="btncancel_Click" />
                </td>
            </tr>
        </table>
    </fieldset>
</asp:Content>
