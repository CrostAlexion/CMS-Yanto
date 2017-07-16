<%@ Page Title="Delete Container" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteContainer.aspx.cs" Inherits="DDACMaersk.DeleteContainer" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Delete Container Data</h3>
    <table class="table" style="width:500px">
        <tbody>
            <tr>
                <td>Container ID: </td>
                <td><input type="text" class="form-control" id="containerid" placeholder="Please input the container ID" runat="server"></td>
            </tr>
            <tr>
                <td colspan="2" align="right"><input type="submit" class="btn btn-primary" value="Delete" onserverclick="Delete_Container" runat="server" style="margin-right:32px"></td>
            </tr>
        </tbody>
    </table>
</asp:Content>

