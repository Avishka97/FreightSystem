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
                                            <div class="card" style="fit-position:center; padding-left:10px;  padding-bottom:10px; padding-right:10px; padding-top:10px">
                                                <div class="header">
                                                    <h4 class="title">Container</h4>
                                                </div>
                                                <br />
                                                <div class="table-responsive">  
                                                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" AutoGenerateColumns="False" ShowFooter="True" DataKeyName="ContainerID" CssClass="table table-striped table-bordered table-hover" OnRowCommand="GridView1_RowCommand" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <EditRowStyle BackColor="#2461BF" />
                                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                    <RowStyle BackColor="#EFF3FB" />
                                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />

                                                     <columns>
                                                           <asp:TemplateField HeaderText="Container ID" HeaderStyle-CssClass="visible-md" ItemStyle-CssClass="visible-md">
                                                                 <ItemTemplate>
                                                                     <asp:Label ID="lblContainerID" runat="server" Text='<%# Eval("ContainerID") %>'></asp:Label>
                                                                 </ItemTemplate>
                                                                 <EditItemTemplate>
                                                                     <asp:Label ID="lblEContainerID" runat="server" Text='<%# Eval("ContainerID") %>'></asp:Label>
                                                                 </EditItemTemplate>
                                                                 <FooterTemplate>
                                                                      <asp:Label ID="lblFEContainerID" runat="server" Text='<%# Eval("ContainerID") %>'></asp:Label>
                                                                </FooterTemplate>
                                                             </asp:TemplateField>

                                                             <asp:TemplateField HeaderText="Container NO" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                 <ItemTemplate>
                                                                     <asp:Label ID="lblContainerNO" runat="server" Text='<%# Eval("ContainerNO") %>'></asp:Label>
                                                                 </ItemTemplate>
                                                                 <EditItemTemplate>
                                                                     <asp:TextBox ID="txtContainerNO" runat="server" Text='<%# Eval("ContainerNO") %>'></asp:TextBox>
                                                                 </EditItemTemplate>
                                                                  <FooterTemplate>
                                                                      <asp:TextBox ID="txtEContainerNO" runat="server" Text='<%# Eval("ContainerNO") %>'></asp:TextBox>
                                                                </FooterTemplate>
                                                             </asp:TemplateField>

                                                            <asp:TemplateField HeaderText="Container Size" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                 <ItemTemplate>
                                                                     <asp:Label ID="lblContainerSize" runat="server" Text='<%# Eval("ContainerSize") %>'></asp:Label>
                                                                 </ItemTemplate>
                                                                 <EditItemTemplate>
                                                                     <asp:DropDownList ID="cmbContainerNO" runat="server" >
                                                                         <asp:ListItem Selected="True">20</asp:ListItem>
                                                                         <asp:ListItem>40</asp:ListItem>
                                                                         <asp:ListItem>45</asp:ListItem>
                                                                     </asp:DropDownList>                                                                    
                                                                 </EditItemTemplate>
                                                                <FooterTemplate>
                                                                    <asp:DropDownList ID="cmbEContainerNO" runat="server" >
                                                                         <asp:ListItem Selected="True">20</asp:ListItem>
                                                                         <asp:ListItem>40</asp:ListItem>
                                                                         <asp:ListItem>45</asp:ListItem>
                                                                     </asp:DropDownList>    
                                                                </FooterTemplate>
                                                             </asp:TemplateField>

                                                            <asp:TemplateField HeaderText="Container Type" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                 <ItemTemplate>
                                                                     <asp:Label ID="lblContainerType" runat="server" Text='<%# Eval("ContainerType") %>'></asp:Label>
                                                                 </ItemTemplate>
                                                                 <EditItemTemplate>
                                                                     <asp:DropDownList ID="cmbContainerType" runat="server" >
                                                                         <asp:ListItem Selected="True">GP</asp:ListItem>
                                                                         <asp:ListItem>HC</asp:ListItem>
                                                                         <asp:ListItem>OT</asp:ListItem>
                                                                         <asp:ListItem>FR</asp:ListItem>
                                                                         <asp:ListItem>RF</asp:ListItem>
                                                                         <asp:ListItem>TK</asp:ListItem>
                                                                     </asp:DropDownList>                                                                    
                                                                 </EditItemTemplate>
                                                                <FooterTemplate>
                                                                    <asp:DropDownList ID="cmbEContainerType" runat="server" >
                                                                         <asp:ListItem Selected="True">GP</asp:ListItem>
                                                                         <asp:ListItem>HC</asp:ListItem>
                                                                         <asp:ListItem>OT</asp:ListItem>
                                                                         <asp:ListItem>FR</asp:ListItem>
                                                                         <asp:ListItem>RF</asp:ListItem>
                                                                         <asp:ListItem>TK</asp:ListItem>
                                                                     </asp:DropDownList>  
                                                                </FooterTemplate>
                                                             </asp:TemplateField>

                                                             <asp:TemplateField HeaderText="Seall No" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                 <ItemTemplate>
                                                                     <asp:Label ID="lblSeallNo" runat="server" Text='<%# Eval("SeallNo") %>'></asp:Label>
                                                                 </ItemTemplate>
                                                                 <EditItemTemplate>
                                                                     <asp:TextBox ID="txtSeallNo" runat="server" Text='<%# Eval("SeallNo") %>'></asp:TextBox>
                                                                 </EditItemTemplate>
                                                                 <FooterTemplate>
                                                                      <asp:TextBox ID="txtESeallNo" runat="server" Text='<%# Eval("SeallNo") %>'></asp:TextBox>
                                                                 </FooterTemplate>
                                                             </asp:TemplateField>       

                                                            <asp:TemplateField HeaderText="Total Packages" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                 <ItemTemplate>
                                                                     <asp:Label ID="lblTotalPackages" runat="server" Text='<%# Eval("TotalPackages") %>'></asp:Label>
                                                                 </ItemTemplate>
                                                                 <EditItemTemplate>
                                                                     <asp:TextBox ID="txtTotalPackages" runat="server" Text='<%# Eval("TotalPackages") %>'></asp:TextBox>
                                                                 </EditItemTemplate>
                                                                <FooterTemplate>
                                                                    <asp:TextBox ID="txtETotalPackages" runat="server" Text='<%# Eval("TotalPackages") %>'></asp:TextBox>
                                                                </FooterTemplate>
                                                             </asp:TemplateField>

                                                             <asp:TemplateField HeaderText="Package Type" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                 <ItemTemplate>
                                                                     <asp:Label ID="lblPackageType" runat="server" Text='<%# Eval("PackageType") %>'></asp:Label>
                                                                 </ItemTemplate>
                                                                 <EditItemTemplate>
                                                                     <asp:TextBox ID="txtPackageType" runat="server" Text='<%# Eval("PackageType") %>'></asp:TextBox>
                                                                 </EditItemTemplate>
                                                                 <FooterTemplate>
                                                                      <asp:TextBox ID="txtEPackageType" runat="server" Text='<%# Eval("PackageType") %>'></asp:TextBox>
                                                                 </FooterTemplate>
                                                             </asp:TemplateField>

                                                            <asp:TemplateField HeaderText="GrossWeight" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                 <ItemTemplate>
                                                                     <asp:Label ID="lblTotalGrossWeight" runat="server" Text='<%# Eval("TotalGrossWeight") %>'></asp:Label>
                                                                 </ItemTemplate>
                                                                 <EditItemTemplate>
                                                                     <asp:TextBox ID="txtTotalGrossWeight" runat="server" Text='<%# Eval("TotalGrossWeight") %>'></asp:TextBox>
                                                                 </EditItemTemplate>
                                                                <FooterTemplate>
                                                                    <asp:TextBox ID="txtETotalGrossWeight" runat="server" Text='<%# Eval("TotalGrossWeight") %>'></asp:TextBox>
                                                                </FooterTemplate>
                                                             </asp:TemplateField>

                                                            <asp:TemplateField HeaderText="NetWeight" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                 <ItemTemplate>
                                                                     <asp:Label ID="lblTotalNetWeight" runat="server" Text='<%# Eval("TotalNetWeight") %>'></asp:Label>
                                                                 </ItemTemplate>
                                                                 <EditItemTemplate>
                                                                     <asp:TextBox ID="txtTotalNetWeight" runat="server" Text='<%# Eval("TotalNetWeight") %>'></asp:TextBox>
                                                                 </EditItemTemplate>
                                                                <FooterTemplate>
                                                                    <asp:TextBox ID="txtETotalNetWeight" runat="server" Text='<%# Eval("TotalNetWeight") %>'></asp:TextBox>
                                                                </FooterTemplate>
                                                             </asp:TemplateField>

                                                            <asp:TemplateField HeaderText="Total CBM" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                 <ItemTemplate>
                                                                     <asp:Label ID="lblTotalCBM" runat="server" Text='<%# Eval("TotalCBM") %>'></asp:Label>
                                                                 </ItemTemplate>
                                                                 <EditItemTemplate>
                                                                     <asp:TextBox ID="txtTotalCBM" runat="server" Text='<%# Eval("TotalCBM") %>'></asp:TextBox>
                                                                 </EditItemTemplate>
                                                                <FooterTemplate>
                                                                    <asp:TextBox ID="txtETotalCBM" runat="server" Text='<%# Eval("TotalCBM") %>'></asp:TextBox>
                                                                </FooterTemplate>
                                                             </asp:TemplateField>

                                                             <asp:TemplateField HeaderText="COMMODITY" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                 <ItemTemplate>
                                                                     <asp:Label ID="lblCOMMODITY" runat="server" Text='<%# Eval("COMMODITY") %>'></asp:Label>
                                                                 </ItemTemplate>
                                                                 <EditItemTemplate>
                                                                     <asp:TextBox ID="txtCOMMODITY" runat="server" Text='<%# Eval("COMMODITY") %>'></asp:TextBox>
                                                                 </EditItemTemplate>
                                                                 <FooterTemplate>
                                                                     <asp:TextBox ID="txtECOMMODITY" runat="server" Text='<%# Eval("COMMODITY") %>'></asp:TextBox>
                                                                 </FooterTemplate>
                                                             </asp:TemplateField>
                                                            
                                                            <asp:TemplateField HeaderText="TMP(C)" HeaderStyle-CssClass="visible-md" ItemStyle-CssClass="visible-md">
                                                                 <ItemTemplate>
                                                                     <asp:Label ID="lblTMP" runat="server" Text='<%# Eval("TMP") %>'></asp:Label>
                                                                 </ItemTemplate>
                                                                 <EditItemTemplate>
                                                                     <asp:TextBox ID="txtTMP" runat="server" Text='<%# Eval("TMP") %>'></asp:TextBox>
                                                                 </EditItemTemplate>
                                                                <FooterTemplate>
                                                                    <asp:TextBox ID="txtETMP" runat="server" Text='<%# Eval("TMP") %>'></asp:TextBox>
                                                                </FooterTemplate>
                                                             </asp:TemplateField>

                                                            <asp:TemplateField HeaderText="Remark" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                 <ItemTemplate>
                                                                     <asp:Label ID="lblRemark" runat="server" Text='<%# Eval("Remark") %>'></asp:Label>
                                                                 </ItemTemplate>
                                                                 <EditItemTemplate>
                                                                     <asp:TextBox ID="txtRemark" runat="server" Text='<%# Eval("Remark") %>'></asp:TextBox>
                                                                 </EditItemTemplate>
                                                                <FooterTemplate>
                                                                    <asp:TextBox ID="txtERemark" runat="server" Text='<%# Eval("Remark") %>'></asp:TextBox>
                                                                </FooterTemplate>
                                                             </asp:TemplateField>
                                                                                                                    
                           
                                                             <asp:TemplateField HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                 <ItemTemplate>
                                                                     <asp:ImageButton ImageUrl="img/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px" />
                                                                     <asp:ImageButton ImageUrl="img/delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px" />
                                                                 </ItemTemplate>
                                                                 <EditItemTemplate>
                                                                     <asp:ImageButton ImageUrl="img/save.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px" />
                                                                     <asp:ImageButton ImageUrl="img/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px" />
                                                                 </EditItemTemplate>
                                                                 <FooterTemplate>
                                                                     <asp:ImageButton ImageUrl="img/add.jpg" runat="server" CommandName="AddNew" ToolTip="AddNew" Width="20px" Height="20px" />
                                                                 </FooterTemplate>
                                                             </asp:TemplateField>
                         
                                                         </columns>





                                                </asp:GridView>
                                                </div>
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
