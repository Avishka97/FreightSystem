
<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="Freight.Invoice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



      <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card" style="fit-position:center; padding-left:10px;  padding-bottom:10px; padding-right:10px; padding-top:10px">
                            <div class="header">
                                <h4 class="title">Bill Of Lading</h4>
                            </div>


                                 <div class="row">
                                        <div class="col-md-12">
  
                                            <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                                                <asp:DropDownList ID="cmbSearch" runat="server" class="form-control col-4 mr-sm-4" OnSelectedIndexChanged="cmbSearch_SelectedIndexChanged" ></asp:DropDownList>
                                                <asp:Button ID="Button1" runat="server" Text="Search"  class="btn btn-outline-success col-2" OnClick="Button1_Click" />
                  
                                            
                                            </nav>
                                             <br />
                                          </div>
                
        
                             </div>


                             <div class="content" >

                                   <div class="row">
                                <div class="col-md-12">

                                    <div class="container">
                                        <h2>INVOCING</h2>
                                        <br/>
                                        <!-- Nav tabs -->
                                        <ul class="nav nav-tabs " role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active" data-toggle="tab" href="#home">Shippment Details</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" data-toggle="tab" href="#menu1">Invoice</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" data-toggle="tab" href="#menu2">Billable Expneses</a>
                                            </li>    
                                            <li class="nav-item">
                                                <a class="nav-link" data-toggle="tab" href="#menu3">References</a>
                                            </li>                                    
                                        </ul>

                                        <!-- Tab panes -->
                                        <div class="tab-content">
                                            <div id="home" class="container tab-pane active">
                                                <br />

                                                   <div class="row">
                                                  <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label>Version</label>
                                                                    <asp:DropDownList ID="cmbVersion" runat="server"   class="form-control">
                                                                        <asp:ListItem Selected="True">Update 01</asp:ListItem>
                                                                        <asp:ListItem>Update 02</asp:ListItem>
                                                                        <asp:ListItem>Update 03</asp:ListItem>
                                                                        <asp:ListItem>Update 04</asp:ListItem>
                                                                        <asp:ListItem>Update 05</asp:ListItem>
                                                                        <asp:ListItem>Update 06</asp:ListItem>
                                                                        <asp:ListItem>Final</asp:ListItem>
                                                                    </asp:DropDownList>                                                                                                
                                                                </div>
                                                  </div> 
                                                  </div>
                                                    
                                                   <div class="row">
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label>Invoice ID </label>
                                                                    <asp:TextBox ID="txtInvoiceID" runat="server"  class="form-control" placeholder="Invoice ID" value="" ReadOnly="True"></asp:TextBox>                                                
                                                                </div>
                                                            </div> 
                                                           <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label>Freight Type</label>
                                                                    <asp:DropDownList ID="cmbFreight" runat="server"   class="form-control">
                                                                        <asp:ListItem Selected="True">PREPAID</asp:ListItem>
                                                                        <asp:ListItem>COLLECT</asp:ListItem>
                                                                    </asp:DropDownList>                                                                                                
                                                                </div>
                                                            </div> 
                                                  
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label>Job No </label>
                                                                    <asp:TextBox ID="txtJobNo" runat="server"  class="form-control" placeholder="Job No" value="" ReadOnly="True"></asp:TextBox>                                                
                                                                </div>
                                                            </div>                                        
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label>BL No</label>
                                                                    <asp:TextBox ID="txtBLNo" runat="server"  class="form-control" placeholder="BL No" ReadOnly="True"></asp:TextBox>                                                
                                                                </div>
                                                            </div>
                                                     </div>

                                                   <div class="row">
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label>Shipper </label>
                                                                    <asp:TextBox ID="txtShipper" runat="server"  class="form-control" placeholder="Shipper" value=""></asp:TextBox>                                                
                                                                </div>
                                                            </div>                                        
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label>Consignee </label>
                                                                    <asp:TextBox ID="txtConsignee" runat="server"  class="form-control" placeholder="Consignee" value=""></asp:TextBox>                                                
                                                                </div>
                                                            </div> 
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label>Description</label>
                                                                    <asp:TextBox ID="txtDescription" runat="server"  class="form-control" placeholder="Description" value=""></asp:TextBox>                                                
                                                                </div>
                                                            </div>
                                                        </div>

                                                   <div class="row">
                                                             <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label>Shipper Address</label>
                                                                    <asp:TextBox ID="txtShipperAdd" runat="server"  class="form-control" placeholder="Shipper Address" Columns="0" Rows="4" TextMode="MultiLine"></asp:TextBox>                                                
                                                                </div>
                                                            </div>                           
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label>Consignee Address</label>
                                                                    <asp:TextBox ID="txtConsigneeAdd" runat="server"  class="form-control" placeholder="Consignee Address" Columns="0" Rows="4" TextMode="MultiLine"></asp:TextBox>                                                
                                                                </div>
                                                            </div>                                                      
                                                             <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label>Billing to 1</label>
                                                                    <asp:TextBox ID="txtBillinAdd1" runat="server"  class="form-control" placeholder="Billing Address" Columns="0" Rows="4" TextMode="MultiLine"></asp:TextBox>                                                
                                                                </div>
                                                            </div>  
                                                        </div>
                                                                                                
                                                   <div class="row">
                                                                     <div class="col-md-4">
                                                                        <div class="form-group">
                                                                            <label>Vesel</label>
                                                                            <asp:TextBox ID="txtVesel" runat="server"  class="form-control" placeholder="Vesel"  TextMode="SingleLine"></asp:TextBox>                                                
                                                                        </div>
                                                                    </div>                           
                                                                    <div class="col-md-4">
                                                                        <div class="form-group">
                                                                            <label>Voyage</label>
                                                                            <asp:TextBox ID="txtVoyage" runat="server"  class="form-control" placeholder="Voyage" TextMode="SingleLine"></asp:TextBox>                                                
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                    <div class="form-group">
                                                                        <label>ETA</label>
                                                                        <asp:TextBox ID="txtETA" runat="server"  class="form-control" placeholder="ETA" TextMode="SingleLine"></asp:TextBox>                                                                        
                                                                    </div>
                                                                   </div>
                                                  </div>

                                                   <div class="row">
                                                                     <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label>Gross Weight</label>
                                                                            <asp:TextBox ID="txtGrossWeight" runat="server"  class="form-control" placeholder="Gross Weight" TextMode="SingleLine"></asp:TextBox>                                                
                                                                        </div>
                                                                    </div>                           
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label>Net Weight</label>
                                                                            <asp:TextBox ID="txtNetWeight" runat="server"  class="form-control" placeholder="Net Weight"  TextMode="SingleLine"></asp:TextBox>                                                
                                                                        </div>
                                                                    </div>                                                           
                                                                     <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label>No Of Packages</label>
                                                                            <asp:TextBox ID="txtNoOfPackages" runat="server"  class="form-control" placeholder="No Of Packages"  TextMode="SingleLine"></asp:TextBox>                                                
                                                                        </div>
                                                                    </div>                           
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label>CBM</label>
                                                                            <asp:TextBox ID="txtCBM" runat="server"  class="form-control" placeholder="CBM" TextMode="SingleLine"></asp:TextBox>                                                
                                                                        </div>
                                                                    </div>
                                                    </div>

                                                   <div class="row">
                                                                 <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label>Final Destination</label>
                                                                        <asp:TextBox ID="txtFinalDestination" runat="server"  class="form-control" placeholder="Final Destination"  TextMode="SingleLine"></asp:TextBox>                                                
                                                                    </div>
                                                                </div>                           
                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label>SOB</label>
                                                                        <asp:TextBox ID="txtSOB" runat="server"  class="form-control" placeholder="Shipped On Board Date" TextMode="SingleLine"></asp:TextBox>                                                                        
                                                                    </div>
                                                                </div>
                                                                 <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label>Original Port</label>
                                                                        <asp:TextBox ID="txtOriginalPort" runat="server"  class="form-control" placeholder="Original Port" TextMode="SingleLine"></asp:TextBox>                                                
                                                                    </div>
                                                                </div>   
                                                                 <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label>Shipping Line</label>
                                                                        <asp:TextBox ID="txtShippingLine" runat="server"  class="form-control" placeholder="Shipping Line" TextMode="SingleLine"></asp:TextBox>                                                
                                                                    </div>
                                                                </div>     
                                                    </div>



                                            </div>

                                            <div id="menu1"class="container tab-pane fade">
                                                <br />

                                                 <div class="row">
                                                                 <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label>Exchange Rate</label>
                                                                        <asp:TextBox ID="txtExRate" runat="server"  class="form-control" placeholder="Exchange Rate"  TextMode="SingleLine"></asp:TextBox>                                                
                                                                    </div>
                                                                </div> 
                                                    </div>

                                                 <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="card" style="fit-position:center; padding-left:10px;  padding-bottom:10px; padding-right:10px; padding-top:10px">
                                                                <div class="header">
                                                                    <h4 class="title">Invoice Items</h4>
                                                                </div>
                                                                <br />
                                                                                                                

                                                                
                                                                <div class="table table-responsive table-fit">  
                                                                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" ShowFooter="True" DataKeyName="ContainerID" CssClass="table table-striped table-bordered table-hover" OnRowCommand="GridView1_RowCommand" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" >
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
                                                                             <asp:TemplateField HeaderText="Item Code" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                                 <ItemTemplate>
                                                                                       <asp:Label ID="lblItemCode" runat="server" Text='<%# Eval("BillingItemID") %>'></asp:Label>
                                                                                 </ItemTemplate>
                                                                                 <EditItemTemplate>
                                                                                       <asp:Label ID="lblAItemCode" runat="server" Text='<%# Eval("BillingItemID") %>'></asp:Label>
                                                                                 </EditItemTemplate>
                                                                                  <FooterTemplate>
                                                                                        <asp:Label ID="lblEItemCode" runat="server" Text='<%# Eval("BillingItemID") %>'></asp:Label>
                                                                                </FooterTemplate>
                                                                             </asp:TemplateField>

                                                                              <asp:TemplateField HeaderText="Description" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                                 <ItemTemplate>
                                                                                     <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                                                                                 </ItemTemplate>
                                                                                 <EditItemTemplate>
                                                                                     <asp:TextBox ID="txtDescription" runat="server" Text='<%# Eval("Description") %>'></asp:TextBox>
                                                                                 </EditItemTemplate>
                                                                                  <FooterTemplate>
                                                                                      <asp:TextBox ID="txtEDescription" runat="server" Text='<%# Eval("Description") %>'></asp:TextBox>
                                                                                </FooterTemplate>
                                                                             </asp:TemplateField>
                                                                              <asp:TemplateField HeaderText="Volume" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                                 <ItemTemplate>
                                                                                     <asp:Label ID="lblVolume" runat="server" Text='<%# Eval("Volume") %>'></asp:Label>
                                                                                 </ItemTemplate>
                                                                                 <EditItemTemplate>
                                                                                     <asp:TextBox ID="txtVolume" runat="server" Text='<%# Eval("Volume") %>'></asp:TextBox>
                                                                                 </EditItemTemplate>
                                                                                  <FooterTemplate>
                                                                                      <asp:TextBox ID="txtEVolume" runat="server" Text='<%# Eval("Volume") %>'></asp:TextBox>
                                                                                </FooterTemplate>
                                                                             </asp:TemplateField>
                                                                              <asp:TemplateField HeaderText="Rate In USD" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                                 <ItemTemplate>
                                                                                     <asp:Label ID="lblRateInUSD" runat="server" Text='<%# Eval("RateInUSD") %>'></asp:Label>
                                                                                 </ItemTemplate>
                                                                                 <EditItemTemplate>
                                                                                     <asp:TextBox ID="txtRateInUSD" runat="server" Text='<%# Eval("RateInUSD") %>'></asp:TextBox>
                                                                                 </EditItemTemplate>
                                                                                  <FooterTemplate>
                                                                                      <asp:TextBox ID="txtERateInUSD" runat="server" Text='<%# Eval("RateInUSD") %>'></asp:TextBox>
                                                                                </FooterTemplate>
                                                                             </asp:TemplateField>
                                                                              <asp:TemplateField HeaderText="Rate In LKR" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                                 <ItemTemplate>
                                                                                     <asp:Label ID="lblRateInLKR" runat="server" Text='<%# Eval("RateInLKR") %>'></asp:Label>
                                                                                 </ItemTemplate>
                                                                                 <EditItemTemplate>
                                                                                     <asp:TextBox ID="txtRateInLKR" runat="server" Text='<%# Eval("RateInLKR") %>'></asp:TextBox>
                                                                                 </EditItemTemplate>
                                                                                  <FooterTemplate>
                                                                                      <asp:TextBox ID="txtERateInLKR" runat="server" Text='<%# Eval("RateInLKR") %>'></asp:TextBox>
                                                                                </FooterTemplate>
                                                                             </asp:TemplateField>
                                                                              <asp:TemplateField HeaderText="Revenue" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                                 <ItemTemplate>
                                                                                     <asp:Label ID="lblRevenue" runat="server" Text='<%# Eval("Revenue") %>'></asp:Label>
                                                                                 </ItemTemplate>
                                                                                 <EditItemTemplate>
                                                                                     <asp:TextBox ID="txtRevenue" runat="server" Text='<%# Eval("Revenue") %>'></asp:TextBox>
                                                                                 </EditItemTemplate>
                                                                                  <FooterTemplate>
                                                                                      <asp:TextBox ID="txtERevenue" runat="server" Text='<%# Eval("Revenue") %>'></asp:TextBox>
                                                                                </FooterTemplate>
                                                                             </asp:TemplateField>
                                                                              <asp:TemplateField HeaderText="Cost In USD" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                                 <ItemTemplate>
                                                                                     <asp:Label ID="lblCostInUSD" runat="server" Text='<%# Eval("CostInUSD") %>'></asp:Label>
                                                                                 </ItemTemplate>
                                                                                 <EditItemTemplate>
                                                                                     <asp:TextBox ID="txtCostInUSD" runat="server" Text='<%# Eval("CostInUSD") %>'></asp:TextBox>
                                                                                 </EditItemTemplate>
                                                                                  <FooterTemplate>
                                                                                      <asp:TextBox ID="txtECostInUSD" runat="server" Text='<%# Eval("CostInUSD") %>'></asp:TextBox>
                                                                                </FooterTemplate>
                                                                             </asp:TemplateField>
                                                                              <asp:TemplateField HeaderText="Cost In LKR" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                                 <ItemTemplate>
                                                                                     <asp:Label ID="lblCostInLKR" runat="server" Text='<%# Eval("CostInLKR") %>'></asp:Label>
                                                                                 </ItemTemplate>
                                                                                 <EditItemTemplate>
                                                                                     <asp:TextBox ID="txtCostInLKR" runat="server" Text='<%# Eval("CostInLKR") %>'></asp:TextBox>
                                                                                 </EditItemTemplate>
                                                                                  <FooterTemplate>
                                                                                      <asp:TextBox ID="txtECostInLKR" runat="server" Text='<%# Eval("CostInLKR") %>'></asp:TextBox>
                                                                                </FooterTemplate>
                                                                             </asp:TemplateField>
                                                                              <asp:TemplateField HeaderText="Total Cost" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                                 <ItemTemplate>
                                                                                     <asp:Label ID="lblTotalCost" runat="server" Text='<%# Eval("TotalCost") %>'></asp:Label>
                                                                                 </ItemTemplate>
                                                                                 <EditItemTemplate>
                                                                                     <asp:TextBox ID="txtTotalCost" runat="server" Text='<%# Eval("TotalCost") %>'></asp:TextBox>
                                                                                 </EditItemTemplate>
                                                                                  <FooterTemplate>
                                                                                      <asp:TextBox ID="txtETotalCost" runat="server" Text='<%# Eval("TotalCost") %>'></asp:TextBox>
                                                                                </FooterTemplate>
                                                                             </asp:TemplateField>
                                                                             <asp:TemplateField HeaderText="Net Revenue" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                                 <ItemTemplate>
                                                                                     <asp:Label ID="lblNetRevenue" runat="server" Text='<%# Eval("NetRevenue") %>'></asp:Label>
                                                                                 </ItemTemplate>
                                                                                 <EditItemTemplate>
                                                                                     <asp:TextBox ID="txtNetRevenue" runat="server" Text='<%# Eval("NetRevenue") %>'></asp:TextBox>
                                                                                 </EditItemTemplate>
                                                                                  <FooterTemplate>
                                                                                      <asp:TextBox ID="txtENetRevenue" runat="server" Text='<%# Eval("NetRevenue") %>'></asp:TextBox>
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


                                            </div>

                                            <div id="menu2"class="container tab-pane fade">
                                                <br />

                                                
                                                 <div class="row">
                                                                 <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label>Exchange Rate</label>
                                                                        <asp:TextBox ID="TextBox2" runat="server"  class="form-control" placeholder="Exchange Rate"  TextMode="SingleLine"></asp:TextBox>                                                
                                                                    </div>
                                                                </div> 
                                                    </div>

                                               <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="card" style="fit-position:center; padding-left:10px;  padding-bottom:10px; padding-right:10px; padding-top:10px">
                                                                <div class="header">
                                                                    <h4 class="title">billable Items</h4>
                                                                </div>
                                                                <br />                                                                                                               

                                                                
                                                                <div class="table table-responsive table-fit">
                                                                    <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" ShowFooter="True" DataKeyName="BillingItemID" CssClass="table table-striped table-bordered table-hover">
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
                                                                             <asp:TemplateField HeaderText="Item Code" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                                 <ItemTemplate>
                                                                                       <asp:Label ID="lblItemCode" runat="server" Text='<%# Eval("BillableItemID") %>'></asp:Label>
                                                                                 </ItemTemplate>
                                                                                 <EditItemTemplate>
                                                                                       <asp:Label ID="lblAItemCode" runat="server" Text='<%# Eval("BillableItemID") %>'></asp:Label>
                                                                                 </EditItemTemplate>
                                                                                  <FooterTemplate>
                                                                                        <asp:Label ID="lblEItemCode" runat="server" Text='<%# Eval("BillableItemID") %>'></asp:Label>
                                                                                </FooterTemplate>
                                                                             </asp:TemplateField>

                                                                              <asp:TemplateField HeaderText="Description" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                                 <ItemTemplate>
                                                                                     <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                                                                                 </ItemTemplate>
                                                                                 <EditItemTemplate>
                                                                                     <asp:TextBox ID="txtDescription" runat="server" Text='<%# Eval("Description") %>'></asp:TextBox>
                                                                                 </EditItemTemplate>
                                                                                  <FooterTemplate>
                                                                                      <asp:TextBox ID="txtEDescription" runat="server" Text='<%# Eval("Description") %>'></asp:TextBox>
                                                                                </FooterTemplate>
                                                                             </asp:TemplateField>
                                                                              <asp:TemplateField HeaderText="Volume" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                                 <ItemTemplate>
                                                                                     <asp:Label ID="lblVolume" runat="server" Text='<%# Eval("Volume") %>'></asp:Label>
                                                                                 </ItemTemplate>
                                                                                 <EditItemTemplate>
                                                                                     <asp:TextBox ID="txtVolume" runat="server" Text='<%# Eval("Volume") %>'></asp:TextBox>
                                                                                 </EditItemTemplate>
                                                                                  <FooterTemplate>
                                                                                      <asp:TextBox ID="txtEVolume" runat="server" Text='<%# Eval("Volume") %>'></asp:TextBox>
                                                                                </FooterTemplate>
                                                                             </asp:TemplateField>
                                                                              <asp:TemplateField HeaderText="Rate In USD" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                                 <ItemTemplate>
                                                                                     <asp:Label ID="lblRateInUSD" runat="server" Text='<%# Eval("RateInUSD") %>'></asp:Label>
                                                                                 </ItemTemplate>
                                                                                 <EditItemTemplate>
                                                                                     <asp:TextBox ID="txtRateInUSD" runat="server" Text='<%# Eval("RateInUSD") %>'></asp:TextBox>
                                                                                 </EditItemTemplate>
                                                                                  <FooterTemplate>
                                                                                      <asp:TextBox ID="txtERateInUSD" runat="server" Text='<%# Eval("RateInUSD") %>'></asp:TextBox>
                                                                                </FooterTemplate>
                                                                             </asp:TemplateField>
                                                                              <asp:TemplateField HeaderText="Rate In LKR" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                                 <ItemTemplate>
                                                                                     <asp:Label ID="lblRateInLKR" runat="server" Text='<%# Eval("RateInLKR") %>'></asp:Label>
                                                                                 </ItemTemplate>
                                                                                 <EditItemTemplate>
                                                                                     <asp:TextBox ID="txtRateInLKR" runat="server" Text='<%# Eval("RateInLKR") %>'></asp:TextBox>
                                                                                 </EditItemTemplate>
                                                                                  <FooterTemplate>
                                                                                      <asp:TextBox ID="txtERateInLKR" runat="server" Text='<%# Eval("RateInLKR") %>'></asp:TextBox>
                                                                                </FooterTemplate>
                                                                             </asp:TemplateField>
                                                                              <asp:TemplateField HeaderText="Revenue" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                                 <ItemTemplate>
                                                                                     <asp:Label ID="lblRevenue" runat="server" Text='<%# Eval("Revenue") %>'></asp:Label>
                                                                                 </ItemTemplate>
                                                                                 <EditItemTemplate>
                                                                                     <asp:TextBox ID="txtRevenue" runat="server" Text='<%# Eval("Revenue") %>'></asp:TextBox>
                                                                                 </EditItemTemplate>
                                                                                  <FooterTemplate>
                                                                                      <asp:TextBox ID="txtERevenue" runat="server" Text='<%# Eval("Revenue") %>'></asp:TextBox>
                                                                                </FooterTemplate>
                                                                             </asp:TemplateField>
                                                                                <asp:TemplateField HeaderText="Revenue" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                                 <ItemTemplate>
                                                                                     <asp:Label ID="lblTotalRevenue" runat="server" Text='<%# Eval("TotalRevenue") %>'></asp:Label>
                                                                                 </ItemTemplate>
                                                                                 <EditItemTemplate>
                                                                                     <asp:TextBox ID="txtTotalRevenue" runat="server" Text='<%# Eval("TotalRevenue") %>'></asp:TextBox>
                                                                                 </EditItemTemplate>
                                                                                  <FooterTemplate>
                                                                                      <asp:TextBox ID="txtETotalRevenue" runat="server" Text='<%# Eval("TotalRevenue") %>'></asp:TextBox>
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
                                                                                              


                                            </div>

                                            <div id="menu3"class="container tab-pane fade">
                                                <br />
                                                  <div class="row">
                                                                 <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label>References</label>
                                                                        <asp:TextBox ID="txtReferences" runat="server"  class="form-control" placeholder="References"  TextMode="MultiLine" Rows="10"></asp:TextBox>                                                
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
                                            <asp:Button ID="btnClear" runat="server" Text="Clear Content"  class="btn btn-info btn-fill pull-right" OnClick="btnClear_Click" />                  
                                        
                                            <asp:Button ID="btnSubmit" runat="server" Text="Save Invoice"  class="btn btn-info btn-fill pull-right" OnClick="btnSubmit_Click" /> 

                                            <asp:Button ID="btnCreateInvoice" runat="server" Text="Preview Invoice"  class="btn btn-info btn-fill pull-right" OnClick="btnCreateInvoice_Click"/>
                                                
                                            <div class="clearfix"></div>

                                        
                                        
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





</asp:Content>
