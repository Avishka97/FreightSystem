<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ReportViewerImport.aspx.cs" Inherits="Freight.ReportViewerImport" %>

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
                                            <rsweb:ReportViewer ID="ReportViewer1" class="col-md-12" runat="server" Width="100%"></rsweb:ReportViewer>
                                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

                                        </div>
                                </div>

                            <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                             <asp:Label ID="lblMessage"   class="form-control" runat="server" ForeColor="Red" Font-Size="Medium" Font-Bold="True" Visible="False"></asp:Label>
                                        </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
 
   </div>
   </div>

</asp:Content>
