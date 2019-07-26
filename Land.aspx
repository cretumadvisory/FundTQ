<%@ Page Title="" Language="C#" MasterPageFile="~/fundTQ.Master" AutoEventWireup="true" CodeBehind="Land.aspx.cs" Inherits="demo1.Land" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="css/style.css" rel="stylesheet">
    <!-- SCRIPTS -->
    <!-- JQuery -->
    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="js/mdb.min.js"></script>
    <%--to prevent jumping--%>
    <style>
      body.modal-open-noscroll 
{
  margin-right: 0!important;
  overflow: hidden;
}
.modal-open-noscroll .navbar-default, .modal-open .navbar-default 
{
  margin-right: 0!important;
}

    </style>
    <script>//to prevent jumping
 $(document).ready(function () {
    $('.modal').on('show.bs.modal', function () {
        if ($(document).height() > $(window).height()) {
            // no-scroll
            $('body').addClass("modal-open-noscroll");
        }
        else {
            $('body').removeClass("modal-open-noscroll");
        }
    });
    $('.modal').on('hide.bs.modal', function () {
        $('body').removeClass("modal-open-noscroll");
    });
})
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="view jarallax" style="background-image: linear-gradient(to right, #43C6AC, #F8FFAE); height: 500px; display: flex; align-items: center; justify-content: center;">
        <div>
            <h1 style="text-align: center;" class="display-4 font-weight-normal ">FUNDTQ</h1>
            <p style="text-align: center;" class="lead font-weight-normal">Why go to others to valuate your own business</p>
            <div style="text-align: center;"><a class="btn btn-outline-secondary" href="#" data-toggle="modal" data-target="#modalLRForm">Let's Do It</a></div>
        </div>
    </div>


    <!--Modal-->

    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>

    <!--Modal: Login / Register Form-->
    <div class="modal fade" id="modalLRForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog cascading-modal" role="document">
            <!--Content-->
            <div class="modal-content">

                <!--Modal cascading tabs-->
                <div class="modal-c-tabs">

                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs md-tabs tabs-2 lightseagreen" role="tablist">
                        <li class="nav-item waves-effect waves-light">
                            <a class="nav-link active" data-toggle="tab" href="#panel7" role="tab"><i class="fas fa-user mr-1"></i>
                                Login</a>
                        </li>
                        <li class="nav-item waves-effect waves-light">
                            <a class="nav-link" data-toggle="tab" href="#panel8" role="tab"><i class="fas fa-user-plus mr-1"></i>
                                Register</a>
                        </li>
                    </ul>

                    <!-- Tab panels -->
                    <div class="tab-content">
                        <!--Panel 7-->
                        <div class="tab-pane fade in show active" id="panel7" role="tabpanel">

                            <!--Body-->
                            <div class="modal-body mb-1">
                                <div class="md-form form-sm mb-5">
                                    <i class="fas fa-envelope prefix"></i>
                                    <input type="email" id="modalLRInput10" class="form-control form-control-sm validate">
                                    <label data-error="wrong" data-success="right" for="modalLRInput10">Your email</label>
                                </div>

                                <div class="md-form form-sm mb-4">
                                    <i class="fas fa-lock prefix"></i>
                                    <input type="password" id="modalLRInput11" class="form-control form-control-sm validate">
                                    <label data-error="wrong" data-success="right" for="modalLRInput11">Your password</label>
                                </div>
                                <div class="text-center mt-2">
                                    <button class="btn" style="background-color: lightseagreen;">Log in <i class="fas fa-sign-in ml-1"></i></button>
                                </div>
                            </div>



                            <!--Footer-->
                            <div class="modal-footer">
                                <%--<div class="options text-center text-md-right mt-1">
                <p>Not a member? <a  href="#panel8" class="blue-text">Sign Up</a></p>
                <p>Forgot <a href="#" class="blue-text">Password?</a></p>
              </div>--%>
                                <button type="button" class="btn btn-outline-info waves-effect ml-auto" data-dismiss="modal">Close</button>
                            </div>

                        </div>
                        <!--/.Panel 7-->

                        <!--Panel 8-->
                        <div class="tab-pane fade" id="panel8" role="tabpanel">

                            <!--Body-->
                            <div class="modal-body">
                                <div class="md-form form-sm mb-5">
                                    <i class="fas fa-envelope prefix"></i>
                                    <input type="email" placeholder="Your Email" id="txtEmail" runat="server" class="form-control form-control-sm validate">
<%--                                    <label data-error="wrong" data-success="right" for="modalLRInput12">Your email</label>--%>
                                </div>

                                <div class="md-form form-sm mb-5">
                                    <i class="fas fa-lock prefix"></i>
                                    <input type="password" placeholder="Your Password" id="txtPassword" runat="server" class="form-control form-control-sm validate">
<%--                                    <label data-error="wrong" data-success="right" for="modalLRInput13">Your password</label>--%>
                                </div>

                                <div class="md-form form-sm mb-4">
                                    <i class="fas fa-lock prefix"></i>
                                    <input type="password" placeholder="Confirm Password" id="txtConfirm" runat="server" class="form-control form-control-sm validate">
<%--                                    <label data-error="wrong" data-success="right" for="modalLRInput14">Repeat password</label>--%>
                                </div>
                                 <div class="md-form form-sm mb-4">
                                    <i class="fas fa-lock prefix"></i>
                                    <input type="text" id="txtFirstName"  placeholder="First Name" runat="server" class="form-control form-control-sm validate">
<%--                                    <label data-error="wrong" data-success="right" for="modalLRInput14">First Name</label>--%>
                                </div>
                                 <div class="md-form form-sm mb-4">
                                    <i class="fas fa-lock prefix"></i>
                                    <input type="text" id="txtLastName" placeholder="Last Name" runat="server" class="form-control form-control-sm validate">
<%--                                    <label data-error="wrong" data-success="right" for="modalLRInput14">Last Name</label>--%>
                                </div>

                                <div class="text-center form-sm mt-2">
                                    <asp:Button ID="Button1" runat="server" class="btn" OnClick="Button1_Click" style="background-color: lightseagreen;" Text="Button" />
<%--                                    <button id="btn_signup" runat="server" class="btn" OnClick="" style="background-color: lightseagreen;" >Sign up <i class="fas fa-sign-in ml-1"></i></button>--%>
                                </div>

                            </div>
                            <!--Footer-->
                            <div class="modal-footer">
                                <%--<div class="options text-right">
                <p class="pt-1">Already have an account? <a href="#" class="blue-text">Log In</a></p>
              </div>--%>
                                <button type="button" class="btn btn-outline-info waves-effect ml-auto" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                        <!--/.Panel 8-->
                    </div>

                </div>
            </div>
            <!--/.Content-->
        </div>

    </div>
    <!--Modal: Login / Register Form-->

    <!--Features-->
            <!-- Section: Features v.1 -->
<section class="text-center my-5">

  <!-- Section heading -->
  <h2 class="h1-responsive font-weight-bold my-5">Why is it so great?</h2>
  <!-- Section description -->
  <p class="lead grey-text w-responsive mx-auto mb-5">Lorem ipsum dolor sit amet, consectetur adipiscing elit,
    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>

  <!-- Grid row -->
  <div class="row">

    <!-- Grid column -->
    <div class="col-md-4">

      <i class="fas fa-chart-area fa-3x red-text"></i>
      <h5 class="font-weight-bold my-4">Analytics</h5>
      <p class="grey-text mb-md-0 mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit
        maiores aperiam minima assumenda deleniti hic.
      </p>

    </div>
    <!-- Grid column -->

    <!-- Grid column -->
    <div class="col-md-4">

      <i class="fas fa-book fa-3x cyan-text"></i>
      <h5 class="font-weight-bold my-4">Knowledge</h5>
      <p class="grey-text mb-md-0 mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit
        maiores aperiam minima assumenda deleniti hic.
      </p>

    </div>
    <!-- Grid column -->

    <!-- Grid column -->
    <div class="col-md-4">

      <i class="far fa-comments fa-3x orange-text"></i>
      <h5 class="font-weight-bold my-4">Support</h5>
      <p class="grey-text mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit maiores
        aperiam minima assumenda deleniti hic.
      </p>

    </div>
    <!-- Grid column -->

  </div>
  <!-- Grid row -->

</section>
<!-- Section: Features v.1 -->
</asp:Content>
