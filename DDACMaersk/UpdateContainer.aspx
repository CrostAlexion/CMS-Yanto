<%@ Page Title="Update Container" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateContainer.aspx.cs" Inherits="DDACMaersk.UpdateContainer" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Update Container Data</h3>

    <table class="table" style="width:500px">
        <tbody>
            <tr>
                <td>Container ID: </td>
                <td><input type="text" class="form-control" id="containerid" placeholder="Please input the container ID" runat="server"></td>
                <td><input type="submit" class="btn btn-primary" id="getdata" value="GetData" runat="server" onserverclick="Get_Data"></td>
            </tr>
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
                <td colspan="2" align="right"><input type="submit" class="btn btn-primary" id="submitid" value="Submit" runat="server" onserverclick="Update_Container"></td>
            </tr>
        </tbody>
    </table>
</asp:Content>