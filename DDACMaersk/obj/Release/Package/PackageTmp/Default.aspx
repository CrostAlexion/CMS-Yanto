<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DDACMaersk._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Container Management System</h1>
        <p class="lead">Maersk Line - Integrated Transport and Logistics Company</p>
        <div class="row">
            <div class="col-sm-3"><p><a href="ListContainer" class="btn btn-primary btn-lg">List Container &raquo;</a></p></div>
			<div class="col-sm-3"><p><a href="AddContainer" class="btn btn-primary btn-lg">Add Container &raquo;</a></p></div>
            <div class="col-sm-3"><p><a href="UpdateContainer" class="btn btn-primary btn-lg">Update Container &raquo;</a></p></div>
			<div class="col-sm-3"><p><a href="DeleteContainer" class="btn btn-primary btn-lg">Delete Container &raquo;</a></p></div>
        </div>
    </div>

</asp:Content>
