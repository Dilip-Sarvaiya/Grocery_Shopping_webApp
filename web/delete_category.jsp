<%-- 
    Document   : register
    Created on : 13 Feb, 2021, 6:48:17 PM
    Author     : Dilip J Sarvaiya
--%>

<%@page import="Pojo.Category"%>
<%@page import="DAO.CategoryDAO"%>
<%@page import="Pojo.Product"%>
<%@page import="DAO.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Registration Page</title>

    </head>
    <body>
        <%
            HttpSession httpSession = request.getSession();
            long cid = Long.parseLong(request.getParameter("id"));
            Category pd = new Category();
            pd.setCategoryId(cid);
            CategoryDAO.delete(pd);
            httpSession.setAttribute("message", "Category has been deleted");
            response.sendRedirect("all_categories.jsp");
        %>
    </body>
</html>

