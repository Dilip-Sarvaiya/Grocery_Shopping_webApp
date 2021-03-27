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
        HttpSession httpSession = request.getSession();
        String email = (String) httpSession.getAttribute("login_or_not");
        
        Connection conn = DBConnect_JDBC.getConnection();
        PreparedStatement ps = conn.prepareStatement("update cart set db_email='" + d_boy + "' where email='" + email + "' and status='processing'");
        ps.executeUpdate();
        String d_boy_status = "assigned";
        DeliveryBoy db_single = DeliveryboyDAO.viewSingle(d_boy);
        db_single.setStatus(d_boy_status);
        DeliveryboyDAO.update(db_single);
        response.sendRedirect("Myorder.jsp");
    } catch (Exception e) {
        out.println(e.getMessage());
    }
%>    