<%-- 
    Document   : updated_pw
    Created on : 2 Mar, 2021, 2:41:20 PM
    Author     : Dilip J Sarvaiya
--%>

<%@page import="Util.HibernateUtil"%>
<%@page import="DAO.UsersDAO"%>
<%@page import="java.util.List"%>
<%@page import="Pojo.User"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Password</title>
    </head>
    <body>
        <%
            String userEmail = request.getParameter("userEmail");
            String userconfPassword = request.getParameter("userconfPassword");
            HttpSession httpSession = request.getSession();
            try
            {
            User obj = UsersDAO.viewSingle(userEmail);
            String user_id = String.valueOf(obj.getUserId());
            String userType = obj.getUserType();
            
            if (obj != null) {
                User bean=new User(userEmail,userconfPassword);
                
                bean.setUserId(obj.getUserId());
                bean.setUserName(obj.getUserName());
                bean.setUserAddress(obj.getUserAddress());
                bean.setUserPhone(obj.getUserPhone());
                bean.setUserType(obj.getUserType());
                
                UsersDAO.update(bean);
                
                
                httpSession.setAttribute("user_id", user_id);
                if (userType.equals("Shopkeeper")) {
                    httpSession.setAttribute("shopkeeper_email", bean.getUserEmail());
                    response.sendRedirect("update_user.jsp");
                }
                if (userType.equals("Delivery boy")) {
                    httpSession.setAttribute("db_email", obj.getUserEmail());
                    response.sendRedirect("update_user_db.jsp");
                }
                 if (userType.equals("Customer")) {
                    httpSession.setAttribute("cat_add_msg", "User information updated");
                    response.sendRedirect("logout.jsp");
                }
            } else {
                httpSession.setAttribute("message_invalid", "There is no such user..!");
                response.sendRedirect("password_update.jsp");
            }
            }
            catch(Exception e)
            {
                httpSession.setAttribute("message_invalid", "There is no such user..!");
                response.sendRedirect("password_update.jsp");
            }
        %>
    </body>
</html>