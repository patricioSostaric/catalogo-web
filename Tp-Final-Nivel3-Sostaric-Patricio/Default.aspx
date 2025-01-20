﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MiMasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Tp_Final_Nivel3_Sostaric_Patricio.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <h1 class="CentrarTitulo">¡Bienvenido/a!</h1>
 <p class="Margen">Te encuentras en la web de articulos.</p>
    <h2 class="Margen">Lista de Articulos</h2>
<div class="row">
    <div class="Margen">
    <div  class="col-6">
        <div class="mb-3">
            <asp:Label Text="Buscar" runat="server" />
            <asp:TextBox runat="server" ID="txtFiltro" CssClass="form-control" AutoPostBack="true" OnTextChanged="txtFiltro_TextChanged" />
        </div>
    </div>
    </div>
    </div>
    
 <div class="row row-cols-1 row-cols-md-3 g-4">
         <asp:Repeater ID="repRepetidor" runat="server">
        <ItemTemplate>
            <div class="col">
                <div class="card">
                    <img src="<%#Eval("ImagenUrl") %>" class="card-img-top" alt="Imagen del articulo" Style="max-width:500px;max-height:600px;" onerror="this.src='https://www.mansor.com.uy/wp-content/uploads/2020/06/imagen-no-disponible2.jpg'">
                    <%--<asp:Image ImageUrl="https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Placeholder_view_vector.svg/1200px-Placeholder_view_vector.svg.png"
                    runat="server" ID="imgArticulo" CssClass="card-img-top" Width="60%" />--%>
                    <div class="card-body">
                        <h5 class="card-title"><%#Eval("Nombre") %></h5>
                        <p class="card-text"><%#Eval("Descripcion") %></p>
                        <a href="DetalleArticulo.aspx?id=<%#Eval("Id") %>">Ver detalle<
                        <asp:Button Text="Comprar" CssClass="btn btn-secondary" ID="btnComprar" CommanArgument='<%#Eval("Id") %>' CommandName="ArticuloId" OnClick="btnComprar_Click" runat="server" />
                        <a href="Favoritos.aspx?id=<%#Eval("Id") %>">⭐</a>                            
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>

</div>
</asp:Content>
