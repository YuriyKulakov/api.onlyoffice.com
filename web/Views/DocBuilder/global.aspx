﻿<%@ Import Namespace="ASC.Api.Web.Help.DocumentGenerator" %>
<%@ Page
    Title=""
    Language="C#"
    MasterPageFile="~/Views/Shared/Site.Master"
    Inherits="System.Web.Mvc.ViewPage"
    ContentType="text/html" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Global type definitions
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <% var globals = (SortedDictionary<string, DBGlobal>)Model; %>
    <h1>
        <span class="hdr">Global type definitions</span>
    </h1>

    <% foreach(var type in globals) { %>
        <div class="global-type-definitions">
            <span class="anchor-position" id="<%= type.Key %>">&nbsp;</span>
            <h4 class="header-gray"><%= type.Key %></h4>
            <p><%= type.Value.Description %></p>

            <div class="global-list">
            <h5>Type:</h5>
            <ul>
                <li>
                    <%= DocBuilderDocumentation.JsDocParser.TypesToHtml(type.Value.Types, type.Value.Module) %>
                </li>
            </ul>
            </div>

            <% if (!string.IsNullOrEmpty(type.Value.Script)) { %>
                <h2>Example</h2>
                <div class="button copy-code">Copy code</div>
<pre><%= type.Value.Script %></pre>
            <% } %>
        </div>
    <% } %>
</asp:Content>
