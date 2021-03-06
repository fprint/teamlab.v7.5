﻿<%@ Control Language="C#" AutoEventWireup="false" EnableViewState="false" %>

<script id="template-filter-combobox-options" type="text/x-jquery-tmpl">
    <option class="${classname}" value="${value}"{{if typeof def === "boolean" && def === true}} selected="selected"{{/if}}>
        ${title}
    </option>
</script>

<script id="template-filter-filtervalues" type="text/x-jquery-tmpl">
    <div class="advansed-item-list advansed-filter-list">
        <ul class="item-list filter-list"></ul>
    </div>
</script>

<script id="template-filter-sortervalues" type="text/x-jquery-tmpl">
    <div class="advansed-item-list advansed-sorter-list">
        <ul class="item-list sorter-list"></ul>
    </div>
</script>

<script id="template-filter-container" type="text/x-jquery-tmpl">

<div class="advansed-filter empty-filter-list">
    <div class="advansed-filter-wrapper">
        <div class="advansed-filter-support">
            <label class="advansed-filter-label"><%= Resources.UserControlsCommonResource.LblFilter%></label>
            <label class="advansed-filter-hint"></label>
            <div class="advansed-filter-hint-popup-helper"><div class="advansed-filter-hint-popup popup_helper"></div></div>
        </div>
        <label class="advansed-filter-state btn-start-filter"></label>
        <div class="advansed-filter-sort-container">
            <span class="btn-toggle-sorter"></span>
            <span class="title"><%= Resources.UserControlsCommonResource.LblSort%>:&nbsp;<span class="value"></span></span>
        </div>


        <div class="advansed-item-list advansed-sorter-list"><ul class="item-list sorter-list"></ul></div>
        <div class="advansed-item-list advansed-filter-list"><ul class="item-list filter-list"></ul></div>
        <div class="advansed-filter-control advansed-filter-groupselector">
            <div class="advansed-filter-control-container advansed-filter-groupselector-container">
                <div class="control-top groupselector-top"></div>
            </div>
        </div>

        <div class="advansed-filter-control advansed-filter-userselector">
            <div class="advansed-filter-control-container advansed-filter-userselector-container">
                <div class="control-top userselector-top"></div>
            </div>
        </div>

        <div class="advansed-filter-container">
                <div class="advansed-filter-filters empty-list">
                    <div class="btn-show-hidden-filters"><%= Resources.UserControlsCommonResource.BtnHiddenFilter%></div>
                    <div class="hidden-filters-container">
                        <div class="control-top hidden-filters-container-top"></div>
                    </div>
                </div>
                <div class="advansed-filter-button btn-show-filters">
                    <div class="inner-text"><span class="text"></span></div>
                </div>
                <div class="advansed-filter-input">
                    <label class="advansed-filter-reset btn-reset-filter"></label>
                    <input class="advansed-filter advansed-filter-input advansed-filter-complete" type="text" placeholder="<%= Resources.UserControlsCommonResource.LblFilterPlaceholder%>" />
                </div>
            </div>
        {{if filtervalues.length > 0}}
            {{tmpl "template-filter-filtervalues"}}
        {{/if}}
        {{if sortervalues.length > 0}}
            {{tmpl "template-filter-sortervalues"}}
        {{/if}}
    </div>
    <div class="advansed-filter-helper"></div>
</div>
</script>

<script id="template-filter-item" type="text/x-jquery-tmpl">
<div class="default-value">
    <span class="title">{{if filtertitle}}${filtertitle}{{else}}${title}{{/if}}</span>
        <span class="selector-wrapper">
            <span class="daterange-selector from-daterange-selector">
                <span class="label"><%= Resources.UserControlsCommonResource.LblFrom %></span>
                <span class="advansed-filter-dateselector-date dateselector-from-date">
                <span class="btn-show-datepicker btn-show-datepicker-container"><span class="btn-show-datepicker btn-show-datepicker-title"></span></span>
                <span class="advansed-filter-datepicker-container asc-datepicker">
                    <span class="control-top dateselector-top"></span>
                    <span class="datepicker-container"></span>
                </span>
            </span>
        </span>
        <span class="daterange-selector to-daterange-selector">
            <span class="label"><%= Resources.UserControlsCommonResource.LblTo%></span>
            <span class="advansed-filter-dateselector-date dateselector-to-date">
                <span class="btn-show-datepicker btn-show-datepicker-container"><span class="btn-show-datepicker btn-show-datepicker-title"></span></span>
                <span class="advansed-filter-datepicker-container asc-datepicker">
                    <span class="control-top dateselector-top"></span>
                    <span class="datepicker-container"></span>
                </span>
            </span>
        </span>
        {{if options}}
        <span class="combobox-selector">
            <select class="advansed-filter-combobox"{{if $data.multiple === true}} multiple="multiple"{{/if}}>
                {{tmpl(options) "template-filter-combobox-options"}}
            </select>
        </span>
        {{/if}}
        <span class="group-selector">
            <%-- <span class="custom-value"><span class="value"></span>&nbsp;<small>▼</small></span> --%>
            <span class="custom-value"><span class="inner-text"><span class="value"></span></span></span>
            <%--<span class="default-value"><span class="value"><%= Resources.UserControlsCommonResource.LblSelect %></span>&nbsp;<small>▼</small></span> --%>
            <span class="default-value"><span class="inner-text"><span class="value"><%= Resources.UserControlsCommonResource.LblSelect%></span></span></span>
        </span>
        <span class="person-selector">
            <%--<span class="custom-value"><span class="value"></span>&nbsp;<small>▼</small></span>--%>
            <span class="custom-value"><span class="inner-text"><span class="value"></span></span></span>
            <%--<span class="default-value"><span class="value"><%= Resources.UserControlsCommonResource.LblSelect%></span>&nbsp;<small>▼</small></span>--%>
            <span class="default-value"><span class="inner-text"><span class="value"><%= Resources.UserControlsCommonResource.LblSelect%></span></span></span>
        </span>
    </span>
    <span class="btn-delete"></span>
</div>
</script>