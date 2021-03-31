<%-- 
    Document   : changedeliveryboy
    Created on : Mar 16, 2021, 8:29:59 AM
    Author     : Admin
--%>

<%@page import="DAO.DeliveryboyDAO"%>
<%@page import="Pojo.DeliveryBoy"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="DAO.DBConnect_JDBC"%>


<%
    
//                
    try {
        
        String d_boy = request.getParameter("d_boy");
        DeliveryBoy db_single = DeliveryboyDAO.viewSingle_by_name(d_boy);
        HttpSession httpSession = request.getSession();
        String email = (String) httpSession.getAttribute("login_or_not");
        
        Connection conn = DBConnect_JDBC.getConnection();
        PreparedStatement ps = conn.prepareStatement("update cart set db_email='" + db_single.getDbEmail() + "' where email='" + email + "' and status='processing'");
        ps.executeUpdate();
        String d_boy_status = "assigned";
        DeliveryBoy db_single_name = DeliveryboyDAO.viewSingle_by_name(d_boy);
        db_single_name.setStatus(d_boy_status);
        DeliveryboyDAO.update(db_single_name);
        String total_amount = (String) httpSession.getAttribute("total_amount");
        response.sendRedirect("EmailSendingServlet?db_email="+db_single_name.getDbEmail()+"&total_amount="+total_amount);
        httpSession.setAttribute("one_db", "Changed");
        httpSession.setAttribute("message", "Delivery boy changed successfully");
    } catch (Exception e) {
        out.println("jdjd"+e.getMessage());
    }
%>    