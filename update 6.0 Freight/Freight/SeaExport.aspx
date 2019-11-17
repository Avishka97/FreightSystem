<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SeaExport.aspx.cs" Inherits="Freight.SeaImport" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="content">
            <div class="container-fluid">

                <div class="row">
                     <div class="col-md-12">
                        <div class="card" style="fit-position:center; padding-left:10px;  padding-bottom:10px; padding-right:10px; padding-top:10px">
                            <div class="header">
                                <h4 class="title">Create Job</h4>
                            </div>


                            <div class="row">
                                        <div class="col-md-12">
  
                                            <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                                                <asp:DropDownList ID="cmbSearch" runat="server" class="form-control col-4 mr-sm-4"  ></asp:DropDownList>
                                                <asp:Button ID="Button1" runat="server" Text="Search"  class="btn btn-outline-success col-2" OnClick="Button1_Click" />
                  
                                            
                                            </nav>
                                             <br />
                                          </div>
                
        
                             </div>

                             <div class="content">

                                     <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>Job No</label>
                                                <asp:TextBox ID="txtJobNo" runat="server" class="form-control" placeholder="Job No" value="" Visible="True" ReadOnly="True"></asp:TextBox>
                                            </div>
                                        </div>
                                           <div class="col-md-5">
                                            <div class="form-group">
                                                <label>Job Type</label>
                                                <asp:DropDownList ID="cmbJobType" class="form-control" runat="server">
                                                    <asp:ListItem Selected="True">SEA / EXPORT</asp:ListItem>
                                                    <asp:ListItem>SEA / IMPORT</asp:ListItem>
                                                    <asp:ListItem>AIR / EXPORT</asp:ListItem>
                                                    <asp:ListItem>AIR / IMPORT</asp:ListItem>
                                                </asp:DropDownList>                                                
                                            </div>
                                        </div>
                                    </div> 
                                 
                                   <div class="row">
                     
                                       <div class="col-md-12">

                                              <div class="card" style="fit-position:center; padding-left:10px;  padding-bottom:10px; padding-right:10px; padding-top:10px">
                                                <div class="header">
                                                    <h4 class="title">Shipper / Customer</h4>
                                                </div>
                                                 <div class="content">
                                                      <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label>Customer ID</label>
                                                                    <asp:DropDownList ID="cmbCustomerID" runat="server"  class="form-control" OnSelectedIndexChanged="cmbCustomerID_SelectedIndexChanged" AutoPostBack="True" OnTextChanged="cmbCustomerID_TextChanged"></asp:DropDownList>
                                                                </div>
                                                            </div>
                                                        </div> 
                                                       <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label>Company </label>
                                                                    <asp:TextBox ID="txtCompany" runat="server"  class="form-control" placeholder="Company" value=""></asp:TextBox>                                                
                                                                </div>
                                                            </div>                                        
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label for="exampleInputEmail1">Email address</label>
                                                                    <asp:TextBox ID="txtEmail" runat="server"  class="form-control" placeholder="Email"></asp:TextBox>                                                
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label>First Name</label>
                                                                    <asp:TextBox ID="txtFName" runat="server" class="form-control" placeholder="First Name" value=""></asp:TextBox>                                                
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label>Last Name</label>
                                                                    <asp:TextBox ID="txtLName" runat="server" class="form-control" placeholder="Last Name" value=""></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>                              

                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <label>Address</label>
                                                                    <asp:TextBox ID="txtAdd" runat="server" class="form-control" placeholder="Home Address" value=""></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>  

                                                         <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <label>Billing Address</label>
                                                                    <asp:TextBox ID="txtBill" runat="server" class="form-control" placeholder="Billing Address" value=""></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>  
                                 
                                                           <div class="row">                                
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label>TELEPHONE</label>
                                                                    <asp:TextBox ID="txtTel" runat="server" class="form-control" placeholder="Telephone Number" value=""></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label>MOBILE</label>
                                                                    <asp:TextBox ID="txtMobile" runat="server" class="form-control" placeholder="Mobile Number" value=""></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label>FAX</label>
                                                                    <asp:TextBox ID="txtFax" runat="server" class="form-control" placeholder="Fax Number" value=""></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>                                  
                                            
                                  

                                                        <div class="row">
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label>TAX No</label>
                                                                    <asp:TextBox ID="txtTax" runat="server" class="form-control" placeholder="TAX Number" value=""></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label>VAT No</label>
                                                                    <asp:TextBox ID="txtVat" runat="server" class="form-control" placeholder="VAT Number" value=""></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label>TIN No</label>
                                                                    <asp:TextBox ID="txtTin" runat="server" class="form-control" placeholder="TIN Number" value=""></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>  
                                                                                     
                                                                    
                                                        
                                                        <div class="clearfix"></div>  
                                                </div>
                                     
                                            </div>
                   
                                                            </div>
                                   </div>


                                  <div class="row">
                                         <div class="col-md-12">
                                            <div class="card" style="fit-position:center; padding-left:10px;  padding-bottom:10px; padding-right:10px; padding-top:10px">
                                                <div class="header">
                                                    <h4 class="title">Job Description</h4>
                                                </div>
                                                 <div class="content">

                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label>Port Of Loading</label>
                                                                    <asp:TextBox ID="txtPortLoading" runat="server" class="form-control" placeholder="Port Of Loading" value="" Visible="True" ></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label>Port Of Discharge</label>
                                                                    <asp:TextBox ID="txtPortDischarge" runat="server" class="form-control" placeholder="Port Of Discharge" value="" Visible="True" ></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div> 

                                                            <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label>Vesel / Voyage</label>
                                                                    <asp:TextBox ID="txtVesel" runat="server" class="form-control" placeholder="Vesel / Voyage" value="" Visible="True" ></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label>ETD</label>
                                                                    <div class="input-append date form_datetime">
                                                                     <asp:TextBox ID="txtEtd" runat="server" class="form-control" placeholder="ETD"></asp:TextBox>
                                                                         <span class="add-on"><i class="icon-th"></i></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div> 

                                                     
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label>Shipping Line</label>
                                                                    <asp:TextBox ID="txtShippingLine" runat="server" class="form-control" placeholder="Shipping Line" value="" Visible="True" ></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label>Terminal</label>
                                                                    <asp:TextBox ID="txtTerminal" runat="server" class="form-control" placeholder="Terminal" value="" Visible="True" ></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div> 

                                                      <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label>LCL / FCL</label>
                                                                    <br />
                                                                    <div class="form-check-inline  form-control col-md-3" style="fit-position:center; padding-left:10px">
                                                                          <label class="form-check-label">
                                                                              <asp:CheckBox ID="chkLCL" runat="server" class="form-check-input"/> 
                                                                            LCL
                                                                          </label>
                                                                        </div>
                                                                        <div class="form-check-inline  form-control col-md-3" style="fit-position:center; padding-left:10px">
                                                                          <label class="form-check-label">
                                                                               <asp:CheckBox ID="chkFCL" runat="server" class="form-check-input" />
                                                                            FCL
                                                                          </label>
                                                                        </div>                                                                   
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label>BL Status</label>
                                                                    <br />
                                                                    <div class="form-check-inline  form-control col-md-3" style="fit-position:center; padding-left:10px">
                                                                          <label class="form-check-label">
                                                                              <asp:CheckBox ID="chkOriginal" runat="server" class="form-check-input" /> 
                                                                            Original
                                                                          </label>  
                                                                        </div>                                                                     
                                                                        <div class="form-check-inline  form-control col-md-3" style="fit-position:center; padding-left:10px">
                                                                          <label class="form-check-label">
                                                                               <asp:CheckBox ID="chkSurrendar" runat="server" class="form-check-input" />
                                                                            Surrendar
                                                                          </label>
                                                                        </div>                                                                   
                                                                </div>
                                                            </div>
                                                          </div>


                                                          <div class="row">                                                              
                                                           <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label>Release Order No</label>
                                                                    <asp:TextBox ID="txtReleaseOrderNo" runat="server" class="form-control" placeholder="Release Order No" value="" Visible="True" ></asp:TextBox>
                                                                </div>
                                                            </div>


                                                                 <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label>FCL Cut Off</label>
                                                                    <div class="input-append date form_datetime">
                                                                     <asp:TextBox ID="txtFCLCutOff" runat="server" class="form-control" placeholder="FCL Cut OffD"></asp:TextBox>
                                                                         <span class="add-on"><i class="icon-th"></i></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                    
                                                            </div>




                                                       <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label>Sales Person</label>
                                                                    <asp:DropDownList ID="cmbSalesPerson" runat="server" class="form-control" ></asp:DropDownList>                                                                    
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label>Customer Service Person</label>
                                                                     <asp:DropDownList ID="cmbCustomerService" runat="server" class="form-control" ></asp:DropDownList>  
                                                                </div>
                                                            </div>
                                                        </div> 


                                                     
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label>Final Destination</label>
                                                                    <asp:TextBox ID="txtFinalDestination" runat="server" class="form-control" placeholder="Final Destination" value="" Visible="True" ></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label>ETA FD</label>
                                                                    <asp:TextBox ID="txtETAFD" runat="server" class="form-control" placeholder="ETA FD" value="" Visible="True" ></asp:TextBox>
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
                                                             <asp:Button ID="btnClear" runat="server" Text="Clear Content"  class="btn btn-info btn-fill pull-right" OnClick="btnClear_Click"  />                  

                                                            <asp:Button ID="btnSubmit" runat="server" Text="Save Profile"  class="btn btn-info btn-fill pull-right" OnClick="btnSubmit_Click" /> 

                                                            <asp:Button ID="btnPreview" runat="server" Text="Preview Cover Page"  class="btn btn-info btn-fill pull-right" OnClick="btnPreview_Click1" /> 

                                                            <asp:Button ID="btnBL" runat="server" Text="Create BL"  class="btn btn-info btn-fill pull-right" OnClick="btnBL_Click" /> 
                                                
                                                            <div class="clearfix"></div>  

                                                           <br />     


                                                                <div class="row">
                                                                         <div class="col-md-12">
                                                                            <div class="card" style="fit-position:center; padding-left:10px;  padding-bottom:10px; padding-right:10px; padding-top:10px">
                                                                                <div class="header">
                                                                                    <h4 class="title">Cover Note</h4>
                                                                                </div>
                                                                                 <div class="content">
                                                                                     
                                                                                     <rsweb:ReportViewer ID="ReportViewer1" runat="server" class="col-md-12"  Width="100%" DocumentMapWidth="100%"></rsweb:ReportViewer>
                                                                                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                                                                     
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
		forceParse: 0
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
