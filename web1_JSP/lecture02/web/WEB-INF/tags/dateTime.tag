<%@ tag import="java.util.Date" %>
<%@ tag import="java.text.SimpleDateFormat" %>
<%@ tag description="pagination" pageEncoding="UTF-8" %>
<%@ attribute name="format" type="java.lang.String" required="true" %>
<%@ attribute name="date" type="java.util.Date" required="false" %>
<%
    String format = (String)jspContext.getAttribute("format");
    Date date = (Date)jspContext.getAttribute("date");

    if(date == null) date = new Date();
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat(format);
%>
<span>
    <%= simpleDateFormat.format(date)%>
</span>