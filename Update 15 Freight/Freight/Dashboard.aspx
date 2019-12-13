<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Freight.Dashboard" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card" style="fit-position:center; padding-left:10px;  padding-bottom:10px; padding-right:10px; padding-top:10px">
                            <div class="header">
                                <h4 class="title">Dashboard</h4>
                            </div>

                            <div class="card-body">
                                 <div class="row">
                                        <div class="col-md-6">
                                              <div class="row">
                                                    <div class="col-md-12">
                                                         <div class="card" style="fit-position:center; padding-left:10px;  padding-bottom:10px; padding-right:10px; padding-top:10px">
                                                            <div class="header">
                                                                <h4 class="title">No of jobs in this month</h4>
                                                            </div>
                                                                         <div class="card-body">  
                                                                              
                                                                               <div class="row">
                                                                                 <div class="col-md-12">                                              
                                                                            <asp:DropDownList ID="cmdYear" runat="server" class="form-control col-md-12" placeholder="Year" AutoPostBack="True">
                                                                                <asp:ListItem>2018</asp:ListItem>
                                                                                <asp:ListItem Selected="True">2019</asp:ListItem>
                                                                                <asp:ListItem>2020</asp:ListItem>
                                                                                <asp:ListItem>2021</asp:ListItem>
                                                                                <asp:ListItem>2022</asp:ListItem>
                                                                                     </asp:DropDownList>
                                                                        
                                                                            <asp:DropDownList ID="cmbMonth" runat="server" class="form-control col-md-12" placeholder="Month" AutoPostBack="True">
                                                                                <asp:ListItem Value="January">January</asp:ListItem>
                                                                                <asp:ListItem>February</asp:ListItem>
                                                                                <asp:ListItem>March</asp:ListItem>
                                                                                <asp:ListItem>April</asp:ListItem>
                                                                                <asp:ListItem>May</asp:ListItem>
                                                                                <asp:ListItem>June</asp:ListItem>
                                                                                <asp:ListItem>July</asp:ListItem>
                                                                                <asp:ListItem>August</asp:ListItem>
                                                                                <asp:ListItem>September</asp:ListItem>
                                                                                <asp:ListItem>October</asp:ListItem>
                                                                                <asp:ListItem Selected="True">November</asp:ListItem>
                                                                                <asp:ListItem>December</asp:ListItem>
                                                                                     </asp:DropDownList>
                                                                
                                                                            <asp:Button ID="Button1" runat="server" Text="Search"  class="btn btn-outline-success col-md-12" OnClick="Button1_Click" />
                                                                        </div>
                                                                                   </div>
                                                                                 </div>
                                                                        </div> 
                                                    </div>
                                                </div>
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                         <div class="card" style="fit-position:center; padding-left:10px;  padding-bottom:10px; padding-right:10px; padding-top:10px">
                                                    <asp:Chart ID="Chart1" runat="server" class="col-md-6">
                                                        <Series>
                                                            <asp:Series Name="Series1"></asp:Series>
                                                        </Series>
                                                        <ChartAreas>
                                                            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                                        </ChartAreas>
                                                    </asp:Chart>
                                                     </div>
                                                        </div>
                                                    </div>


                                          </div>
                                                                                  
                                        <div class="col-md-6">
                                            <div class="card" style="fit-position:center; padding-left:10px;  padding-bottom:10px; padding-right:10px; padding-top:10px">
                                                <div class="header">
                                                    <h4 class="title">Total Revenu for this month</h4>
                                                </div>

                                                <div class="card-body">

                                                      <div class="row">
                                                                                 <div class="col-md-12">                                              
                                                                            <asp:DropDownList ID="cmbYear2" runat="server" class="form-control col-md-12" placeholder="Year" AutoPostBack="True">
                                                                                <asp:ListItem>2018</asp:ListItem>
                                                                                <asp:ListItem Selected="True">2019</asp:ListItem>
                                                                                <asp:ListItem>2020</asp:ListItem>
                                                                                <asp:ListItem>2021</asp:ListItem>
                                                                                <asp:ListItem>2022</asp:ListItem>
                                                                                     </asp:DropDownList>
                                                                        
                                                                            <asp:DropDownList ID="cmbmonth2" runat="server" class="form-control col-md-12" placeholder="Month" AutoPostBack="True">
                                                                                <asp:ListItem Value="January">January</asp:ListItem>
                                                                                <asp:ListItem>February</asp:ListItem>
                                                                                <asp:ListItem>March</asp:ListItem>
                                                                                <asp:ListItem>April</asp:ListItem>
                                                                                <asp:ListItem>May</asp:ListItem>
                                                                                <asp:ListItem>June</asp:ListItem>
                                                                                <asp:ListItem>July</asp:ListItem>
                                                                                <asp:ListItem>August</asp:ListItem>
                                                                                <asp:ListItem>September</asp:ListItem>
                                                                                <asp:ListItem>October</asp:ListItem>
                                                                                <asp:ListItem Selected="True">November</asp:ListItem>
                                                                                <asp:ListItem>December</asp:ListItem>
                                                                                     </asp:DropDownList>
                                                                
                                                                            <asp:Button ID="btnrevenue" runat="server" Text="Search"  class="btn btn-outline-success col-md-12" onclick="btnrevenue_Click" />
                                                                        </div>
                                                                                   </div>


                                                    <div class="row">
                                                        <div class="col-md-12">
                                                         <div class="card" style="fit-position:center; padding-left:10px;  padding-bottom:10px; padding-right:10px; padding-top:10px">
                                                    
                                                             <asp:Chart ID="Chart2" runat="server">
                                                        <Series>
                                                            <asp:Series Name="Series1"></asp:Series>
                                                        </Series>
                                                        <ChartAreas>
                                                            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                                        </ChartAreas>
                                                    </asp:Chart>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>   
                                    </div>
                                    
                                  </div>
                                <br />
                                <div class="row">
                                 <div class="col-md-12">

                                            <div class="card" style="fit-position:center; padding-left:10px;  padding-bottom:10px; padding-right:10px; padding-top:10px" >
                                                <div class="header">
                                                    <h4 class="title">Total No of Jobs</h4>
                                                </div>

                                                <div class="card-body align-content-center">

                                                      <div class="row">
                                                          <div class="col-md-12">
                                                            
                                                              <asp:Chart ID="Chart3" runat="server">
                                                                  <Series>
                                                                      <asp:Series Name="Series1" ChartType="Pie">
                                                                          <Points>
                                                                              <asp:DataPoint YValues="0" />
                                                                          </Points>
                                                                      </asp:Series>
                                                                  </Series>
                                                                  <ChartAreas>
                                                                      <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                                                  </ChartAreas>
                                                              </asp:Chart>
                                                          
                                                          </div>
                                                        </div>
                                                </div>
                                            </div>
                                     </div>
                                    </div>
                                <br />
                                  <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="card" style="fit-position:center; padding-left:10px;  padding-bottom:10px; padding-right:10px; padding-top:10px">
                                                                <div class="header">
                                                                    <h4 class="title">Requested Jobs</h4>
                                                                </div>
                                                                <br />
                                                                <div class="table-responsive"> 


                                                                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False"  DataKeyName="RJobID" CssClass="table table-striped table-bordered table-hover">
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
                                                                           <asp:TemplateField HeaderText="Requested Job ID" HeaderStyle-CssClass="visible-md" ItemStyle-CssClass="visible-md">
                                                                                 <ItemTemplate>
                                                                                     <asp:Label ID="lblContainerID" runat="server" Text='<%# Eval("RJobID") %>'></asp:Label>
                                                                                 </ItemTemplate>
                                                                               
                                                                             </asp:TemplateField>

                                                                             <asp:TemplateField HeaderText="Requested Job" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                                                                 <ItemTemplate>
                                                                                     <asp:Label ID="lblContainerNO" runat="server" Text='<%# Eval("RequestedBY") %>'></asp:Label>
                                                                                 </ItemTemplate>
                                                                                
                                                                             </asp:TemplateField>
                                                                          </columns>

                                                                       </asp:GridView>
                                                                </div>
                                                            </div>
                                                        </div>
                                      </div>
                                <br />
                                  <div class="row">
                                                 <div class="col-md-12">
                                                    <div class="form-group">
                                                    <asp:Label ID="lblMessage"   class="form-control" runat="server" ForeColor="Red" Font-Size="Medium" Font-Bold="True" Text="hii" Visible="False"></asp:Label>
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
