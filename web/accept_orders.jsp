<%-- 
    Document   : accept_orders
    Created on : 26 Mar, 2021, 11:05:15 PM
    Author     : Makwana Divya
--%>

<%@page import="DAO.DBConnect_JDBC"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import=" javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import=" javax.servlet.http.HttpServletResponse"%>
<%@page import=" javax.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%   
            HttpSession httpSession=request.getSession();
            String id=request.getParameter("id");
            String email=request.getParameter("email");
            String status="Accepted";
            
            try {
                Connection conn = DBConnect_JDBC.getConnection();
                Statement st = conn.createStatement();
                st.executeUpdate("update cart set status='"+status+"' where email='"+email+"' and address is not NULL");
                httpSession.setAttribute("message", "Successfully updated");
                response.sendRedirect("received_orders.jsp");   
                
            }catch (Exception ex) {
                        out.println(ex.getMessage());
                    }
                %>