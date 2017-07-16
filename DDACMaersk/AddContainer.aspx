<%@ Page Title="Add Container" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddContainer.aspx.cs" Inherits="DDACMaersk.AddContainer" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Add Container Data</h3>
    <table class="table" style="width:500px">
        <tbody>
            <tr>
                <td>Type</td>
                <td><input type="text" class="form-control" id="typeid" runat="server"></td>
            </tr>
            <tr>
                <td>Lot Number</td>
                <td><input type="text" class="form-control" id="lotnumberid" runat="server"></td>
            </tr>
            <tr>
                <td>Size</td>
                <td><input type="text" class="form-control" id="sizeid" runat="server"></td>
            </tr>
            <tr>
                <td>Used Size</td>
                <td><input type="text" class="form-control" id="usedsizeid" runat="server"></td>
            </tr>
            <tr>
                <td>Status</td>
                <td><input type="text" class="form-control" id="statusid" runat="server"></td>
            </tr>
            <tr>
                <td colspan="2" align="right"><input type="submit" class="btn btn-primary" id="submitid" value="Submit" runat="server" onserverclick="Add_Container" style="margin-right: 38px;"></td>
            </tr>
        </tbody>
    </table>
</asp:Content>
