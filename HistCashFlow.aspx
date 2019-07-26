<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HistCashFlow.aspx.cs" Inherits="demo1.tr" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <link href="css/Sidenav.css" rel="stylesheet" />
    
    
    <title></title>

    <script>
        function cashflowcalc(textControl) {
            for (var i = 0, year = 2015; i < 2; i++) {
                document.getElementById('txt_adjustedProfit' + year).value = +document.getElementById('txt_pat' + year).value + +document.getElementById('txt_depamort' + year).value + +document.getElementById('txt_defferedTax' + year).value + +document.getElementById('txt_interestExpense' + year).value + +document.getElementById('txt_finIncome' + year).value + +document.getElementById('txt_netExchange' + year).value + +document.getElementById('txt_loss' + year).value;
                document.getElementById('txt_changeCapital' + year).value = +document.getElementById('txt_decreaseESOP' + year).value + +document.getElementById('txt_increaseOther' + year).value + +document.getElementById('txt_increaseTradePay' + year).value + +document.getElementById('txt_increaseShort' + year).value + +document.getElementById('txt_increaseTrades' + year).value + +document.getElementById('txt_increaseInvent' + year).value;
                document.getElementById('txt_cashGen' + year).value = +document.getElementById('txt_adjustedProfit' + year).value + +document.getElementById('txt_changeCapital' + year).value;
                document.getElementById('txt_netCashOperating' + year).value = +document.getElementById('txt_intRec' + year).value + +document.getElementById('txt_cashGen' + year).value - +document.getElementById('txt_intPaid' + year).value;
                document.getElementById('txt_netCashinvest' + year).value = +document.getElementById('txt_addProperty' + year).value + +document.getElementById('txt_addMutFunds' + year).value + +document.getElementById('txt_addIntangAssets' + year).value + +document.getElementById('txt_investSubsidiaries' + year).value + +document.getElementById('txt_proceedsDisposal' + year).value + +document.getElementById('txt_interestRec' + year).value + +document.getElementById('txt_dividend' + year).value;
                document.getElementById('txt_netCashFin' + year).value = +document.getElementById('txt_procBorrowing' + year).value + +document.getElementById('txt_issueShares' + year).value + +document.getElementById('txt_borrowinRec' + year).value + +document.getElementById('txt_borrowingrepay' + year).value + +document.getElementById('txt_divPaid' + year).value + +document.getElementById('txt_interestPaid' + year).value;
                document.getElementById('txt_increaseCash' + year).value = +document.getElementById('txt_netCashOperating' + year).value + +document.getElementById('txt_netCashinvest' + year).value + +document.getElementById('txt_netCashFin' + year).value;
                year++;
            }
        }

        function saveCashFlow() {
            alert('clicked');
            for (var i = 0, year = 2015; i < 2; i++ , year++) {
                localStorage['txt_pat' + year] = document.getElementById('txt_pat' + year).value;

                localStorage['txt_depamort' + year] = document.getElementById('txt_depamort' + year).value;

                localStorage['txt_defferedTax' + year] = document.getElementById('txt_defferedTax' + year).value;
                localStorage['txt_interestExpense' + year] = document.getElementById('txt_interestExpense' + year).value;


                localStorage['txt_finIncome' + year] = document.getElementById('txt_finIncome' + year).value;
                localStorage['txt_netExchange' + year] = document.getElementById('txt_netExchange' + year).value;
                localStorage['txt_loss' + year] = document.getElementById('txt_loss' + year).value;

                localStorage['txt_adjustedProfit' + year] = document.getElementById('txt_adjustedProfit' + year).value;

                localStorage['txt_increaseInvent' + year] = document.getElementById('txt_increaseInvent' + year).value;

                localStorage['txt_increaseTrades' + year] = document.getElementById('txt_increaseTrades' + year).value;

                localStorage['txt_increaseShort' + year] = document.getElementById('txt_increaseShort' + year).value;

                localStorage['txt_increaseTradePay' + year] = document.getElementById('txt_increaseTradePay' + year).value;

                localStorage['txt_increaseOther' + year] = document.getElementById('txt_increaseOther' + year).value;

                localStorage['txt_decreaseESOP' + year] = document.getElementById('txt_decreaseESOP' + year).value;

                localStorage['txt_changeCapital' + year] = document.getElementById('txt_changeCapital' + year).value;

                localStorage['txt_cashGen' + year] = document.getElementById('txt_cashGen' + year).value;

                localStorage['txt_intPaid' + year] = document.getElementById('txt_intPaid' + year).value;
                localStorage['txt_intRec' + year] = document.getElementById('txt_intRec' + year).value;
                localStorage['txt_netCashOperating' + year] = document.getElementById('txt_netCashOperating' + year).value;


                localStorage['txt_addProperty' + year] = document.getElementById('txt_addProperty' + year).value;
                localStorage['txt_addMutFunds' + year] = document.getElementById('txt_addMutFunds' + year).value;
                localStorage['txt_addIntangAssets' + year] = document.getElementById('txt_addIntangAssets' + year).value;
                localStorage['txt_investSubsidiaries' + year] = document.getElementById('txt_investSubsidiaries' + year).value;
                localStorage['txt_proceedsDisposal' + year] = document.getElementById('txt_proceedsDisposal' + year).value;
                localStorage['txt_interestRec' + year] = document.getElementById('txt_interestRec' + year).value;
                localStorage['txt_dividend' + year] = document.getElementById('txt_dividend' + year).value;
                localStorage['txt_netCashinvest' + year] = document.getElementById('txt_netCashinvest' + year).value;

                localStorage['txt_procBorrowing' + year] = document.getElementById('txt_procBorrowing' + year).value;
                localStorage['txt_issueShares' + year] = document.getElementById('txt_issueShares' + year).value;
                localStorage['txt_borrowinRec' + year] = document.getElementById('txt_borrowinRec' + year).value;
                localStorage['txt_borrowingrepay' + year] = document.getElementById('txt_borrowingrepay' + year).value;
                localStorage['txt_divPaid' + year] = document.getElementById('txt_divPaid' + year).value;
                localStorage['txt_interestPaid' + year] = document.getElementById('txt_interestPaid' + year).value;
                localStorage['txt_netCashFin' + year] = document.getElementById('txt_netCashFin' + year).value;
                localStorage['txt_increaseCash' + year] = document.getElementById('txt_increaseCash' + year).value;
                localStorage['txt_cashBeginning' + year] = document.getElementById('txt_cashBeginning' + year).value;
                localStorage['txt_effect' + year] = document.getElementById('txt_effect' + year).value;
                localStorage['txt_cashEnd' + year] = document.getElementById('txt_cashEnd' + year).value;
                localStorage['txt_investShort' + year] = document.getElementById('txt_investShort' + year).value;
                localStorage['txt_bankOverdraft' + year] = document.getElementById('txt_bankOverdraft' + year).value;
                localStorage['txt_cashBal' + year] = document.getElementById('txt_cashBal' + year).value;
                alert(localStorage['txt_cashBal' + year]);

            }


        }

        function viewload() {
            var myform = $('#myform')
            iter = <%=this.a%>;
            var year = 2015;
            //$('#btnAddCol').click(function () {
            myform.find('tr').each(function () {
                var trow = $(this);
                for (var i = 0, y = 2015; i < iter; i++ , y++) {
                    if (trow.index() === 0) {
                        trow.append('<td>Col' + y + '</td>');
                    }
                    else if (trow.index() === 1 || trow.index() === 3 || trow.index() === 22 || trow.index() === 31) {
                        continue;
                    } else if (trow.index() === 2) {

                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_pat' + y + '"/> </td>');
                        document.getElementById('txt_pat' + y).value = document.getElementById('txt_ProvAfterTax' + y)

                    }

                    else if (trow.index() === 4) {

                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_depamort' + y + '"/> </td>');

                    }
                    else if (trow.index() === 5) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_defferedTax' + y + '"/> </td>');

                    }
                    else if (trow.index() === 6) {

                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_interestExpense' + y + '"/> </td>');

                    }
                    else if (trow.index() === 7) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_finIncome' + y + '"/> </td>');
                    }
                    else if (trow.index() === 8) {

                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_netExchange' + y + '"/> </td>');
                    }
                    else if (trow.index() === 9) {

                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_loss' + y + '"/> </td>');
                    } else if (trow.index() === 10) {

                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_adjustedProfit' + y + '"/> </td>');
                    } else if (trow.index() === 11) {

                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_increaseInvent' + y + '"/> </td>');
                    } else if (trow.index() === 12) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" readonly="true" id="txt_increaseTrades' + y + '"/> </td>');
                    } else if (trow.index() === 13) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_increaseShort' + y + '"/> </td>');
                    } else if (trow.index() === 14) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_increaseTradePay' + y + '"/> </td>');
                    } else if (trow.index() === 15) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_increaseOther' + y + '"/> </td>');
                    } else if (trow.index() === 16) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_decreaseESOP' + y + '"/> </td>');
                    } else if (trow.index() === 17) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_changeCapital' + y + '"/> </td>');
                    } else if (trow.index() === 18) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_cashGen' + y + '"/> </td>');
                    } else if (trow.index() === 19) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();"  id="txt_intPaid' + y + '"/> </td>');
                    } else if (trow.index() === 20) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_intRec' + y + '"/> </td>');
                    } else if (trow.index() === 21) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_netCashOperating' + y + '"/> </td>');
                    } else if (trow.index() === 23) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_addProperty' + y + '"/> </td>');
                    } else if (trow.index() === 24) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_addMutFunds' + y + '"/> </td>');
                    } else if (trow.index() === 25) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_addIntangAssets' + y + '"/> </td>');
                    } else if (trow.index() === 26) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();"  id="txt_investSubsidiaries' + y + '"/> </td>');
                    } else if (trow.index() === 27) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_proceedsDisposal' + y + '"/> </td>');
                    } else if (trow.index() === 28) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_interestRec' + y + '"/> </td>');
                    } else if (trow.index() === 29) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_dividend' + y + '"/> </td>');
                    } else if (trow.index() === 30) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_netCashinvest' + y + '"/> </td>');
                    } else if (trow.index() === 32) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_procBorrowing' + y + '"/> </td>');
                    } else if (trow.index() === 33) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();"  id="txt_issueShares' + y + '"/> </td>');
                    } else if (trow.index() === 34) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_borrowinRec' + y + '"/> </td>');
                    } else if (trow.index() === 35) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();"  id="txt_borrowingrepay' + y + '"/> </td>');
                    } else if (trow.index() === 36) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();"  id="txt_divPaid' + y + '"/> </td>');
                    } else if (trow.index() === 37) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();"  id="txt_interestPaid' + y + '"/> </td>');
                    } else if (trow.index() === 38) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_netCashFin' + y + '"/> </td>');
                    } else if (trow.index() === 39) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_increaseCash' + y + '"/> </td>');
                    } else if (trow.index() === 40) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_cashBeginning' + y + '"/> </td>');
                    } else if (trow.index() === 41) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_effect' + y + '"/> </td>');
                    } else if (trow.index() === 42) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_cashEnd' + y + '"/> </td>');
                    } else if (trow.index() === 43) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();" id="txt_investShort' + y + '"/> </td>');
                    } else if (trow.index() === 44) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();"  id="txt_bankOverdraft' + y + '"/> </td>');
                    } else if (trow.index() === 45) {
                        trow.append('<td> <input type="input" onkeyup="javascript:cashflowcalc();"  id="txt_cashBal' + y + '"/> </td>');
                    }


                    else {
                        trow.append('<td><input type="input" id="cb' + i + '"/></td>');
                    }

                }

            });

            //});
        }


        function load() {

            for (var i = 0, year = 2015; i < 2; i++ , year++) {
                if (localStorage['txt_pat' + year] === undefined) {
                    localStorage['txt_pat' + year] === 0
                }
                else {
                    document.getElementById('txt_pat' + year).value = localStorage['txt_pat' + year];

                }
                if (localStorage['txt_depamort' + year] === undefined) {
                    localStorage['txt_depamort' + year] === 0
                }
                else
                    document.getElementById('txt_depamort' + year).value = localStorage['txt_depamort' + year];

                if (localStorage['txt_defferedTax' + year] === undefined) {
                    localStorage['txt_defferedTax' + year] === 0
                } else
                    document.getElementById('txt_defferedTax' + year).value = localStorage['txt_defferedTax' + year];

                if (localStorage['txt_interestExpense' + year] === undefined) {
                    localStorage['txt_interestExpense' + year] === 0

                } else
                    document.getElementById('txt_interestExpense' + year).value = localStorage['txt_interestExpense' + year];

                if (localStorage['txt_finIncome' + year] === undefined) {
                    localStorage['txt_finIncome' + year] === 0

                } else
                    document.getElementById('txt_finIncome' + year).value = localStorage['txt_finIncome' + year];

                if (localStorage['txt_netExchange' + year] === undefined) {
                    localStorage['txt_netExchange' + year] === 0

                } else
                    document.getElementById('txt_netExchange' + year).value = localStorage['txt_netExchange' + year];

                if (localStorage['txt_loss' + year] === undefined) {
                    localStorage['txt_loss' + year] === 0

                } else
                    document.getElementById('txt_loss' + year).value = localStorage['txt_loss' + year];

                if (localStorage['txt_adjustedProfit' + year] === undefined) {
                    localStorage['txt_adjustedProfit' + year] === 0

                } else
                    document.getElementById('txt_adjustedProfit' + year).value = localStorage['txt_adjustedProfit' + year];

                if (localStorage['txt_increaseInvent' + year] === undefined) {
                    localStorage['txt_increaseInvent' + year] === 0

                } else
                    document.getElementById('txt_increaseInvent' + year).value = localStorage['txt_increaseInvent' + year];

                if (localStorage['txt_increaseTrades' + year] === undefined) {
                    localStorage['txt_increaseTrades' + year] === 0

                } else
                    document.getElementById('txt_increaseTrades' + year).value = localStorage['txt_increaseTrades' + year];

                if (localStorage['txt_increaseShort' + year] === undefined) {
                    localStorage['txt_increaseShort' + year] === 0

                } else
                    document.getElementById('txt_increaseShort' + year).value = localStorage['txt_increaseShort' + year];

                if (localStorage['txt_increaseTradePay' + year] === undefined) {
                    localStorage['txt_increaseTradePay' + year] === 0

                } else
                    document.getElementById('txt_increaseTradePay' + year).value = localStorage['txt_increaseTradePay' + year];

                if (localStorage['txt_increaseOther' + year] === undefined) {
                    localStorage['txt_increaseOther' + year] === 0

                } else
                    document.getElementById('txt_increaseOther' + year).value = localStorage['txt_increaseOther' + year];

                if (localStorage['txt_decreaseESOP' + year] === undefined) {
                    localStorage['txt_decreaseESOP' + year] === 0

                } else
                    document.getElementById('txt_decreaseESOP' + year).value = localStorage['txt_decreaseESOP' + year];

                if (localStorage['txt_changeCapital' + year] === undefined) {
                    localStorage['txt_changeCapital' + year] === 0

                } else
                    document.getElementById('txt_changeCapital' + year).value = localStorage['txt_changeCapital' + year];

                if (localStorage['txt_cashGen' + year] === undefined) {
                    localStorage['txt_cashGen' + year] === 0

                } else
                    document.getElementById('txt_cashGen' + year).value = localStorage['txt_cashGen' + year];

                if (localStorage['txt_intPaid' + year] === undefined) {
                    localStorage['txt_intPaid' + year] === 0

                } else
                    document.getElementById('txt_intPaid' + year).value = localStorage['txt_intPaid' + year];

                if (localStorage['txt_intRec' + year] === undefined) {
                    localStorage['txt_intRec' + year] === 0

                } else
                    document.getElementById('txt_intRec' + year).value = localStorage['txt_intRec' + year];

                if (localStorage['txt_netCashOperating' + year] === undefined) {
                    localStorage['txt_netCashOperating' + year] === 0

                } else
                    document.getElementById('txt_netCashOperating' + year).value = localStorage['txt_netCashOperating' + year];

                if (localStorage['txt_addProperty' + year] === undefined) {
                    localStorage['txt_addProperty' + year] === 0

                } else
                    document.getElementById('txt_addProperty' + year).value = localStorage['txt_addProperty' + year];

                if (localStorage['txt_addMutFunds' + year] === undefined) {
                    localStorage['txt_addMutFunds' + year] === 0

                } else
                    document.getElementById('txt_addMutFunds' + year).value = localStorage['txt_addMutFunds' + year];

                if (localStorage['txt_addIntangAssets' + year] === undefined) {
                    localStorage['txt_addIntangAssets' + year] === 0

                } else
                    document.getElementById('txt_addIntangAssets' + year).value = localStorage['txt_addIntangAssets' + year];

                if (localStorage['txt_investSubsidiaries' + year] === undefined) {
                    localStorage['txt_investSubsidiaries' + year] === 0

                } else
                    document.getElementById('txt_investSubsidiaries' + year).value = localStorage['txt_investSubsidiaries' + year];

                if (localStorage['txt_proceedsDisposal' + year] === undefined) {
                    localStorage['txt_proceedsDisposal' + year] === 0

                } else
                    document.getElementById('txt_proceedsDisposal' + year).value = localStorage['txt_proceedsDisposal' + year];

                if (localStorage['txt_interestRec' + year] === undefined) {
                    localStorage['txt_interestRec' + year] === 0

                } else
                    document.getElementById('txt_interestRec' + year).value = localStorage['txt_interestRec' + year];

                if (localStorage['txt_dividend' + year] === undefined) {
                    localStorage['txt_dividend' + year] === 0

                } else
                    document.getElementById('txt_dividend' + year).value = localStorage['txt_dividend' + year];

                if (localStorage['txt_netCashinvest' + year] === undefined) {
                    localStorage['txt_netCashinvest' + year] === 0

                } else
                    document.getElementById('txt_netCashinvest' + year).value = localStorage['txt_netCashinvest' + year];

                if (localStorage['txt_procBorrowing' + year] === undefined) {
                    localStorage['txt_procBorrowing' + year] === 0

                } else
                    document.getElementById('txt_procBorrowing' + year).value = localStorage['txt_procBorrowing' + year];

                if (localStorage['txt_issueShares' + year] === undefined) {
                    localStorage['txt_issueShares' + year] === 0

                } else
                    document.getElementById('txt_issueShares' + year).value = localStorage['txt_issueShares' + year];

                if (localStorage['txt_borrowinRec' + year] === undefined) {
                    localStorage['txt_borrowinRec' + year] === 0

                } else
                    document.getElementById('txt_borrowinRec' + year).value = localStorage['txt_borrowinRec' + year];

                if (localStorage['txt_borrowingrepay' + year] === undefined) {
                    localStorage['txt_borrowingrepay' + year] === 0

                }else
                    document.getElementById('txt_borrowingrepay' + year).value = localStorage['txt_borrowingrepay' + year];

                if (localStorage['txt_divPaid' + year] === undefined) {
                    localStorage['txt_divPaid' + year] === 0

                }else
                    document.getElementById('txt_divPaid' + year).value = localStorage['txt_divPaid' + year];

                if (localStorage['txt_interestPaid' + year] === undefined) {
                    localStorage['txt_interestPaid' + year] === 0

                }else
                    document.getElementById('txt_interestPaid' + year).value = localStorage['txt_interestPaid' + year];

                if (localStorage['txt_netCashFin' + year] === undefined) {
                    localStorage['txt_netCashFin' + year] === 0

                } else
                    document.getElementById('txt_netCashFin' + year).value = localStorage['txt_netCashFin' + year];

                if (localStorage['txt_increaseCash' + year] === undefined) {
                    localStorage['txt_increaseCash' + year] === 0

                } else
                    document.getElementById('txt_increaseCash' + year).value = localStorage['txt_increaseCash' + year];

                if (localStorage['txt_cashBeginning' + year] === undefined) {
                    localStorage['txt_cashBeginning' + year] === 0

                } else
                    document.getElementById('txt_cashBeginning' + year).value = localStorage['txt_cashBeginning' + year];

                if (localStorage['txt_effect' + year] === undefined) {
                    localStorage['txt_effect' + year] === 0

                } else
                    document.getElementById('txt_effect' + year).value = localStorage['txt_effect' + year];

                if (localStorage['txt_cashEnd' + year] === undefined) {
                    localStorage['txt_cashEnd' + year] === 0

                } else
                    document.getElementById('txt_cashEnd' + year).value = localStorage['txt_cashEnd' + year];

                if (localStorage['txt_investShort' + year] === undefined) {
                    localStorage['txt_investShort' + year] === 0

                } else
                    document.getElementById('txt_investShort' + year).value = localStorage['txt_investShort' + year];

                if (localStorage['txt_bankOverdraft' + year] === undefined) {
                    localStorage['txt_bankOverdraft' + year] === 0

                } else
                    document.getElementById('txt_bankOverdraft' + year).value = localStorage['txt_bankOverdraft' + year];

                if (localStorage['txt_cashBal' + year] === undefined) {
                    localStorage['txt_cashBal' + year] === 0

                } else
                    document.getElementById('txt_cashBal' + year).value = localStorage['txt_cashBal' + year];



            }

        }


    </script>
</head>


<body onload="viewload(); load();">
    <form id="form1" runat="server">
        <div>
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
            <div style="margin-left: 50px;" name="myform" id="myform">
                <table class="table">

                    <tr>
                        <th scope="col">Particulars</th>
                    </tr>

                    <tr>
                        <th scope="row"><u>OPERATING ACTIVITIES</u></th>

                    </tr>

                    <tr>
                        <%--<th scope="row">Less: Indirect Tax</th>--%>
                        <td>Proft after taxation</td>

                    </tr>


                    <tr>
                        <td>Adjustments:</td>

                    </tr>

                    <tr>
                        <%--      <th scope="row">Cost of materials consumed</th>--%>
                        <td>Depreciation and amortisation</td>

                    </tr>
                    <tr>
                        <%-- <th scope="row">6</th>--%>
                        <td>Deferred Income Tax
                        </td>


                    </tr>
                    <tr>

                        <td>Interest expense charged to statement of comprehensive income</td>

                    </tr>
                    <tr>
                        <%--      <th scope="row">8</th>--%>
                        <td>Finance income recognised in statement of comprehensive income  </td>

                    </tr>
                    <tr>
                        <%--<th scope="row">9</th>--%>
                        <td>Net unrealised foreign exchange gains</td>

                    </tr>
                    <tr>
                        <td>Loss/ (Gain) on disposal of property, plant and equipment</td>
                        <%-- <th scope="row">10</th>--%>
                    </tr>
                    <tr>
                        <%--      <th scope="row">11</th>--%>
                        <td>Adjusted proft before working capital </td>

                    </tr>
                    <tr>
                        <td>Increase in inventories </td>


                    </tr>
                    <tr>
                        <td>Increase in trade and other receivables </td>

                    </tr>
                    <tr>
                        <td>Increase in short term deposits</td>

                    </tr>
                    <tr>
                        <td>Increase in trade payables</td>

                    </tr>
                    <tr>
                        <td>Increase in other payables</td>

                    </tr>
                    <tr>
                        <td>Decrease in due from ESOP</td>

                    </tr>

                    <tr>
                        <th scope="row" style="text-align: right">Change in Working Capital</th>


                    </tr>
                    <tr>
                        <td>Cash generated from operating activities</td>

                    </tr>
                    <tr>
                        <td>Interest Paid</td>


                    </tr>
                    <tr>
                        <td>Interest Received</td>

                    </tr>
                    <tr>
                        <th scope="row" style="text-align: right">Net cash generated from operating activities</th>

                    </tr>
                    <tr>
                        <th scope="row">INVESTING ACTIVITIES</th>

                    </tr>


                    <tr>
                        <td>Additions to property, plant and equipment</td>



                    </tr>
                    <tr>
                        <td>Additions to mutual funds
                        </td>



                    </tr>
                    <tr>
                        <td>Additions to intangible assets
                        </td>



                    </tr>
                    <tr>
                        <td>Investment in subsidiaries, Joint ventures
                        </td>
                    </tr>
                    <tr>
                        <td>Proceeds of disposal of property, plant and equipment
                        </td>

                    </tr>
                    <tr>
                        <td>Interest received
                        </td>

                    </tr>
                    <tr>
                        <td>Dividend received
                        </td>

                    </tr>
                    <tr>
                        <th scope="row" style="text-align: right">Net cash used in investing activities
                        </th>

                    </tr>
                    <tr>
                        <td>FINANCING ACTIVITIES
                        </td>

                    </tr>
                    <tr>
                        <td>Proceeds from borrowings
                        </td>

                    </tr>
                    <tr>
                        <td>Issue of shares
                        </td>

                    </tr>
                    <tr>
                        <td>Borrowings received 
                        </td>

                    </tr>
                    <tr>
                        <td>Repayment of borrowings
                        </td>

                    </tr>
                    <tr>
                        <td>Dividends paid  
                        </td>

                    </tr>
                    <tr>
                        <td>Interest Paid
                        </td>

                    </tr>
                    <tr>
                        <th scope="row" style="text-align: right">Net cash used in financing activities
                        </th>

                    </tr>
                    <tr>
                        <td>Increase in cash and cash equivalents
                        </td>

                    </tr>
                    <tr>
                        <td>Cash and cash equivalents at the beginning of the year
                        </td>

                    </tr>
                    <tr>
                        <td>Effect of translation adjustment on cash held in foreign subsidiaries
                        </td>

                    </tr>
                    <tr>
                        <th scope="row" style="text-align: right">Cash and cash equivalents at the end of the year
                        </th>

                    </tr>
                    <tr>
                        <td>Investments in short-term deposits
                        </td>

                    </tr>
                    <tr>
                        <td>Bank overdraft
                        </td>

                    </tr>
                    <tr>
                        <th scope="row" style="text-align: right">Cash & bank balances
                        </th>

                    </tr>



                </table>
                <asp:Button type="button" runat="server"  OnClick="btnPrevious_Click" OnClientClick="saveCashFlow();" id="btnPrevious" Text="Previous"></asp:Button>

                <asp:Button type="button" runat="server" id="btNext" OnClientClick="saveCashFlow();"  OnClick="btNext_Click" Text="Next"></asp:Button>

                <input type="submit" />
            </div>
        </div>
    </form>
</body>
</html>
