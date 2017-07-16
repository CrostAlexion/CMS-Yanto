<%@ Page Title="List Container" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListContainer.aspx.cs" Inherits="DDACMaersk.ListContainer" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Container List</h3>
    <table class="table">
        <thead>
            <tr>
                <th>Container ID</th>
                <th>Type</th>
                <th>Lot Number</th>
                <th>Size</th>
                <th>Used Size</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <asp:ListView ID="ListView" ItemType="DDACMaersk.Models.ContainerData" runat="server" SelectMethod="GetContainerData">
                <ItemTemplate>
                    <tr>
                        <td><%#: Item.ContainerID %></td>
                        <td><%#: Item.Type %></td>
                        <td><%#: Item.LotNumber %></td>
                        <td><%#: Item.Size %></td>
                        <td><%#: Item.UsedSize %></td>
                        <td><%#: Item.Status %></td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </tbody>
    </table>
</asp:Content>
