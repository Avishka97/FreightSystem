<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BL.aspx.cs" Inherits="Freight.BL" %>
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
                                <h4 class="title">Create BL</h4>
                            </div>


                                 <div class="row">
                                        <div class="col-md-12">
  
                                            <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                                                <asp:DropDownList ID="cmbSearch" runat="server" class="form-control col-4 mr-sm-4" OnSelectedIndexChanged="cmbSearch_SelectedIndexChanged"  ></asp:DropDownList>
                                                <asp:Button ID="Button1" runat="server" Text="Search"  class="btn btn-outline-success col-2" OnClick="Button1_Click" />
                  
                                            
                                            </nav>
                                             <br />
                                          </div>
                
        
                             </div>


                             <div class="content" >

                                 <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>BL ID </label>
                                                <asp:TextBox ID="txtBLID" runat="server"  class="form-control" placeholder="BL ID" value="" ReadOnly="True"></asp:TextBox>                                                
                                            </div>
                                        </div> 
                                     </div>

                                   <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Job No </label>
                                                <asp:TextBox ID="txtJobNo" runat="server"  class="form-control" placeholder="Job No" value="" ReadOnly="True"></asp:TextBox>                                                
                                            </div>
                                        </div>                                        
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>BL No</label>
                                                <asp:TextBox ID="txtBLNo" runat="server"  class="form-control" placeholder="BL No" ReadOnly="True"></asp:TextBox>                                                
                                            </div>
                                        </div>
                                    </div>

                                      <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Shipper </label>
                                                <asp:TextBox ID="txtShipper" runat="server"  class="form-control" placeholder="Shipper" value=""></asp:TextBox>                                                
                                            </div>
                                        </div>                                        
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Consignee </label>
                                                <asp:TextBox ID="txtConsignee" runat="server"  class="form-control" placeholder="Consignee" value=""></asp:TextBox>                                                
                                            </div>
                                        </div> 
                                    </div>


                                     <div class="row">
                                         <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Shipper Address</label>
                                                <asp:TextBox ID="txtShipperAdd" runat="server"  class="form-control" placeholder="Shipper Address" Columns="0" Rows="4" TextMode="MultiLine"></asp:TextBox>                                                
                                            </div>
                                        </div>                           
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Consignee Address</label>
                                                <asp:TextBox ID="txtConsigneeAdd" runat="server"  class="form-control" placeholder="Consignee Address" Columns="0" Rows="4" TextMode="MultiLine"></asp:TextBox>                                                
                                            </div>
                                        </div>
                                    </div>

                                            <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Notify Party </label>
                                                <asp:TextBox ID="txtNotifyParty" runat="server"  class="form-control" placeholder="Notify Party" value=""></asp:TextBox>                                                
                                            </div>
                                        </div>                                        
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Freight Type</label>
                                                <asp:DropDownList ID="cmbFreight" runat="server"   class="form-control">
                                                    <asp:ListItem Selected="True">PREPAID</asp:ListItem>
                                                    <asp:ListItem>COLLECT</asp:ListItem>
                                                </asp:DropDownList>                                                                                                
                                            </div>
                                        </div> 
                                    </div>

                                     <div class="row">
                                         <div class="col-md-6">
                                            <div class="form-group">
                                                <label>NotifyParty Address</label>
                                                <asp:TextBox ID="txtNotifyPartyAdd" runat="server"  class="form-control" placeholder="NotifyParty Address" Columns="0" Rows="4" TextMode="MultiLine"></asp:TextBox>                                                
                                            </div>
                                        </div>                           
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Diliver Agent</label>
                                                <asp:TextBox ID="txtDiliveryAgent" runat="server"  class="form-control" placeholder="Diliver Agent" Columns="0" Rows="4" TextMode="MultiLine"></asp:TextBox>                                                
                                            </div>
                                        </div>
                                    </div>

                                  <div class="row">
                                         <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Gross Weight</label>
                                                <asp:TextBox ID="txtGrossWeight" runat="server"  class="form-control" placeholder="Gross Weight" TextMode="SingleLine"></asp:TextBox>                                                
                                            </div>
                                        </div>                           
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Net Weight</label>
                                                <asp:TextBox ID="txtNetWeight" runat="server"  class="form-control" placeholder="Net Weight"  TextMode="SingleLine"></asp:TextBox>                                                
                                            </div>
                                        </div>
                                    </div>

                                  <div class="row">
                                         <div class="col-md-6">
                                            <div class="form-group">
                                                <label>No Of Packages</label>
                                                <asp:TextBox ID="txtNoOfPackages" runat="server"  class="form-control" placeholder="No Of Packages"  TextMode="SingleLine"></asp:TextBox>                                                
                                            </div>
                                        </div>                           
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>CBM</label>
                                                <asp:TextBox ID="txtCBM" runat="server"  class="form-control" placeholder="CBM" TextMode="SingleLine"></asp:TextBox>                                                
                                            </div>
                                        </div>
                                    </div>

                                   <div class="row">
                                         <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Port Of Loading</label>
                                                <asp:TextBox ID="txtPOL" runat="server"  class="form-control" placeholder="Port Of Loading" TextMode="SingleLine"></asp:TextBox>                                                
                                            </div>
                                        </div>                           
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Port Of Discharge</label>
                                                <asp:TextBox ID="txtPOD" runat="server"  class="form-control" placeholder="Port Of Discharge"  TextMode="SingleLine"></asp:TextBox>                                                
                                            </div>
                                        </div>
                                    </div>

                                  <div class="row">
                                         <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Port Of Receipt</label>
                                                <asp:TextBox ID="txtPOR" runat="server"  class="form-control" placeholder="Port Of Receipt"  TextMode="SingleLine"></asp:TextBox>                                                
                                            </div>
                                        </div>                           
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Place Of Final Dilivery</label>
                                                <asp:TextBox ID="txtPOFD" runat="server"  class="form-control" placeholder="Place Of Final Dilivery" TextMode="SingleLine"></asp:TextBox>                                                
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                         <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Final Destination</label>
                                                <asp:TextBox ID="txtFinalDestination" runat="server"  class="form-control" placeholder="Final Destination"  TextMode="SingleLine"></asp:TextBox>                                                
                                            </div>
                                        </div>                           
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Shipped On Board Date(SOB)</label>
                                                <div class="input-append date form_date" data-date="" data-date-format="yyyy-mm-dd" data-link-format="yyyy-mm-dd">
                                                <asp:TextBox ID="txtSOB" runat="server"  class="form-control" placeholder="Shipped On Board Date" TextMode="SingleLine"></asp:TextBox>
                                                <span class="add-on"><i class="icon-th"></i></span>
                                              </div>                                                
                                            </div>
                                        </div>
                                    </div>
                                 
                                  <div class="row">
                                         <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Description</label>
                                                <asp:TextBox ID="txtDescription" runat="server"  class="form-control" placeholder="Description"  TextMode="MultiLine" Rows="4"></asp:TextBox>                                                
                                            </div>
                                        </div>                           
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Marks and Numbers </label>
                                                <asp:TextBox ID="txtMarksandNumbers" runat="server"  class="form-control" placeholder="Marks and Numbers" TextMode="MultiLine" Rows="4"></asp:TextBox>                                                
                                            </div>
                                        </div>
                                    </div>

                                 <div class="row">
                                         <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Vesel</label>
                                                <asp:TextBox ID="txtVesel" runat="server"  class="form-control" placeholder="Vesel"  TextMode="SingleLine"></asp:TextBox>                                                
                                            </div>
                                        </div>                           
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Voyage</label>
                                                <asp:TextBox ID="txtVoyage" runat="server"  class="form-control" placeholder="Voyage" TextMode="SingleLine"></asp:TextBox>                                                
                                            </div>
                                        </div>
                                    </div>
                                       <div class="row">
                                         <div class="col-md-6">
                                            <div class="form-group">
                                                <label>LCL / FCL</label>
                                                <asp:DropDownList ID="cmbLCLFCL"  class="form-control" runat="server">
                                                    <asp:ListItem Selected="True">LCL</asp:ListItem>
                                                    <asp:ListItem>FCL</asp:ListItem>
                                                </asp:DropDownList>                                             
                                            </div>
                                        </div>                           
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Type Of Movement</label>
                                                <asp:DropDownList ID="cmbTypeOfMovement" class="form-control" runat="server">
                                                    <asp:ListItem Selected="True">CY / CY</asp:ListItem>
                                                    <asp:ListItem>CY / DOOR</asp:ListItem>
                                                    <asp:ListItem>DOOR / DOOR</asp:ListItem>
                                                    <asp:ListItem>DOOR / CY</asp:ListItem>
                                                </asp:DropDownList>                                       
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
                                        
                                        <asp:Button ID="btnSubmit" runat="server" Text="Save BL"  class="btn btn-info btn-fill pull-right" OnClick="btnSubmit_Click"  /> 

                                        <asp:Button ID="btnCreateBL" runat="server" Text="Preview BL"  class="btn btn-info btn-fill pull-right" OnClick="btnCreateBL_Click"/> 
                                                
                                        <div class="clearfix"></div>  



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
