<br>
            <% if disabled: %>       
                <%=_("Call for Abstracts is DISABLED for this conference")%>
            <% end %>
            <% elif modifDeadline=="expired": %>
                <%=_("The deadline for modifications on the submitted abstracts is expired.")%>
            <% end %>
<% else: %>
<table class="groupTable">
    <tr>
        <td id="reviewingModeHelp" colspan="5" class="groupTitle" style="padding-bottom: 10px; padding-left: 20px;">
            <%= _("Notification templates")%>
        </td>
    </tr>
    <tr>
        <form action=%(remNotifTplURL)s method="POST">
        <td bgcolor="white" width="100%%" class="blacktext">  
            <table width="98%%" border="0" align="right" style="padding-top: 10px; padding-bottom: 10px;">
                %(notifTpls)s
            </table>
        </td>
        <td valign="center" align="right">
            <input type="submit" class="btn" value="<%= _("remove")%>">
        </form>
        <form action=%(addNotifTplURL)s method="POST">
            <input type="submit" class="btn" value="<%= _("add")%>">
        </td>
        </form>
    </tr>    
</table>
<% end %>
<br>