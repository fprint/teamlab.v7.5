﻿<%@ Assembly Name="ASC.Web.CRM" %>
<%@ Assembly Name="ASC.Web.Studio" %>
<%@ Assembly Name="ASC.Web.Core" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListItemView.ascx.cs" Inherits="ASC.Web.CRM.Controls.Settings.ListItemView" %>
<%@ Import Namespace="ASC.CRM.Core" %>
<%@ Import Namespace="ASC.Web.Core.Utility.Skins" %>
<%@ Import Namespace="ASC.Web.CRM.Configuration" %>
<%@ Import Namespace="ASC.Web.CRM.Resources" %>
<%@ Register TagPrefix="sc" Namespace="ASC.Web.Studio.Controls.Common" Assembly="ASC.Web.Studio" %>

<p style="margin-bottom: 10px;"><%= DescriptionText %></p>
<p style="margin-bottom: 20px;"><%= DescriptionTextEditDelete%></p>

<div id="manageItem" style="display: none">
    <sc:Container ID="_manageItemPopup" runat="server">
        <Header>
           <%= AddPopupWindowText %>
        </Header>
        <Body>
            <div class="clearFix" style="margin-bottom:10px;">
                <% if (CurrentTypeValue == ListType.TaskCategory || CurrentTypeValue == ListType.HistoryCategory) %>
                <% { %>
                    <div style="float: left;">
                        <label class="selectedIcon <%= CurrentTypeValue == ListType.TaskCategory ? "task_category" : "event_category" %>" alt="" title="" img_name=""></label>
                    </div>
                    <div style="padding-top: 6px">
                        <span class="baseLinkAction crm-withArrowDown change_icon" onclick="ASC.CRM.ListItemView.showIconsPanelToSelect();">
                            <%= CRMSettingResource.ChangeIcon %>
                        </span>
                    </div>

                    <% if (CurrentTypeValue == ListType.TaskCategory) %>
                    <% { %>
                    <div id="popup_iconsPanel_<%= (int)CurrentTypeValue %>" class="iconsPanelSettings studio-action-panel" style="width: 148px;height: 112px;">
                        <div class="corner-top left"></div>
                        <label class="task_category task_category_call" alt="<%= CRMTaskResource.TaskCategory_Call %>" title="<%= CRMTaskResource.TaskCategory_Call %>" img_name="task_category_call.png"></label>
                        <label class="task_category task_category_deal" alt="<%= CRMTaskResource.TaskCategory_Deal %>" title="<%= CRMTaskResource.TaskCategory_Deal %>" img_name="task_category_deal.png"></label>
                        <label class="task_category task_category_demo" alt="<%= CRMTaskResource.TaskCategory_Demo %>" title="<%= CRMTaskResource.TaskCategory_Demo %>" img_name="task_category_demo.png"></label>
                        <label class="task_category task_category_email" alt="<%= CRMTaskResource.TaskCategory_Email %>" title="<%= CRMTaskResource.TaskCategory_Email %>" img_name="task_category_email.png"></label>
                        <label class="task_category task_category_fax" alt="<%= CRMTaskResource.TaskCategory_Fax %>" title="<%= CRMTaskResource.TaskCategory_Fax %>" img_name="task_category_fax.png"></label>
                        <label class="task_category task_category_follow_up" alt="<%= CRMTaskResource.TaskCategory_FollowUP %>" title="<%= CRMTaskResource.TaskCategory_FollowUP %>" img_name="task_category_follow_up.png"></label>
                        <label class="task_category task_category_lunch" alt="<%= CRMTaskResource.TaskCategory_Lunch %>" title="<%= CRMTaskResource.TaskCategory_Lunch %>" img_name="task_category_lunch.png"></label>
                        <label class="task_category task_category_meeting" alt="<%= CRMTaskResource.TaskCategory_Meeting %>" title="<%= CRMTaskResource.TaskCategory_Meeting %>" img_name="task_category_meeting.png"></label>
                        <label class="task_category task_category_note" alt="<%= CRMTaskResource.TaskCategory_Note %>" title="<%= CRMTaskResource.TaskCategory_Note %>" img_name="task_category_note.png"></label>
                        <label class="task_category task_category_ship" alt="<%= CRMTaskResource.TaskCategory_Ship %>" title="<%= CRMTaskResource.TaskCategory_Ship %>" img_name="task_category_ship.png"></label>
                        <label class="task_category task_category_social_networks" alt="<%= CRMTaskResource.TaskCategory_SocialNetworks %>" title="<%= CRMTaskResource.TaskCategory_SocialNetworks %>" img_name="task_category_social_networks.png"></label>
                        <label class="task_category task_category_thank_you" alt="<%= CRMTaskResource.TaskCategory_ThankYou %>" title="<%= CRMTaskResource.TaskCategory_ThankYou %>" img_name="task_category_thank_you.png"></label>
                    </div>
                    <% } else { %>
                    <div id="popup_iconsPanel_<%= (int)CurrentTypeValue %>" class="iconsPanelSettings studio-action-panel" style="width: 74px; height: 74px;">
                        <div class="corner-top left"></div>
                        <label class="event_category event_category_note" alt="<%= CRMCommonResource.HistoryCategory_Note %>" title="<%= CRMCommonResource.HistoryCategory_Note %>" img_name="event_category_note.png"></label>
                        <label class="event_category event_category_email" alt="<%= CRMCommonResource.HistoryCategory_Email %>" title="<%= CRMCommonResource.HistoryCategory_Email %>" img_name="event_category_email.png"></label>
                        <label class="event_category event_category_call" alt="<%= CRMCommonResource.HistoryCategory_Call %>" title="<%= CRMCommonResource.HistoryCategory_Call %>" img_name="event_category_call.png"></label>
                        <label class="event_category event_category_meeting" alt="<%= CRMCommonResource.HistoryCategory_Meeting %>" title="<%= CRMCommonResource.HistoryCategory_Meeting %>" img_name="event_category_meeting.png"></label>
                    </div>
                    <% } %>

                <% } else if (CurrentTypeValue == ListType.ContactStatus) { %>
                    <div class="selectedColor">&nbsp;</div>
                    <span class="baseLinkAction crm-withArrowDown change_color" onclick="ASC.CRM.ListItemView.showColorsPanelToSelect();">
                        <%= CRMSettingResource.ChangeColor %>
                    </span>
                    <div id="popup_colorsPanel" class="studio-action-panel colorsPanelSettings">
                        <div class="corner-top left"></div>
                        <span class="style1" colorstyle="1"></span><span class="style2" colorstyle="2"></span><span class="style3" colorstyle="3"></span><span class="style4" colorstyle="4"></span><span class="style5" colorstyle="5"></span><span class="style6" colorstyle="6"></span><span class="style7" colorstyle="7"></span><span class="style8" colorstyle="8"></span>
                        <span class="style9" colorstyle="9"></span><span class="style10" colorstyle="10"></span><span class="style11" colorstyle="11"></span><span class="style12" colorstyle="12"></span><span class="style13" colorstyle="13"></span><span class="style14" colorstyle="14"></span><span class="style15" colorstyle="15"></span><span class="style16" colorstyle="16"></span>
                    </div>
                <% } %>
            </div>

            <div class="requiredField" style="margin-bottom:10px;">
                <span class="requiredErrorText"><%= CRMSettingResource.EmptyTitleError %></span>
                <div style="margin-bottom:5px;" class="headerPanelSmall header-base-small">
                    <%= CRMSettingResource.TitleItem %>:
                </div>
                <input type="text" class="textEdit" maxlength="255" />
            </div>

            <% if (CurrentTypeValue != ListType.ContactType) %>
            <% { %>
            <div>
                <div style="margin-bottom:5px;">
                    <b><%= CRMSettingResource.Description %>:</b>
                </div>
                <textarea rows="4" style="resize: none;"></textarea>
            </div>
            <% } %>

            <div class="crm-actionButtonsBlock">
                <a class="button blue middle"><%= AddButtonText %></a>
                <span class="splitter-buttons"></span>
                <a class="button gray middle" onclick="PopupKeyUpActionProvider.EnableEsc = true; jq.unblockUI();">
                    <%= CRMCommonResource.Cancel %>
                </a>
            </div>
            <div class="crm-actionProcessInfoBlock">
                <span class="text-medium-describe"><%= AjaxProgressText%></span>
                <br />
                <img alt="<%= AjaxProgressText%>" src="<%= WebImageSupplier.GetAbsoluteWebPath("ajax_progress_loader.gif") %>" />
            </div>
        </Body>
    </sc:Container>
</div>

<div class="clearFix" style="margin-bottom: 15px;">
    <a id="createNewItem" class="gray button">
        <span class="plus"><%= AddListButtonText%></span>
    </a>
    <% if (CurrentTypeValue == ListType.ContactStatus) { %>
    <div style="float:right;">
        <input type="checkbox" style="float: left;" id="cbx_ChangeContactStatusWithoutAsking"
            <% if (ASC.Web.CRM.Classes.Global.TenantSettings.ChangeContactStatusGroupAuto != null) { %>checked="checked"<% } %> />
        <label style="float:left; padding: 2px 0 0 4px;" for="cbx_ChangeContactStatusWithoutAsking">
            <%= CRMSettingResource.ChangeContactStatusWithoutAskingSettingsLabel %>
        </label>
    </div>
    <% } %>
</div>

<ul id="listView">
</ul>
<div id="listItemActionMenu" class="studio-action-panel" listitemid="">
    <div class="corner-top right"></div>
    <ul class="dropdown-content">
        <li><a class="dropdown-item" onclick="ASC.CRM.ListItemView.showEditItemPanel();"><%= EditText %></a></li>
        <li><a class="dropdown-item" onclick="ASC.CRM.ListItemView.deleteItem();"><%= DeleteText %></a></li>
    </ul>
</div>

<% if (CurrentTypeValue == ListType.ContactStatus) %>
<% { %>
<div id="colorsPanel" class="studio-action-panel colorsPanelSettings">
    <div class="corner-top left"></div>
    <span class="style1" colorstyle="1"></span><span class="style2" colorstyle="2"></span><span class="style3" colorstyle="3"></span><span class="style4" colorstyle="4"></span><span class="style5" colorstyle="5"></span><span class="style6" colorstyle="6"></span><span class="style7" colorstyle="7"></span><span class="style8" colorstyle="8"></span>
    <span class="style9" colorstyle="9"></span><span class="style10" colorstyle="10"></span><span class="style11" colorstyle="11"></span><span class="style12" colorstyle="12"></span><span class="style13" colorstyle="13"></span><span class="style14" colorstyle="14"></span><span class="style15" colorstyle="15"></span><span class="style16" colorstyle="16"></span>
</div>
<% } %>


<% if (CurrentTypeValue == ListType.TaskCategory) %>
<% { %>
<div id="iconsPanel_<%= (int)CurrentTypeValue %>" class="iconsPanelSettings studio-action-panel" style="width: 148px;height: 112px;">
    <div class="corner-top left"></div>
    <label class="task_category task_category_call" alt="<%= CRMTaskResource.TaskCategory_Call %>" title="<%= CRMTaskResource.TaskCategory_Call %>" img_name="task_category_call.png"></label>
    <label class="task_category task_category_deal" alt="<%= CRMTaskResource.TaskCategory_Deal %>" title="<%= CRMTaskResource.TaskCategory_Deal %>" img_name="task_category_deal.png"></label>
    <label class="task_category task_category_demo" alt="<%= CRMTaskResource.TaskCategory_Demo %>" title="<%= CRMTaskResource.TaskCategory_Demo %>" img_name="task_category_demo.png"></label>
    <label class="task_category task_category_email" alt="<%= CRMTaskResource.TaskCategory_Email %>" title="<%= CRMTaskResource.TaskCategory_Email %>" img_name="task_category_email.png"></label>
    <label class="task_category task_category_fax" alt="<%= CRMTaskResource.TaskCategory_Fax %>" title="<%= CRMTaskResource.TaskCategory_Fax %>" img_name="task_category_fax.png"></label>
    <label class="task_category task_category_follow_up" alt="<%= CRMTaskResource.TaskCategory_FollowUP %>" title="<%= CRMTaskResource.TaskCategory_FollowUP %>" img_name="task_category_follow_up.png"></label>
    <label class="task_category task_category_lunch" alt="<%= CRMTaskResource.TaskCategory_Lunch %>" title="<%= CRMTaskResource.TaskCategory_Lunch %>" img_name="task_category_lunch.png"></label>
    <label class="task_category task_category_meeting" alt="<%= CRMTaskResource.TaskCategory_Meeting %>" title="<%= CRMTaskResource.TaskCategory_Meeting %>" img_name="task_category_meeting.png"></label>
    <label class="task_category task_category_note" alt="<%= CRMTaskResource.TaskCategory_Note %>" title="<%= CRMTaskResource.TaskCategory_Note %>" img_name="task_category_note.png"></label>
    <label class="task_category task_category_ship" alt="<%= CRMTaskResource.TaskCategory_Ship %>" title="<%= CRMTaskResource.TaskCategory_Ship %>" img_name="task_category_ship.png"></label>
    <label class="task_category task_category_social_networks" alt="<%= CRMTaskResource.TaskCategory_SocialNetworks %>" title="<%= CRMTaskResource.TaskCategory_SocialNetworks %>" img_name="task_category_social_networks.png"></label>
    <label class="task_category task_category_thank_you" alt="<%= CRMTaskResource.TaskCategory_ThankYou %>" title="<%= CRMTaskResource.TaskCategory_ThankYou %>" img_name="task_category_thank_you.png"></label>
</div>
<% } else if (CurrentTypeValue == ListType.HistoryCategory) { %>
<div id="iconsPanel_<%= (int)CurrentTypeValue %>" class="iconsPanelSettings studio-action-panel" style="width: 74px;height: 74px;">
    <div class="corner-top left"></div>
    <label class="event_category event_category_note" alt="<%= CRMCommonResource.HistoryCategory_Note %>" title="<%= CRMCommonResource.HistoryCategory_Note %>" img_name="event_category_note.png"></label>
    <label class="event_category event_category_email" alt="<%= CRMCommonResource.HistoryCategory_Email %>" title="<%= CRMCommonResource.HistoryCategory_Email %>" img_name="event_category_email.png"></label>
    <label class="event_category event_category_call" alt="<%= CRMCommonResource.HistoryCategory_Call %>" title="<%= CRMCommonResource.HistoryCategory_Call %>" img_name="event_category_call.png"></label>
    <label class="event_category event_category_meeting" alt="<%= CRMCommonResource.HistoryCategory_Meeting %>" title="<%= CRMCommonResource.HistoryCategory_Meeting %>" img_name="event_category_meeting.png"></label>
</div>
<% } %>