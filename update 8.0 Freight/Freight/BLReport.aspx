<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BLReport.aspx.cs" Inherits="Freight.BLReport" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




     <div class="content">
                 <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card" style="fit-position:center; padding-left:10px;  padding-bottom:10px; padding-right:10px; padding-top:10px">
                                    <div class="header">
                                        <h4 class="title">Bill Of Loading</h4>
                                    </div>


                                   
                                    <div class="row">
                                              <div class="col-md-12">
                                                   <div class="form-group">
                                                       <asp:Button ID="btnSubmit" runat="server" Text="Create the attched sheet"  class="btn btn-info btn-fill pull-right" OnClick="btnSubmit_Click" /> 
                                                    </div>
                                                </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>



            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card" style="fit-position:center; padding-left:10px;  padding-bottom:10px; padding-right:10px; padding-top:10px">
                            <div class="header">
                                <h4 class="title">Bill Of Loading</h4>
                            </div>


                                 <div class="row">
                                        <div class="col-md-12">
                                            <rsweb:ReportViewer ID="ReportViewer1" class="col-md-12" runat="server" Width="100%"></rsweb:ReportViewer>
                                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

                                        </div>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
 
              <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card" style="fit-position:center; padding-left:10px;  padding-bottom:10px; padding-right:10px; padding-top:10px">
                            <div class="header">
                                <h4 class="title">Attached Sheet</h4>
                            </div>


                                 <div class="row">
                                        <div class="col-md-12">
                                            <rsweb:ReportViewer ID="ReportViewer2" class="col-md-12" runat="server" Width="100%" AsyncRendering="False"></rsweb:ReportViewer>
                                        </div>
                                </div>
                        </div>
                    </div>
                </div>
            </div>

         
         
         
         
         
         
         
         
         
          </div>














</asp:Content>
