<%@ Page Language="C#" AutoEventWireup="true" CodeFile="steps.aspx.cs" Inherits="demo1.steps" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css" />
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <style type="text/css">
        td {
            padding: 5px 15px 5px 15px;
        }

        .left {
            text-align: left;
        }
    </style>
    <%--<script type="text/javascript">

        


    </script>--%>
    <script src="multisteps.js"></script>
    <style>
        /*custom font*/
        @import url(https://fonts.googleapis.com/css?family=Montserrat);

        /*basic reset*/
        * {
            margin: 0;
            padding: 0;
        }



        body {
            font-family: montserrat, arial, verdana;
            height: 100%;
            width: 100%;
            /*Image only BG fallback*/
            /*background = gradient + image pattern combo*/
            /*background-image: linear-gradient( 243.4deg, rgba(0,215,206,1) 13%, rgba(0,132,255,1) 98% );*/
            /*background-image:linear-gradient(to right, #43C6AC, #F8FFAE);*/
            /*background-color:royalblue;*/
        }
        /*form styles*/
        #msform {
            width: 600px;
            margin: 50px auto;
            text-align: center;
            position: relative;
        }

            #msform fieldset {
                background: #5fbfd9;
                border: 0 none;
                border-radius: 3px;
                box-shadow: 0 0 15px 1px rgba(0, 0, 0, 0.4);
                padding: 20px 30px;
                box-sizing: border-box;
                width: 80%;
                margin: 0 10%;
                /*stacking fieldsets above each other*/
                position: relative;
                color: white;
                font-weight: bold;
            }
                /*Hide all except first fieldset*/
                #msform fieldset:not(:first-of-type) {
                    display: none;
                }
            /*inputs*/
            #msform input, #msform textarea {
                padding: 15px;
                border: 1px solid #ccc;
                border-radius: 3px;
                margin-bottom: 10px;
                width: 100%;
                box-sizing: border-box;
                font-family: montserrat;
                color: #2C3E50;
                font-size: 13px;
            }
            /*buttons*/
            #msform .action-button {
                width: 100px;
                background: #27AE60;
                font-weight: bold;
                color: white;
                border: 0 none;
                border-radius: 1px;
                cursor: pointer;
                padding: 10px 5px;
                margin: 10px 5px;
            }

                #msform .action-button:hover, #msform .action-button:focus {
                    box-shadow: 0 0 0 2px white, 0 0 0 3px #27AE60;
                }
        /*headings*/
        .fs-title {
            font-size: 17px;
            text-transform: uppercase;
            color: whitesmoke;
            margin-bottom: 10px;
        }

        .fs-subtitle {
            font-weight: normal;
            font-size: 13px;
            color: papayawhip;
            margin-bottom: 20px;
        }
        /*progressbar*/
        #progressbar {
            margin-bottom: 30px;
            overflow: hidden;
            /*CSS counters to number the steps*/
            counter-reset: step;
        }

            #progressbar li {
                list-style-type: none;
                color: white;
                text-transform: uppercase;
                font-size: 9px;
                width: 16.33%;
                float: left;
                position: relative;
            }

                #progressbar li:before {
                    content: counter(step);
                    counter-increment: step;
                    width: 20px;
                    line-height: 20px;
                    display: block;
                    font-size: 10px;
                    color: #333;
                    background: white;
                    border-radius: 3px;
                    margin: 0 auto 5px auto;
                }
                /*progressbar connectors*/
                #progressbar li:after {
                    content: '';
                    width: 100%;
                    height: 2px;
                    background: white;
                    position: absolute;
                    left: -50%;
                    top: 9px;
                    z-index: -1; /*put it behind the numbers*/
                }

                #progressbar li:first-child:after {
                    /*connector not needed before the first step*/
                    content: none;
                }
                /*marking active/completed steps green*/
                /*The number of the step and the connector before it = green*/
                #progressbar li.active:before, #progressbar li.active:after {
                    background: #27AE60;
                    color: white;
                }

        .auto-style4 {
            width: 183px;
        }
    </style>

    <title></title>
    <style>
        .imgbtn:hover {
            background-color: #6fe1d1;
            border-radius: 4px;
        }

        .tooltip .tooltip-left {
            width: 100px;
            height: 100px;
        }
    </style>

    <script> 
        $(document).ready(function () {
            $("#btnbrown").mouseenter(function () {
                $("#panelbrown").slideDown("slow");
            });

            $("#btnbrown").mouseleave(function () {
                $("#panelbrown").slideUp("slow");
            });

            $("#btngreen").mouseenter(function () {
                $("#panelgreen").slideDown("slow");
            });

            $("#btngreen").mouseleave(function () {
                $("#panelgreen").slideUp("slow");
            });
            //
            $("#btntangible").mouseenter(function () {
                $("#paneltangible").slideDown("slow");
            });

            $("#btntangible").mouseleave(function () {
                $("#paneltangible").slideUp("slow");
            });

            $("#btnintangible").mouseenter(function () {
                $("#panelIntangible").slideDown("slow");
            });

            $("#btnintangible").mouseleave(function () {
                $("#panelIntangible").slideUp("slow");
            });
            //
            $("#btnoptions").mouseenter(function () {
                $("#panelOptions").slideDown("slow");
            });

            $("#btnoptions").mouseleave(function () {
                $("#panelOptions").slideUp("slow");
            });

            $("#btnshare").mouseenter(function () {
                $("#panelShares").slideDown("slow");
            });

            $("#btnshare").mouseleave(function () {
                $("#panelShares").slideUp("slow");
            });
            $("#inf").mouseenter(function () {
                $("#panelinfo").slideDown("slow");
            });

            $("#inf").mouseleave(function () {
                $("#panelinfo").slideUp("slow");
            });



        });
    </script>
    <style>
        #panelbrown, #btnbrown, #btngreen, #panelgreen, #paneltangible, #panelIntangible, #panelOptions, #panelShares,
        #btntangible, #btnintangible, #btnoptions, #btnshare, #panelinfo
        {
            padding: 5px;
            text-align: center;
        }

        #panelbrown, #panelgreen, #paneltangible, #panelIntangible, #panelOptions, #panelShares, #panelinfo {
            padding: 50px;
            display: none;
        }
    </style>
        <script src="hist.js"></script>

    <%--<script>

        var col;
        function coltest() {

            col = txtHistoricalYears.value;
            alert(col);
        }

    </script>--%>


</head>
<body style="background-image: url('2220085.jpg')">
    <form id="form1" runat="server">


        <asp:ScriptManager runat="server">
        </asp:ScriptManager>

        <asp:UpdatePanel runat="server">
            <ContentTemplate>

                <div id="msform">
                    <!-- progressbar -->
                    <ul id="progressbar">
                        <li class="active">Nature</li>
                        <li>Stage</li>
                        <li>Objective</li>
                        <li>Timing</li>
                        <li>Sector</li>
                        <li>Historical</li>
                    </ul>
                    <!-- fieldsets -->
                    <fieldset id="b" style="background-color: #5fbfd9">
                        <h2 class="fs-title">We Would like to Know You Better</h2>

                        <h3 class="fs-subtitle">Nature</h3>
                        <div id="a" style="display: flex; align-items: center; justify-content: center;">
                            <div class="test" style="display: flex; justify-content: center; align-content: center;">
                                <div class="imgbtn" onmouseover="this.style.cursor = 'pointer';" style="height: 140px; width: 120px;">
                                    <img class="imgbtn" style="border-radius: 50%; height: 100px; width: 100px; padding: 10px;" src="img/government1.jpg" />
                                    </br>
                                    Government
                                    </br>
                                   
                                 
                                </div>
                                <div style="margin-left: 15px;">
                                    <div class="imgbtn" onmouseover="this.style.cursor = 'pointer';" style="height: 140px; width: 120px;">
                                        <img class="imgbtn" style="border-radius: 50%; height: 100px; width: 100px; padding: 10px;" src="img/corporate.jpg" />
                                        </br>
                                        Private
                                       </br>
                                        
                                      
                                 
                                    </div>
                    </fieldset>

                    <fieldset>
                        <h2 class="fs-title">What is the status of development of the project</h2>
                        
                        <button id="btngreen" type="button" class="btn btn-outline-light" style="margin-top:15px;">Green Field</button>
                        <button id="btnbrown" type="button" class="btn btn-outline-light" style="margin-left:15px; margin-top:15px;">Brown Field</button>
                        
                        <input type="button" name="previous" class="previous action-button" value="Previous" style="margin-top:15px;"/>
                        <div id="panelbrown">
                            Brownfield: already are into a business and considering to scale-up operations.</div>
                        <div id="panelgreen">
                            Greenfield: have a business plan.
                        </div>                   

                    </fieldset>

                    <fieldset>
                        <h2  class="fs-title">What do you want to perform?</h2>
                        <button id="btntangible" type="button" class="btn btn-outline-light" style="margin-top:15px;">Valuation of Tangible Assets</button>
                        <button id="btnintangible" type="button" class="btn btn-outline-light" style="margin-left:15px; margin-top:15px;">Valuation of Intangible Assets</button>
                       
                        <button id="btnoptions" class="btn btn-outline-light" style="margin-top: 15px;" type="button">
                            Valuation of Options
                        </button>
                        <button id="btnshare" class="btn btn-outline-light" style="margin-left: 15px; margin-top: 15px;" type="button">
                            Valuation of Shares
                        </button>
                       
                        <input type="button" name="previous" class="previous action-button" value="Previous" style="margin-top:15px;"/>
                        <div id="paneltangible">
                            Valuation of Tangible Assets: Fixed assets</div>
                        <div id="panelIntangible">
                            Valuation of Intangible Assets: Goodwill, Brandname, patents, trademarks, intellectual</div>
                        <div id="panelOptions">
                            Valuation of Options: ESOP and other options</div>
                        <div id="panelShares">
                            Valuation of Shares: Business based on revenue model and cost metrics</div>
                        
                    </fieldset>



                    <fieldset>
                        <h2 class="fs-title">We need to know this to provide you customized solution..</h2>

                        <table>
                            <%--<tr>
                                    <td class="left"><b>Nature</b>
                                    </td>
                                    <td>
                                        <asp:DropDownList CssClass="form-control" ID="ddl_nature" DataSourceID="XmlDataSourceNature" DataTextField="text" DataValueField="value" runat="server"></asp:DropDownList>
                                    </td>
                                </tr>--%>
                            <%-- <tr>
                                    <td class="left"><b>Revenue Stream</b>
                                    </td>
                                    <td>
                                        <asp:DropDownList class="form-control" ID="ddl_stream" DataSourceID="XmlDataSourceStream" DataTextField="text" DataValueField="value" runat="server"></asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="left"><strong>Stage</strong>
                                    </td>
                                    <td>
                                        <asp:DropDownList class="form-control" ID="ddl_stage" DataSourceID="XmlDataSourceStage" DataTextField="text" DataValueField="value" runat="server"></asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="left"><strong>Objective</strong>
                                    </td>
                                    <td>
                                        <asp:DropDownList class="form-control" ID="ddl_objective" DataSourceID="XmlDataSourceObj" DataTextField="text" DataValueField="value" runat="server"></asp:DropDownList>
                                    </td>
                                </tr>--%>
                           
                            <tr>
                                <td class="left"><strong>Primary Sector</strong>
                                </td>
                                <td>
                                    <asp:DropDownList class="form-control" ID="ddl_primarySec" runat="server" DataSourceID="XmlDataSourcePrimary" DataTextField="text" DataValueField="value"></asp:DropDownList>
                                </td>

                            </tr>
                            <%--<tr>
                                <td class="left"><strong>Sub-Sector</strong>
                                </td>
                                <td>
                                    <asp:DropDownList class="form-control" ID="ddl_sub" runat="server"></asp:DropDownList>
                                </td>
                            </tr>--%>
                            <tr>
                                <td class="left"><strong>Country</strong>
                                <td> <asp:DropDownList class="form-control" ID="ddl_Country"  runat="server" DataSourceID="XmlDataSourceCountry" DataTextField="text" DataValueField="value"></asp:DropDownList> </td>
                            </tr>
                            <tr>
                                <td  colspan="2">
                                    <input  type="checkbox"/> Do You have any other line of Business?  <i id="inf" class="fas fa-info-circle"></i>
                                </td>
                                
                            </tr>

                        </table>
                       <div id="panelinfo">
                           You will be redirected after the completion of this sector.
                       </div>
                       
                        <input type="button" name="previous" class="previous action-button" value="Previous" />
                        <input type="button" name="next" class="next action-button" id="abc" value="Next" />
                    </fieldset>

                     <fieldset>
                        <h2 class="fs-title">Historical Data</h2>
                        <h3 class="fs-subtitle">Choose if you have Historical Data,Else Skip</h3>
                        <%--<input type="text" name="fname" placeholder="First Name" />
                            <input type="text" name="lname" placeholder="Last Name" />
                            <input type="text" name="phone" placeholder="Phone" />
                            <textarea name="address" placeholder="Address"></textarea>--%>
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Historical" /><strong>Excel</strong><br />
                        <br />
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Historical" /><strong>QuickBook</strong><br />
                        <br />
                        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="Historical" /><strong>Manual</strong><br />
                        <br />
                        <table>
                            <tr>
                                <td  class="left"> Years Of Data </td>
                                <td> <input class="form-control" type="text" id="txtHistoricalYears" runat="server" /> </td>
                            </tr>
                            <tr>
                                <td class="left">
                                    Tell Us the frequency of data:
                                </td>
                                <td>
                                     <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server"  DataSourceID="XmlDataSourceProjections" DataTextField="text" DataValueField="value">
                                    </asp:DropDownList></td>
                                </td>
                            </tr>
                        </table>


                        <input type="button" name="previous"  class="previous action-button" value="Previous" />
                        <input type="button" name="skip" class="next action-button" value="Skip" />
                         <input type="button" name="next" onclick="coltest();" class="next action-button" value="Next" />

                    </fieldset>

                    <fieldset>
                        <h2 class="fs-title">Model Timeline</h2>
                        <h3 class="fs-subtitle">Lets discuss about the timeline</h3>
                        <%--timing table--%>
                        <table align="center">

                             <tr>
                                <td class="left">
                                    <asp:Label ID="Label3" CssClass="left" align="left" runat="server" Text="Financial Year Start "></asp:Label></td>

                                <td>
                                    <asp:TextBox ID="txt_fsm" CssClass="form-control" runat="server"></asp:TextBox></td>
                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender3" runat="server" Format="dd/MM/yyyy" PopupPosition="Right" TargetControlID="txt_fsm" />

                                    </tr>
                            <tr>

                                <td class="left">
                                    <asp:Label ID="Label4" runat="server" Text="Financial Year End "></asp:Label></td>

                                <td>
                                    <asp:TextBox ID="txt_fem" CssClass="form-control" runat="server"></asp:TextBox></td>
                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" Format="dd/MM/yyyy" PopupPosition="Right" TargetControlID="txt_fem" />

                            </tr>
                            <%--<tr>
                                <td>
                                    <asp:Label ID="Label1" CssClass="left" runat="server" Text="Projection Start Date"></asp:Label></td>

                                <td class="auto-style4">

                                    <asp:TextBox ID="txt_modelStart" CssClass="form-control datepipcker" placeholder="dd/mm/yyyy" runat="server" AutoCompleteType="Disabled"></asp:TextBox>

                                </td>
                                <ajaxToolkit:CalendarExtender ID="cal_ext_modelstrat" runat="server" Format="dd/MM/yyyy" PopupPosition="Right" TargetControlID="txt_modelStart" />
                            </tr>--%>


                            <tr>
                                <td class="left">
                                    <asp:Label ID="Label2" runat="server" Text="Forecasting Start Date"></asp:Label></td>

                                <td class="auto-style4">
                                    <asp:TextBox ID="txt_forecastStart" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox>

                                </td>
                                <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" Format="dd/MM/yyyy" PopupPosition="Right" TargetControlID="txt_forecastStart" />
                            </tr>

                           

                            <tr>
                                <td class="left">
                                    <asp:Label ID="Label5" runat="server" Text="No. of years projected"></asp:Label></td>

                                <td>
                                    <asp:TextBox ID="txt_projYear" CssClass="form-control" runat="server"></asp:TextBox></td>
                            </tr>

                            <tr>
                                <td class="left">
                                    <asp:Label ID="Label6" runat="server" Text="Modelling End Date"></asp:Label></td>

                                <td>
                                    <asp:TextBox ID="txt_endDate" CssClass="form-control" runat="server"></asp:TextBox></td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Label ID="Label9" runat="server" Text="Projections to be made"></asp:Label></td>

                                <td>
                                    <asp:DropDownList ID="ddl_projections" CssClass="form-control" runat="server"  DataSourceID="XmlDataSourceProjections" DataTextField="text" DataValueField="value">
                                    </asp:DropDownList></td>
                            </tr>


                        </table>


                        <%--<input type="text" name="twitter" placeholder="Twitter" />
                            <input type="text" name="facebook" placeholder="Facebook" />
                            <input type="text" name="gplus" placeholder="Google Plus" />--%>
                        <input type="button" name="previous" class="previous action-button" value="Previous" />
                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
<%--                        <asp:Button  class="action-button" runat="server" ID="btnInfoSubmit" OnClick="btnInfoSubmit_Click" Text="Submit" />--%>
                    </fieldset>
                   

                </div>

                </div>
               
            </ContentTemplate>

        </asp:UpdatePanel>
        <asp:XmlDataSource ID="XmlDataSourceNature" runat="server" DataFile="XMLFile1.xml" XPath="ListItems/ListItemNature"></asp:XmlDataSource>
        <asp:XmlDataSource ID="XmlDataSourceStream" runat="server" DataFile="XMLFile1.xml" XPath="ListItems/ListItemStream"></asp:XmlDataSource>
        <asp:XmlDataSource ID="XmlDataSourceStage" runat="server" DataFile="XMLFile1.xml" XPath="ListItems/ListItemStage"></asp:XmlDataSource>
        <asp:XmlDataSource ID="XmlDataSourceObj" runat="server" DataFile="XMLFile1.xml" XPath="ListItems/ListItemObjective"></asp:XmlDataSource>
        <asp:XmlDataSource ID="XmlDataSourceVal" runat="server" DataFile="XMLFile1.xml" XPath="ListItems/ListItemValuation"></asp:XmlDataSource>
        <asp:XmlDataSource ID="XmlDataSourcePrimary" runat="server" DataFile="XMLFile1.xml" XPath="ListItems/ListItemPrimary"></asp:XmlDataSource>
        <asp:XmlDataSource ID="XmlDataSourceMonths" runat="server" DataFile="XMLFile1.xml" XPath="ListItems/ListItemMonths"></asp:XmlDataSource>
        <asp:XmlDataSource ID="XmlDataSourceCountry" runat="server" DataFile="XMLFile1.xml" XPath="ListItems/ListItemCountry"></asp:XmlDataSource>
        <asp:XmlDataSource ID="XmlDataSourceProjections" runat="server" DataFile="XMLFile1.xml" XPath="ListItems/ListItemProjections"></asp:XmlDataSource>


    </form>
    <%-- <script type="text/javascript">
        var prm = Sys.WebForms.PageRequestManager.getInstance();
        prm.add_endRequest(function (s, e) {
            alert('Postback!');
        });
    </script>--%>
</body>
</html>
