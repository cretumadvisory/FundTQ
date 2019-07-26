<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HistPandL.aspx.cs" Inherits="demo1.HistPandL" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <title></title>
    <script>
        function calc(textcontrol) {
            year = 2015;

            for (var i = 0; i < 2; i++) {
                document.getElementById('txtNetSales' + year).value = document.getElementById('txtRev' + year).value - document.getElementById('txtIndirectTax' + year).value;
                document.getElementById('txttotalexp' + year).value = + document.getElementById('txtcmc' + year).value + +document.getElementById('txtchangeinv' + year).value + +document.getElementById('txtpower&fuel' + year).value + +document.getElementById('txtprodcost' + year).value + +document.getElementById('txtemployeecost' + year).value + +document.getElementById('txtadmexpense' + year).value + +document.getElementById('txtsellexpense' + year).value + +document.getElementById('txtotherexpense' + year).value;
                document.getElementById('txt_EBDITA' + year).value = +document.getElementById('txtNetSales' + year).value - +document.getElementById('txttotalexp' + year).value;
                document.getElementById('txt_PBDITA' + year).value = +document.getElementById('txt_EBDITA' + year).value + +document.getElementById('txt_otherIncome' + year).value;
                document.getElementById('txt_PBIT' + year).value = document.getElementById('txt_PBDITA' + year).value - document.getElementById('txt_Dep' + year).value;
                document.getElementById('txt_PBT' + year).value = document.getElementById('txt_PBIT' + year).value - document.getElementById('txt_totalFinCost' + year).value;
                document.getElementById('txt_provForTax' + year).value = 0.30 * document.getElementById('txt_PBT' + year).value;
                document.getElementById('txt_ProvAfterTax' + year).value = document.getElementById('txt_PBT' + year).value - document.getElementById('txt_liab' + year).value - document.getElementById('txt_provForTax' + year).value;

                year++;
            }




        }



        function savePandL() {
            for (var i = 0, year = 2015; i < 2; i++ , year++) {
                localStorage['txtRev' + year] = document.getElementById('txtRev' + year).value;
                localStorage['txtIndirectTax' + year] = document.getElementById('txtIndirectTax' + year).value;
                localStorage['txtNetSales' + year] = document.getElementById('txtNetSales' + year).value;
                localStorage['txtcmc' + year] = document.getElementById('txtcmc' + year).value;
                localStorage['txtchangeinv' + year] = document.getElementById('txtchangeinv' + year).value;
                localStorage['txtpower&fuel' + year] = document.getElementById('txtpower&fuel' + year).value;
                localStorage['txtprodcost' + year] = document.getElementById('txtprodcost' + year).value;
                localStorage['txtemployeecost' + year] = document.getElementById('txtemployeecost' + year).value;
                localStorage['txtadmexpense' + year] = document.getElementById('txtadmexpense' + year).value;
                localStorage['txtsellexpense' + year] = document.getElementById('txtsellexpense' + year).value;
                localStorage['txtotherexpense' + year] = document.getElementById('txtotherexpense' + year).value;
                localStorage['txttotalexp' + year] = document.getElementById('txttotalexp' + year).value;
                localStorage['txt_EBDITA' + year] = document.getElementById('txt_EBDITA' + year).value;
                localStorage['txt_otherIncome' + year] = document.getElementById('txt_otherIncome' + year).value;
                localStorage['txt_PBDITA' + year] = document.getElementById('txt_PBDITA' + year).value;
                localStorage['txt_Dep' + year] = document.getElementById('txt_Dep' + year).value;
                localStorage['txt_PBIT' + year] = document.getElementById('txt_PBIT' + year).value;
                localStorage['txt_totalFinCost' + year] = document.getElementById('txt_totalFinCost' + year).value;
                localStorage['txt_PBT' + year] = document.getElementById('txt_PBT' + year).value;
                localStorage['txt_liab' + year] = document.getElementById('txt_liab' + year).value;
                localStorage['txt_provForTax' + year] = document.getElementById('txt_provForTax' + year).value;
                localStorage['txt_ProvAfterTax' + year] = document.getElementById('txt_ProvAfterTax' + year).value;
                localStorage['txt_EPS' + year] = document.getElementById('txt_EPS' + year).value;
                localStorage['txt_basic' + year] = document.getElementById('txt_basic' + year).value;
                localStorage['txt_diluted' + year] = document.getElementById('txt_diluted' + year).value;

            }

        }





        function viewload() {
     var myform = $('#myform'),
         iter = <%=this.a%>;
        var year=2015;
     //$('#btnAddCol').click(function () {
         myform.find('tr').each(function(){
           var trow = $(this);
             for (var i = 0, y = 2015; i < iter; i++ , y++) {
                 if (trow.index() === 0) {
                     trow.append('<td>Col' + year + '</td>');
                 }
                 else if (trow.index() === 1 || trow.index() === 5) {
                     continue;
                 }

                 else if (trow.index() === 2) {

                     trow.append('<td> <input type="input" onkeyup="javascript:calc();"  id="txtRev' + y + '"/> </td>');

                 }
                 else if (trow.index() === 3) {
                     trow.append('<td> <input type="input" onkeyup="javascript:calc();" id="txtIndirectTax' + y + '"/> </td>');
                 }
                 else if (trow.index() === 4) {

                     trow.append('<td> <input type="input" onkeyup="javascript:calc();" id="txtNetSales' + y + '"/> </td>');
                 }
                 else if (trow.index() === 6) {
                     trow.append('<td> <input type="input" onkeyup="javascript:calc();" id="txtcmc' + y + '"/> </td>');
                 }
                 else if (trow.index() === 7) {

                     trow.append('<td> <input type="input" onkeyup="javascript:calc();"  id="txtchangeinv' + y + '"/> </td>');
                 }
                 else if (trow.index() === 8) {

                     trow.append('<td> <input type="input" onkeyup="javascript:calc();" id="txtpower&fuel' + y + '"/> </td>');
                 } else if (trow.index() === 9) {

                     trow.append('<td> <input type="input" onkeyup="javascript:calc();" id="txtprodcost' + y + '"/> </td>');
                 } else if (trow.index() === 10) {

                     trow.append('<td> <input type="input" onkeyup="javascript:calc();" id="txtemployeecost' + y + '"/> </td>');
                 } else if (trow.index() === 11) {
                     trow.append('<td> <input type="input" onkeyup="javascript:calc();" id="txtadmexpense' + y + '"/> </td>');
                 } else if (trow.index() === 12) {
                     trow.append('<td> <input type="input" onkeyup="javascript:calc();" id="txtsellexpense' + y + '"/> </td>');
                 } else if (trow.index() === 13) {
                     trow.append('<td> <input type="input" onkeyup="javascript:calc();" id="txtotherexpense' + y + '"/> </td>');
                 } else if (trow.index() === 14) {
                     trow.append('<td> <input type="input" onkeyup="javascript:calc();" id="txttotalexp' + y + '"/> </td>');
                 }
                 else if (trow.index() === 15) {
                     trow.append('<td> <input type="input" onkeyup="javascript:calc();" id="txt_EBDITA' + y + '"/> </td>');
                 } else if (trow.index() === 16) {
                     trow.append('<td> <input type="input" onkeyup="javascript:calc();" id="txt_otherIncome' + y + '"/> </td>');
                 } else if (trow.index() === 17) {
                     trow.append('<td> <input type="input" onkeyup="javascript:calc();" id="txt_PBDITA' + y + '"/> </td>');
                 } else if (trow.index() === 18) {
                     trow.append('<td> <input type="input" onkeyup="javascript:calc();" id="txt_Dep' + y + '"/> </td>');
                 } else if (trow.index() === 19) {
                     trow.append('<td> <input type="input" onkeyup="javascript:calc();" id="txt_PBIT' + y + '"/> </td>');
                 } else if (trow.index() === 20) {
                     trow.append('<td> <input type="input" onkeyup="javascript:calc();" id="txt_totalFinCost' + y + '"/> </td>');
                 } else if (trow.index() === 21) {
                     trow.append('<td> <input type="input" onkeyup="javascript:calc();" id="txt_PBT' + y + '"/> </td>');
                 } else if (trow.index() === 22) {
                     trow.append('<td> <input type="input" onkeyup="javascript:calc();" id="txt_liab' + y + '"/> </td>');
                 } else if (trow.index() === 23) {
                     trow.append('<td> <input type="input" onkeyup="javascript:calc();" id="txt_provForTax' + y + '"/> </td>');
                 } else if (trow.index() === 24) {
                     trow.append('<td> <input type="input" onkeyup="javascript:calc();" id="txt_ProvAfterTax' + y + '"/> </td>');
                 } else if (trow.index() === 25) {
                     trow.append('<td> <input type="input"  id="txt_EPS' + y + '"/> </td>');
                 } else if (trow.index() === 26) {
                     trow.append('<td> <input type="input"  id="txt_basic' + y + '"/> </td>');
                 } else if (trow.index() === 27) {
                     trow.append('<td> <input type="input"  id="txt_diluted' + y + '"/> </td>');
                 }
                 else {
                     trow.append('<td><input type="input" id="cb' + i + '"/></td>');
                 }

             }
           
         });
         
     
        }




        //loading Stored Values
        function checkinng() {
            for (var i = 0, year = 2015; i < 2; i++ , year++) {
                if (localStorage['txtRev' + year] === undefined) {
                    alert('no luck');
                }
                else {
                    alert('worked');
                    for (var i = 0, year = 2015; i < 2; i++ , year++) {

                        //P&L
                        document.getElementById('txtRev' + year).value = localStorage['txtRev' + year];
                        document.getElementById('txtIndirectTax' + year).value = localStorage['txtIndirectTax' + year];
                        document.getElementById('txtNetSales' + year).value = localStorage['txtNetSales' + year];
                        document.getElementById('txtcmc' + year).value = localStorage['txtcmc' + year];
                        document.getElementById('txtchangeinv' + year).value = localStorage['txtchangeinv' + year];
                        document.getElementById('txtpower&fuel' + year).value = localStorage['txtpower&fuel' + year];
                        document.getElementById('txtprodcost' + year).value = localStorage['txtprodcost' + year];
                        document.getElementById('txtemployeecost' + year).value = localStorage['txtemployeecost' + year];
                        document.getElementById('txtadmexpense' + year).value = localStorage['txtadmexpense' + year];
                        document.getElementById('txtsellexpense' + year).value = localStorage['txtsellexpense' + year];
                        document.getElementById('txtotherexpense' + year).value = localStorage['txtotherexpense' + year];
                        document.getElementById('txttotalexp' + year).value = localStorage['txttotalexp' + year];
                        document.getElementById('txt_EBDITA' + year).value = localStorage['txt_EBDITA' + year];
                        document.getElementById('txt_otherIncome' + year).value = localStorage['txt_otherIncome' + year];
                        document.getElementById('txt_PBDITA' + year).value = localStorage['txt_PBDITA' + year];
                        document.getElementById('txt_Dep' + year).value = localStorage['txt_Dep' + year];
                        document.getElementById('txt_PBIT' + year).value = localStorage['txt_PBIT' + year];
                        document.getElementById('txt_totalFinCost' + year).value = localStorage['txt_totalFinCost' + year];
                        document.getElementById('txt_PBT' + year).value = localStorage['txt_PBT' + year];
                        document.getElementById('txt_liab' + year).value = localStorage['txt_liab' + year];
                        document.getElementById('txt_provForTax' + year).value = localStorage['txt_provForTax' + year];
                        document.getElementById('txt_ProvAfterTax' + year).value = localStorage['txt_ProvAfterTax' + year];
                        document.getElementById('txt_EPS' + year).value = localStorage['txt_EPS' + year];
                        document.getElementById('txt_basic' + year).value = localStorage['txt_basic' + year];
                        document.getElementById('txt_diluted' + year).value = localStorage['txt_diluted' + year];


                    }
                }
                
            }
        }

    </script>
        
</head>
<body onload="viewload(); checkinng();">
    <form id="form1" runat="server">
        <div>
             <div style="margin-left: 50px;" id="myform">

                            <table  id="blacklistgrid" >

                                <tr id="Row1" style="background-color: aquamarine">
                                    <td>Particulars</td>
                                </tr>

                                <tr id="Row2">
                                    <td>Income
                                    </td>
                                </tr>
                                <tr>
                                    <td>Revenue from operations</td>
                                </tr>
                                <tr>
                                    <td>Less: Indirect Tax</td>
                                </tr>
                                <tr>
                                    <th scope="row" style="text-align: right;">Net Sales (A)</th>
                                </tr>



                                <tr>
                                    <th scope="row"><u>Expenditure</u></th>

                                </tr>

                                <tr>
                                    <%--      <th scope="row">Cost of materials consumed</th>--%>
                                    <td>Cost of materials consumed</td>

                                </tr>
                                <tr>
                                    <%-- <th scope="row">6</th>--%>
                                    <td>Changes in inventories of finished goods, work-in progress and products for sale </td>

                                </tr>
                                <tr>
                                    <td>Power and Fuel</td>

                                </tr>
                                <tr>
                                    <%--      <th scope="row">8</th>--%>
                                    <td>Cost of Production</td>

                                </tr>
                                <tr>
                                    <%--<th scope="row">9</th>--%>
                                    <td>Employee / Payroll Cost</td>

                                </tr>
                                <tr>
                                    <td>Administrative expenses</td>

                                </tr>
                                <tr>
                                    <%--      <th scope="row">11</th>--%>
                                    <td>Selling expenses</td>

                                </tr>
                                <tr>
                                    <%--      <th scope="row">12</th>--%>
                                    <td>Other Expenses</td>

                                </tr>
                                <tr>
                                    <th scope="row" style="text-align: right;">Total expenditure (B)</th>

                                </tr>
                                <tr>
                                    <th scope="row"><u>Operating profit / EBDITA</u></th>

                                </tr>
                                <tr>
                                    <td>Add: Other income </td>

                                </tr>
                                <tr>
                                    <th scope="row">PBDITA</th>

                                </tr>
                                <tr>
                                    <td>Less: Depreciation and Amortization</td>

                                </tr>
                                <tr>
                                    <th scope="row">PBIT</th>

                                </tr>
                                <tr>
                                    <td>Less: Total Financial cost</td>

                                </tr>
                                <tr>
                                    <th scope="row">PBT</th>

                                </tr>
                                <tr>
                                    <td>Provision for deferred tax asset/(liability), Prior period expenses</td>

                                </tr>
                                <tr>
                                    <td>Provision for tax</td>

                                </tr>
                                <tr>
                                    <th scope="row">Profit after Tax </th>

                                </tr>
                                <tr>
                                    <td>Earnings per equity share (EPS)</td>

                                </tr>
                                <tr>
                                    <td>Basic</td>

                                </tr>
                                <tr>
                                    <td>Diluted</td>

                                </tr>

                            </table>
          
                            <asp:Button OnClientClick="savePandL();" OnClick="Button1_Click" ID="Button1" runat="server" Text="Next" />

                        </div>
        </div>
    </form>
</body>
</html>
