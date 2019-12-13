﻿<%@ Import Namespace="ASC.Api.Web.Help.DocumentGenerator" %>
<%@ Control
    Language="C#"
    Inherits="System.Web.Mvc.ViewUserControl" %>

<div class="treeheader">Get Started</div>
<ul class="side-nav root">
    <li>
        <a href="<%= Url.Action("basic") %>">Introduction</a>
    </li>
    <li>
        <a href="<%= Url.Action("gettingstarted") %>">Getting started</a>
    </li>
    <li>
        <a href="<%= Url.Action("integratingdocumentbuilder") %>">Integrating Document Builder</a>
        <ul>
            <li>
                <a href="<%= Url.Action("csharpexample") %>">.Net (C#) example</a>
            </li>
            <li>
                <a href="<%= Url.Action("nodejsexample") %>">Node.js example</a>
            </li>
            <li>
                <a href="<%= Url.Action("phpexample") %>">PHP example</a>
            </li>
            <li>
                <a href="<%= Url.Action("rubyexample") %>">Ruby example</a>
            </li>
        </ul>
    </li>
</ul>

<div class="treeheader">Documentation</div>
<ul class="side-nav root">
    <li>
        <a href="<%= Url.Action("integrationapi") %>">Integration API</a>
        <ul>
            <li>
                <a href="<%= Url.Action("integrationapi/usingdocbuilderfile") %>">Using .docbuilder file</a>
            </li>
            <li>
                <a href="<%= Url.Action("integrationapi/cdocbuilder") %>">CDocBuilder class</a>
                <ul>
                    <li>
                        <a href="<%= Url.Action("integrationapi/cdocbuilder/closefile") %>">CloseFile</a>
                    </li>
                    <li>
                        <a href="<%= Url.Action("integrationapi/cdocbuilder/createfile") %>">CreateFile</a>
                    </li>
                    <li>
                        <a href="<%= Url.Action("integrationapi/cdocbuilder/dispose") %>">Dispose</a>
                    </li>
                    <li>
                        <a href="<%= Url.Action("integrationapi/cdocbuilder/executecommand") %>">ExecuteCommand</a>
                    </li>
                    <li>
                        <a href="<%= Url.Action("integrationapi/cdocbuilder/initialize") %>">Initialize</a>
                    </li>
                    <li>
                        <a href="<%= Url.Action("integrationapi/cdocbuilder/openfile") %>">OpenFile</a>
                    </li>
                    <li>
                        <a href="<%= Url.Action("integrationapi/cdocbuilder/run") %>">Run</a>
                    </li>
                    <li>
                        <a href="<%= Url.Action("integrationapi/cdocbuilder/runtexta") %>">RunTextA</a>
                    </li>
                    <li>
                        <a href="<%= Url.Action("integrationapi/cdocbuilder/runtextw") %>">RunTextW</a>
                    </li>
                    <li>
                        <a href="<%= Url.Action("integrationapi/cdocbuilder/savefile") %>">SaveFile</a>
                    </li>
                    <li>
                        <a href="<%= Url.Action("integrationapi/cdocbuilder/setproperty") %>">SetProperty</a>
                    </li>
                    <li>
                        <a href="<%= Url.Action("integrationapi/cdocbuilder/setpropertyw") %>">SetPropertyW</a>
                    </li>
                    <li>
                        <a href="<%= Url.Action("integrationapi/cdocbuilder/settmpfolder") %>">SetTmpFolder</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="<%= Url.Action("integrationapi/globalvariable") %>">Exchanging data among files</a>
            </li>
            <li>
                <a href="<%= Url.Action("integrationapi/arguments") %>">Using command line arguments</a>
            </li>
        </ul>
    </li>
    <li>
        <a href="<%= Url.Action("textdocumentapi") %>">Text document API</a>
        <ul>
            <% foreach (var entry in DocBuilderDocumentation.JsDocParser.GetModule("word")) { %>
                <li>
                    <a href="<%= Url.Action(string.Format("textdocumentapi/{0}", entry.Key.ToLower())) %>"> <%= entry.Key %></a>
                    <ul>
                        <% foreach (var method in entry.Value.Methods) { %>
                            <li>
                                <a href="<%= Url.Action(string.Format("textdocumentapi/{0}/{1}", entry.Key.ToLower(), method.Key.ToLower())) %>"><%= method.Key %></a>
                            </li>
                        <% } %>
                    </ul>
                </li>
            <% } %>
        </ul>
    <li>
        <a href="<%= Url.Action("spreadsheetapi") %>">Spreadsheet API</a>
        <ul>
            <% foreach (var entry in DocBuilderDocumentation.JsDocParser.GetModule("cell")) { %>
                <li>
                    <a href="<%= Url.Action(string.Format("spreadsheetapi/{0}", entry.Key.ToLower())) %>"> <%= entry.Key %></a>
                    <ul>
                        <% foreach (var method in entry.Value.Methods) { %>
                            <li>
                                <a href="<%= Url.Action(string.Format("spreadsheetapi/{0}/{1}", entry.Key.ToLower(), method.Key.ToLower())) %>"><%= method.Key %></a>
                            </li>
                        <% } %>
                    </ul>
                </li>
            <% } %>
        </ul>
    </li>
    <li>
        <a href="<%= Url.Action("presentationapi") %>">Presentation API</a>
        <ul>
            <% foreach (var entry in DocBuilderDocumentation.JsDocParser.GetModule("slide")) { %>
                <li>
                    <a href="<%= Url.Action(string.Format("presentationapi/{0}", entry.Key.ToLower())) %>"> <%= entry.Key %></a>
                    <ul>
                        <% foreach (var method in entry.Value.Methods) { %>
                            <li>
                                <a href="<%= Url.Action(string.Format("presentationapi/{0}/{1}", entry.Key.ToLower(), method.Key.ToLower())) %>"><%= method.Key %></a>
                            </li>
                        <% } %>
                    </ul>
                </li>
            <% } %>
        </ul>
    </li>
    <li>
        <a href="<%= Url.Action("global") %>">Global</a>
    </li>
    <li>
        <a href="<%= Url.Action("classlist") %>">List of classes</a>
    </li>
</ul>
