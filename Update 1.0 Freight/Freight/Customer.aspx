<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="Freight.Customer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    

      <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card" style="fit-position:center; padding-left:10px;  padding-bottom:10px; padding-right:10px; padding-top:10px">
                            <div class="header">
                                <h4 class="title">Customer Profile</h4>
                            </div>

                             <div class="row">
                                        <div class="col-md-12">
  
                                            <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                                                <asp:DropDownList ID="cmbSearch" runat="server" class="form-control col-4 mr-sm-4" OnSelectedIndexChanged="cmbSearch_SelectedIndexChanged" OnTextChanged="cmbSearch_TextChanged" ></asp:DropDownList>
                                                <asp:Button ID="Button1" runat="server" Text="Search"  class="btn btn-success col-2" OnClick="Button1_Click"/>
                  
                                            
                                            </nav>
                                             <br />
                                          </div>
                
        
                             </div>





                             <div class="content" >
                                  <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Customer ID</label>
                                                <asp:TextBox ID="txtCustomerId" runat="server" class="form-control" placeholder="Customer ID" value="" Visible="True" ReadOnly="True"></asp:TextBox>
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
                                   <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                     <asp:Label ID="lblMessage"   class="form-control" runat="server" ForeColor="Red" Font-Size="Medium" Font-Bold="True" Text="hii" Visible="False"></asp:Label>
                                                </div>
                                            </div>
                                   </div>
                                     <asp:Button ID="btnClear" runat="server" Text="Clear Content"  class="btn btn-info btn-fill pull-right" OnClick="btnClear_Click" />                  

                                    <asp:Button ID="btnSubmit" runat="server" Text="Save Profile"  class="btn btn-info btn-fill pull-right" OnClick="btnSubmit_Click"/> 
                                 
                                    
                                    <asp:Button ID="btnDelete" runat="server" Text="Delete Profile"  class="btn btn-info btn-fill pull-right" OnClick="btnDelete_Click" /> 


                                                        
                                    <div class="clearfix"></div>  

                                  
                            </div>
                                     
                        </div>
                    </div>


                 </div>
                 </div> 
             
     </div>  




</asp:Content>
