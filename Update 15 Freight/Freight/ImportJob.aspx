<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ImportJob.aspx.cs" Inherits="Freight.ImportJob" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="content">
        <div class="container-fluid">

            <div class="row">
                <div class="col-md-12">
                    <div class="card" style="fit-position: center; padding-left: 10px; padding-bottom: 10px; padding-right: 10px; padding-top: 10px">
                        <div class="header">
                            <h4 class="title">Job Details</h4>
                        </div>


                        <div class="row">
                            <div class="col-md-12">

                                <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                                    <asp:DropDownList ID="cmbSearch" runat="server" class="form-control col-4 mr-sm-4" AutoPostBack="True"></asp:DropDownList>
                                    <asp:Button ID="Button1" runat="server" Text="Search" class="btn btn-outline-success col-2" OnClick="Button1_Click" />


                                </nav>
                                <br />
                            </div>
                        </div>
                         <div class="content">

                            <div class="row">
                                <div class="col-md-12">

                                    <div class="container">
                                        <h2>IMPORTS</h2>
                                        <br/>
                                        <!-- Nav tabs -->
                                        <ul class="nav nav-tabs" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active" data-toggle="tab" href="#home">Master B/L</a>
                                            </li>  
                                        </ul>

                                        <!-- Tab panes -->
                                        <div class="tab-content">
                                               <div id="home" class="container tab-pane active">
                                                <br />

                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Job No </label>
                                                            <asp:TextBox ID="txtJobNo" runat="server" class="form-control" placeholder="Job No" value="" ReadOnly="True"></asp:TextBox>
                                                        </div>
                                                    </div>                                                   
                                                </div>

                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>ManifestType </label>
                                                            <asp:DropDownList ID="cmbManifestType" runat="server" class="form-control" AutoPostBack="True">
                                                                <asp:ListItem>Degroup</asp:ListItem>
                                                                <asp:ListItem>Main</asp:ListItem>
                                                                <asp:ListItem>Supplimentary</asp:ListItem>
                                                                <asp:ListItem>NIL</asp:ListItem>
                                                                <asp:ListItem>Empty Container</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>Import/Export</label>
                                                            <asp:DropDownList ID="cmbImportexport" runat="server" class="form-control" AutoPostBack="True">
                                                                <asp:ListItem Selected="True">SEA / IMPORT</asp:ListItem>
                                                                <asp:ListItem>AIR / IMPORT</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>Mode Of Transport</label>
                                                            <asp:DropDownList ID="cmbModeOfTransport" runat="server" class="form-control" AutoPostBack="True">
                                                                <asp:ListItem Selected="True">Sea Transport</asp:ListItem>
                                                                <asp:ListItem>Rail Transport</asp:ListItem>
                                                                <asp:ListItem>Road Transport</asp:ListItem>
                                                                <asp:ListItem>Air Transport</asp:ListItem>
                                                                <asp:ListItem>Postal Transport</asp:ListItem>
                                                                <asp:ListItem>Multimodal Transport</asp:ListItem>
                                                                <asp:ListItem>Transport on fixed installations</asp:ListItem>
                                                                <asp:ListItem>Inland waterways transport</asp:ListItem>
                                                                <asp:ListItem>Mode Unknown</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>Master BOL / AWB </label>
                                                            <asp:TextBox ID="txtMasterBL" runat="server" class="form-control" placeholder="Master BOL / AWB"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>Currency</label>
                                                            <asp:DropDownList ID="cmbCurrency" runat="server" class="form-control">
                                                                <asp:ListItem Selected="True">USD</asp:ListItem>
                                                                <asp:ListItem>LKR</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>Ex Rate</label>
                                                            <asp:TextBox ID="txtExRate" runat="server" class="form-control" placeholder="Ex Rate"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Vessel</label>
                                                             <asp:TextBox ID="txtVesel" runat="server" class="form-control" placeholder="Vesel"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Voyage No</label>
                                                            <asp:TextBox ID="txtVoyage" runat="server" class="form-control" placeholder="Voyage No"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">                                                    
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>ETA</label>
                                                            <div class="input-append date form_date" data-date="" data-date-format="yyyy-mm-dd" data-link-format="yyyy-mm-dd">
                                                             <asp:TextBox ID="txtETA" runat="server" class="form-control" placeholder="ETA"></asp:TextBox>
                                                            <span class="add-on"><i class="icon-th"></i></span>
                                                         </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Sub Mainfest No</label>
                                                            <asp:TextBox ID="txtSubMainfestNo" runat="server" class="form-control" placeholder="Sub Mainfest No"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div> 
                                                       
                                                <div class="row">
                                                                 <div class="col-md-6">
                                                                    <div class="form-group">  
                                                                            <label>Port Of Loading</label>
                                                                           <asp:TextBox ID="txtpolPort" runat="server" class="form-control" placeholder="Port Of Loading" ></asp:TextBox>
                                                                     </div>
                                                                </div>
                                                            <div class="col-md-6">
                                                                            <div class="form-group">  
                                                                                    <label>Port Of Discharge</label>
                                                                                   <asp:TextBox ID="txtpodPort" runat="server" class="form-control" placeholder="Port Of Loading"></asp:TextBox>
                                                                             </div>
                                                                        </div>
                                                                                   
                                                  </div>
                                               
                                              
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Date Of Departure</label>
                                                            <div class="input-append date form_date" data-date="" data-date-format="yyyy-mm-dd" data-link-format="yyyy-mm-dd">
                                                            <asp:TextBox ID="txtSOB" runat="server"  class="form-control" placeholder="Shipped On Board Date" TextMode="SingleLine"></asp:TextBox>
                                                            <span class="add-on"><i class="icon-th"></i></span>
                                                         </div>
                                                    </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>No Of HBOLs</label>
                                                            <asp:TextBox ID="txtNoOfHOBLs" runat="server" class="form-control" placeholder="No Of HBOLs"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                   
                                                   </div>

                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>No Of Packages</label>
                                                            <asp:TextBox ID="txtTotalNoOfPackages" runat="server" class="form-control" placeholder="No Of Packages"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>No Of Containers</label>
                                                             <asp:TextBox ID="txtTotalNoOfContainers" runat="server" class="form-control" placeholder="No Of Containers"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>Total Gross Weight</label>
                                                            <asp:TextBox ID="txtTotalGrossWeight" runat="server" class="form-control" placeholder="Total Gross Weight"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div> 
                                                   
                                              <div class="row">
                                                 <div class="col-md-12">
                                                    <div class="form-group">
                                                    <asp:Label ID="lblMessage"   class="form-control" runat="server" ForeColor="Red" Font-Size="Medium" Font-Bold="True" Text="hii" Visible="False"></asp:Label>
                                                    </div>
                                                  </div>
                                             </div>

                                                <div class="col-md-12">
                                                        <div class="form-group">
                                                             <asp:Button ID="btnClear" runat="server" Text="Clear Content"  class="btn btn-info btn-fill pull-right" OnClick="btnClear_Click"  />                  
                                        
                                                            <asp:Button ID="btnSubmit" runat="server" Text="Save Main BL"  class="btn btn-info btn-fill pull-right" OnClick="btnSubmit_Click" />
                                                             
                                                            <asp:Button ID="btnBL" runat="server" Text="Add Other BL"  class="btn btn-info btn-fill pull-right" OnClick="btnBL_Click" /> 
                                                        </div>
                                                </div>
                                          </div>
                                          </div>
                                    </div>
                                   </div>
                                </div>
                             </div>






                    </div>
                </div>
            </div>
        </div>
        </div>



    

 <script src="jquery/jquery-1.8.3.min.js"></script>
    <script src="js/bootstrap-datetimepicker.js"></script>
    <script src="js/bootstrap-datetimepicker.min.js"></script>

<script type="text/javascript">
    $('.form_datetime').datetimepicker({
        //language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		forceParse: 0,
        showMeridian: 1
    });
	$('.form_date').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0,
		showMeridian: 1
    });
	$('.form_time').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 1,
		minView: 0,
		maxView: 1,
		forceParse: 0
    });
</script>  






</asp:Content>
