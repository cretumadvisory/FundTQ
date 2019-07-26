<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RevSheet.aspx.cs" Inherits="demo1.RevSheet" %>

<!DOCTYPE html>

<html style="height:100%" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="css/Sidenav.css" rel="stylesheet" />
    <title></title>
    <script>


        function driverchange() {

            if (ddlDrivers.value === 'No. of clients') {
                lblPricePer.innerText = 'Average Fee per client'
                tblDriver.style.display = 'block';
                tb.style.display = 'none';

            }
            else if (ddlDrivers.value === 'No. of services') {
                lblPricePer.innerText = 'Price per service'
                tblDriver.style.display = 'block';

            }
            else if (ddlDrivers.value === 'No. of billable hours') {
                lblPricePer.innerText = 'Revenue per gross hours'
                tb.style.display = 'none';

                tblDriver.style.display = 'block';
            } else if (ddlDrivers.value === 'No. of working personnel') {
                lblPricePer.innerText = 'Revenue per personnel'

                tblDriver.style.display = 'block';
                tb.style.display = 'none';

            }
            else if (ddlDrivers.value === 'Gross Amount') {

                tblDriver.style.display = 'none';

                tb.style.display = 'block';
            }
            else {
                tblDriver.style.display = 'none';
                tb.style.display = 'none';

            }
        }

        function load() {
            var myform = $('#revSheet'),
                iter = 3;
            projection = 5;
            var year = 2015;
            //$('#txtCompanyName').keyup(function () {
            myform.find('tr').each(function () {
                var trow = $(this);
                //Historical
                for (var i = 0, year = 2015; i < iter; i++ , year++) {
                    if (trow.index() === 0) {
                        trow.append('<td> <label id="lblPeriodBegining' + year + '">date</label></td>');
                    }
                    else if (trow.index() === 1) {
                        trow.append('<td> <label  style="width:80px" id="lblPeriodEnding' + year + '">date</label></td>');
                    } else if (trow.index() === 2) {
                        trow.append('<td> <label type="text"  id="lblMonths' + year + '">months</label></td>');
                    }
                    else if (trow.index() === 3) {
                        trow.append('<td> <label type="text" style="width:80px" id="lblYear' + year + '"> year</label></td>');
                    }
                    else if (trow.index() === 6) {
                        trow.append('<td> <input type="text"  style="width:80px" id="txtDriver' + year + '"/></td>');
                    }
                    else if (trow.index() === 7) {

                        trow.append('<td> <input type="text" disabled=true style="width:80px" id="txtDriverGrowth' + year + '"/></td>');
                    }
                    else if (trow.index() === 9) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtPricePer' + year + '"/></td>');
                    }
                    else if (trow.index() === 10) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtGrowthPricePer' + year + '"/></td>');
                    } else if (trow.index() === 11) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtTotalRevenue' + year + '"/></td>');
                    } else if (trow.index() === 13) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtClient1' + year + '"/></td>');
                    } else if (trow.index() === 14) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtSalesClient1' + year + '"/></td>');
                    }
                    else if (trow.index() === 15) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtClient2' + year + '"/></td>');
                    } else if (trow.index() === 16) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtSalesClient2' + year + '"/></td>');
                    }
                    else if (trow.index() === 17) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtClient3' + year + '"/></td>');
                    } else if (trow.index() === 18) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtSalesClient3' + year + '"/></td>');
                    }

                    else if (trow.index() === 19) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtClient4' + year + '"/></td>');
                    } else if (trow.index() === 20) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtSalesClient4' + year + '"/></td>');
                    }

                    else if (trow.index() === 21) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtClient5' + year + '"/></td>');
                    } else if (trow.index() === 22) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtSalesClient5' + year + '"/></td>');
                    } else if (trow.index() === 24) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtCountry1' + year + '"/></td>');
                    } else if (trow.index() === 25) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtSalesCountry1' + year + '"/></td>');
                    } else if (trow.index() === 26) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtCountry2' + year + '"/></td>');
                    } else if (trow.index() === 27) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtSalesCountry2' + year + '"/></td>');
                    } else if (trow.index() === 28) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtCountry3' + year + '"/></td>');
                    } else if (trow.index() === 29) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtSalesCountry3' + year + '"/></td>');
                    } else if (trow.index() === 30) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtCountry4' + year + '"/></td>');
                    } else if (trow.index() === 31) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtSalesCountry4' + year + '"/></td>');
                    } else if (trow.index() === 32) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtCountry5' + year + '"/></td>');
                    } else if (trow.index() === 33) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtSalesCountry5' + year + '"/></td>');
                    } else if (trow.index() === 35) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtOther1' + year + '"/></td>');
                    } else if (trow.index() === 36) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtSalesOther1' + year + '"/></td>');
                    } else if (trow.index() === 37) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtOther2' + year + '"/></td>');
                    } else if (trow.index() === 38) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtSalesOther2' + year + '"/></td>');
                    } else if (trow.index() === 39) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtOther3' + year + '"/></td>');
                    } else if (trow.index() === 40) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtSalesOther3' + year + '"/></td>');
                    }
                    else if (trow.index() === 41) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtOther4' + year + '"/></td>');
                    } else if (trow.index() === 42) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtSalesOther4' + year + '"/></td>');
                    } else if (trow.index() === 43) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtOther5' + year + '"/></td>');
                    } else if (trow.index() === 44) {

                        trow.append('<td> <input type="text"  style="width:80px" id="txtSalesOther5' + year + '"/></td>');
                    }

                    else {
                        continue;
                    }

                }
                //Projections
                for (var i = 0, year = 2015; i < projection; i++ , year++) {
                    if (trow.index() === 0) {
                        trow.append('<td> <label id="lblPeriodBegining' + year + '">date</label></td>');
                    }
                    else if (trow.index() === 1) {
                        trow.append('<td> <label  style="width:80px" id="lblPeriodEnding' + year + '">date</label></td>');
                    } else if (trow.index() === 2) {
                        trow.append('<td> <label type="text"  style="width:40px" id="txtDriverGrowth' + year + '"></label></td>');
                    }
                    else if (trow.index() === 3) {
                        trow.append('<td> <label type="text" style="width:40px" id="lblYear' + year + '"> year</label></td>');
                    }
                    else if (trow.index() === 6) {
                        trow.append('<td> <label type="text" style="width:40px" id="lblDriver' + year + '"></label></td>');
                    }
                    else if (trow.index() === 7) {

                        trow.append('<td> <label type="text" disabled=true; style="width:40px" id="lblDriverGrowth' + year + '"></label></td>');
                    }
                    else if (trow.index() === 9) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblPricePer' + year + '"></label></td>');
                    }
                    else if (trow.index() === 10) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblGrowthPricePer' + year + '"></label></td>');
                    } else if (trow.index() === 11) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblTotalRevenue' + year + '"></label></td>');
                    } else if (trow.index() === 13) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblClient1' + year + '"/></td>');
                    } else if (trow.index() === 14) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblSalesClient1' + year + '"/></td>');
                    }
                    else if (trow.index() === 15) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblClient2' + year + '"/></td>');
                    } else if (trow.index() === 16) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblSalesClient2' + year + '"/></td>');
                    }
                    else if (trow.index() === 17) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblClient3' + year + '"/></td>');
                    } else if (trow.index() === 18) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblSalesClient3' + year + '"/></td>');
                    }

                    else if (trow.index() === 19) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblClient4' + year + '"/></td>');
                    } else if (trow.index() === 20) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblSalesClient4' + year + '"/></td>');
                    }

                    else if (trow.index() === 21) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblClient5' + year + '"/></td>');
                    } else if (trow.index() === 22) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblSalesClient5' + year + '"/></td>');
                    } else if (trow.index() === 24) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblCountry1' + year + '"/></td>');
                    } else if (trow.index() === 25) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblSalesCountry1' + year + '"/></td>');
                    } else if (trow.index() === 26) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblCountry2' + year + '"/></td>');
                    } else if (trow.index() === 27) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblSalesCountry2' + year + '"/></td>');
                    } else if (trow.index() === 28) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblCountry3' + year + '"/></td>');
                    } else if (trow.index() === 29) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblSalesCountry3' + year + '"/></td>');
                    } else if (trow.index() === 30) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblCountry4' + year + '"/></td>');
                    } else if (trow.index() === 31) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblSalesCountry4' + year + '"/></td>');
                    } else if (trow.index() === 32) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblCountry5' + year + '"/></td>');
                    } else if (trow.index() === 33) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblSalesCountry5' + year + '"/></td>');
                    } else if (trow.index() === 35) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblOther1' + year + '"/></td>');
                    } else if (trow.index() === 36) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblSalesOther1' + year + '"/></td>');
                    } else if (trow.index() === 37) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblOther2' + year + '"/></td>');
                    } else if (trow.index() === 38) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblSalesOther2' + year + '"/></td>');
                    } else if (trow.index() === 39) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblOther3' + year + '"/></td>');
                    } else if (trow.index() === 40) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblSalesOther3' + year + '"/></td>');
                    }
                    else if (trow.index() === 41) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblOther4' + year + '"/></td>');
                    } else if (trow.index() === 42) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblSalesOther4' + year + '"/></td>');
                    } else if (trow.index() === 43) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblOther5' + year + '"/></td>');
                    } else if (trow.index() === 44) {

                        trow.append('<td> <label type="text"  style="width:80px" id="lblSalesOther5' + year + '"/></td>');
                    }
                
                    else {
                        continue;
                    }

                }
           


            });

            //});


        }
               

        $(document).ready(function () {
            $("#inf").mouseenter(function () {
                $("#panelinfo").slideDown("slow");
            });

            $("#inf").mouseleave(function () {
                $("#panelinfo").slideUp("slow");
            });

        });

    </script>
    <style>
        #panelinfo {
            padding: 5px;
            text-align: center;
        }

        #panelinfo {
            padding: 50px;
            display: none;
        }

        .cell{
            width:80px;
            height:30px;
        }
        
        .hiddenClient{

            display:none
        }
        .hiddenCountry{

            display:none
        }.hiddenOther{

            display:none
        }

    </style>
</head>
<body style="height:100%"  onload="load();">
    <form id="form1" runat="server">
        <div style="height:100%">
            <nav class="main-menu">
                <ul>
                    <li>
                        <a href="#">
                            <i class="fa fa-home fa-2x"></i>
                            <span class="nav-text">Dashboard
                            </span>
                        </a>

                    </li>
                    <li class="has-subnav">
                        <a href="HistoricalPandL.aspx">
                            <i class="fa fa-laptop fa-2x"></i>
                            <span class="nav-text">Historical Data
                            </span>
                        </a>

                    </li>

                    <li>
                        <a href="#">
                            <i class="fa fa-table fa-2x"></i>
                            <span class="nav-text">Inputs
                            </span>
                        </a>
                    </li>
                    <%-- <li>
                   <a href="#">
                        <i class="fa fa-map-marker fa-2x"></i>
                        <span class="nav-text">
                            Maps
                        </span>
                    </a>
                </li>--%>
                    <li>
                        <a href="#">
                            <i class="fa fa-info fa-2x"></i>
                            <span class="nav-text">Documentation
                            </span>
                        </a>
                    </li>
                </ul>

                <ul class="logout">
                    <li>
                        <a href="#">
                            <i class="fa fa-power-off fa-2x"></i>
                            <span class="nav-text">Logout
                            </span>
                        </a>
                    </li>
                </ul>
            </nav>
            <div class="bg-info" id="inputPanel"  style="height:100%; width: 25%;  margin-left: 55px; float: left; position:relative; background-color:aqua ">
                <div id="Panel2" style="height:100%;" >
                    <%--<div style="background-color: #99B898; color: white">
                        <h1>Revenue Module</h1>
                    </div>--%>
                 <div class="card text-white bg-info mb-3" ">
  <div class="card-header" ><strong>Revenue Module</strong></div>
  <div class="card-body" style="height:100%;">
       <table >
                        <tr>
                            <td>Company Name
                            </td>
                            <td>
                                <input type="text" class="form-control" id="txtCompanyName" />
                            </td>
                        </tr>
                        <tr>
                            <td>Industry 
                            </td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Professional Services"></asp:Label>
                            </td>
                        </tr>

                       </table>

<%--    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>--%>
  </div>
                                <div class="card-header" ><strong>Inputs For Revenue Drivers</strong></div>
                         <div class="card-body">


                              <table>
                        <tr>
                            <td>Revenue Driver  <i id="inf" class="fas fa-info-circle"></i>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlDrivers" Class="form-control" runat="server" onchange="driverchange();" DataSourceID="XmlProfessionalServicesDrivers" DataTextField="value"></asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                    <div id="panelinfo">
                        Choose Gross Amount if you don't have the numbers for revenue drivers.
                    </div>
                    <div id="myform">

                        <table id="tblDriver" style="display: none">


                            <tr id="growthRow">
                                <td>Basis Of Growth Rate

                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlGrowthDriver" Class="form-control" onchange="growthDriver();" DataSourceID="XmlGrowthRate" DataTextField="text" DataValueField="value" runat="server"></asp:DropDownList>
                                </td>

                            </tr>

                            <tr id="dRow">
                                <td>Basis of growth on
                                    <label id="lblPricePer"></label>


                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlGrowth" Class="form-control" onchange="growth();" DataSourceID="XmlGrowthRate" DataTextField="text" DataValueField="value" runat="server"></asp:DropDownList>

                                </td>

                            </tr>
                            <tr>
                                <td>Gross Amount
                                </td>
                            </tr>
                        </table>
                           <div class="card-header bg-info" style="color:white; margin-top:30px; ">Do You Want To Add Top 5 Clients? <asp:CheckBox ID="CheckBox1" runat="server" /> </div>
                      <div class="card-header bg-info" style="color:white; margin-top:30px;">Do You Want To Add Top 5 Countries? <asp:CheckBox ID="CheckBox2" runat="server" /></div>
                     <div class="card-header bg-info" style="color:white; margin-top:30px; ">Do You Want To Add Other Top 5 Resources? <asp:CheckBox ID="CheckBox3" runat="server" /></div>
                    </div>
                         </div>
</div>
 
                </div>
            </div>


            <div id="revSheet" style="float: left; overflow:auto;width:70%;height:100%;" >
                <table>
                    <tr class="bg-success" style="color:white" >
                        <td>
                            Period Begining
                        </td>
                        <td>
                           
                        </td>
                    </tr>
                    <tr class="bg-success" style="color:white">
                        <td>
                            Period Ending
                        </td>
                        <td></td>
                    </tr>
                    
                    <tr class="bg-success" style="color:white">
                        <td>
                              No. Of Months

                        </td> <td></td>
                    </tr>
                    <tr class="bg-success" style="color:white">
                        <td >
                            Year
                        </td> <td></td>
                         </tr>
                    <tr>
                        <td>
                           All Fig in <label id="lblFig"></label>
                        </td> <td></td>
                    </tr>
                    <tr>
                        <td>
                            Period
                        </td> <td></td>
                    </tr>
                    <tr>
                        <td><label id="lblDriverName"></label></td> <td></td>
                    </tr>
                    <tr>
                        <td>
                            Growth Rate <label id="lblGrowthDriver"></label> 
                        </td><td></td>
                    </tr>
                    <tr>

                    </tr>
                    <tr>
                        <td>
                            <label id="lblPricePerDriver"> </label> 
                        </td><td></td>
                    </tr>
                    <tr>
                        <td>
                            Growth Rate
                        </td><td></td>
                    </tr>
                    
                    <tr>
                        <td>
                            Total Revenue
                        </td><td></td>
                    </tr>
<%--                    Top 5 Client--%>
                    <tr  class="bg-info hiddenClient">
                        <td>
                            Top 5 Clients
                        </td>
                    </tr>
                    <tr class="hiddenClient">
                        <td>1.

                        </td>
                        <td>
                            <input id="txtCompany1" placeholder="Client Name" />
                        </td>
                    </tr>
                    <tr class="hiddenClient">
                        <td>
                            1.
                        </td>
                        <td>
                            % Of Sales
                        </td>
                    </tr>
                    <tr class="hiddenClient"><td>2.</td>
                        <td>
                            <input id="txtCompany2"  />
                        </td>
                    </tr>
                    <tr class="hiddenClient">
                        <td>
                            2.
                        </td>
                        <td>
                            % Of Sales
                        </td>
                    </tr>
                    
                    <tr class="hiddenClient"><td>3.</td>
                        <td>
                            <input id="txtCompany3"  />
                        </td>
                    </tr>
                    <tr class="hiddenClient">
                        <td>
                            3.
                        </td>
                        <td>
                            % Of Sales
                        </td>
                    </tr>
                    <tr class="hiddenClient"><td>4.</td>
                        <td>
                            <input id="txtCompany4"  />
                        </td>
                    </tr>
                    <tr class="hiddenClient">
                        <td>
                            4.
                        </td>
                        <td>
                            % Of Sales
                        </td>
                    </tr>
                    <tr class="hiddenClient"><td>5.</td>
                        <td>
                            <input id="txtCompany5"  />
                        </td>
                    </tr>
                    <tr class="hiddenClient">
                        
                        <td style="text-align:center" colspan="2">
                            % Of Sales
                        </td>
                    </tr>
                    <%--           hiddenCountry         Top 5 Countries--%>
                    <tr class="bg-info hiddenCountry"><td></td>
                        <td>
                            Top 5 Countries
                        </td>
                    </tr>
                    <tr><td></td>
                        <td>
                            <input id="txtCountries1"  />
                        </td>
                    </tr>
                     <tr class="hiddenCountry">
                        
                        <td style="text-align:center" colspan="2">
                            % Of Sales
                        </td>
                    </tr>
                    <tr class="hiddenCountry"><td></td>
                        <td>
                            <input id="txtCountries2"  />
                        </td>
                    </tr>
                     <tr class="hiddenCountry">
                        
                        <td style="text-align:center" colspan="2">
                            % Of Sales
                        </td>
                    </tr>
                    <tr class="hiddenCountry"><td></td>
                        <td>
                            <input id="txtCountries3"  />
                        </td>
                    </tr>
                     <tr class="hiddenCountry">
                        
                        <td style="text-align:center" colspan="2">
                            % Of Sales
                        </td>
                    </tr>
                    <tr class="hiddenCountry"><td></td>
                        <td>
                            <input id="txtCountries4"  />
                        </td>
                    </tr>
                     <tr class="hiddenCountry">
                        
                        <td style="text-align:center" colspan="2">
                            % Of Sales
                        </td>
                    </tr>
                    <tr class="hiddenCountry"><td></td>
                        <td>
                            <input id="txtCountries5"  />
                        </td>
                    </tr>
                     <tr class="hiddenCountry">
                        
                        <td style="text-align:center" colspan="2">
                            % Of Sales
                        </td>
                    </tr>
  <%--                    Top 5 Other--%>
                    <tr class="bg-info hiddenOther"><td></td>
                        <td>
                            Top 5 Other Resources
                        </td>
                    </tr>
                    <tr class="hiddenOther"><td></td>
                        <td>
                            <input id="txtOther1"  />
                        </td>
                    </tr>
                     <tr class="hiddenOther">
                        
                        <td style="text-align:center" colspan="2">
                            % Of Sales
                        </td>
                    </tr>
                    <tr class="hiddenOther"><td></td>
                        <td>
                            <input id="txtOther2"  />
                        </td>
                    </tr>
                     <tr class="hiddenOther">
                        
                        <td style="text-align:center" colspan="2">
                            % Of Sales
                        </td>
                    </tr>
                    <tr class="hiddenOther"><td></td>
                        <td>
                            <input id="txtOther3"  />
                        </td>
                    </tr>
                     <tr class="hiddenOther">
                        
                        <td style="text-align:center" colspan="2">
                            % Of Sales
                        </td>
                    </tr>
                    <tr class="hiddenOther"><td></td>
                        <td>
                            <input id="txtOther4" />
                        </td>
                    </tr>
                     <tr class="hiddenOther">
                        
                        <td style="text-align:center" colspan="2">
                            % Of Sales
                        </td>
                    </tr>
                    <tr class="hiddenOther"><td></td>
                        <td>
                            <input id="txtOther5"  />
                        </td>
                    </tr>
                     <tr class="hiddenOther">
                        
                        <td style="text-align:center" colspan="2">
                            % Of Sales
                        </td>
                    </tr>


                </table>
                

               



        </div>


        <asp:XmlDataSource ID="XmlProfessionalServicesDrivers" runat="server" DataFile="XMLFile1.xml" XPath="ListItems/ListItemProfServices"></asp:XmlDataSource>
        <asp:XmlDataSource ID="XmlGrowthRate" runat="server" DataFile="XMLFile1.xml" XPath="ListItems/ListitemGrowthRate"></asp:XmlDataSource>
            </div>
    </form>
</body>
</html>
