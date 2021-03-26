<%-- 
    Document   : db_info
    Created on : 9 Mar, 2021, 4:34:52 PM
    Author     : Dilip J Sarvaiya
--%>

<%@page import="DAO.UsersDAO"%>
<%@page import="Pojo.OrderDetails"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Messages</title>

        <link rel="stylesheet" href="css/linearicons.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/themify-icons.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/nice-select.css">
        <link rel="stylesheet" href="css/nouislider.min.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/main.css">



        <style>
            h3
            {
                color:#ff6c00;
            }
        </style>
    </head>
    <body>
        <header class="header_area sticky-header">
            <div class="main_menu">
                <nav class="navbar navbar-expand-lg navbar-light main_box">
                    <div class="container">

                        <a class="navbar-brand logo" href="index.jsp">Online Kirana Store</a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                        <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                            <ul class="nav navbar-nav menu_nav ml-auto">
                                <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                                <li class="nav-item active"><a class="nav-link" href="dashboard.jsp">Dashboard</a></li>
                                <li class="nav-item"><a class="nav-link" href="logout.jsp">Logout</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>

        </header>

        <div style="margin-top: 140px;" class="container">
            <%@include file="message.jsp" %>
        </div>
        <%            HttpSession httpSession = request.getSession();
            List<OrderDetails> messages = UsersDAO.viewAll_OrderDetails();
            int c = 0, s = 0;
            if (messages.isEmpty()) {
        %><h3 class="text-center mt-3">You have no messages</h3>
        <%
        } else {
            String user_type = (String) session.getAttribute("user_type");
            if (user_type.equals("Delivery boy")) {
                {
                    out.println("<h3 class='text-center mt-3'>Details</h3>");
                    out.println("<div class='container mt-5'>");
                    out.print("<table class=\"table table-hover\" width='100%'");
        %><a href="dashboard.jsp"><button style="margin-bottom: 10px;"  type="button" class="btn btn-light">Go to the Dashboard</button></a><%
                out.print("<thead><tr><th>S.no</th><th>Email</th><th>Subject</th><th>Messages</th><th>Action</th></tr></thead>");
                for (OrderDetails e : messages) {
                    if (e.getUserType().equals("Customer")) {
                        int sno = 0;
                        out.print("<tbody><tr><td>" + (sno + 1) + "</td><td>" + e.getEmail() + "</td><td>" + e.getSubject() + "</td>"
                                + "<td>" + e.getBody() + "</td><td><a href='delete_messages.jsp?id=" + e.getOrderDetailsId() + "'><button type='button' class='btn btn-danger'>Remove</button></a></td></tr></tbody>");
                        s++;
                    }
                }
                out.print("</table>");
                out.println("</div>");
            }
        } else {
            out.println("<h3 class='text-center mt-3'>Details</h3>");
            out.println("<div class='container mt-5'>");
            out.print("<table class=\"table table-hover\" width='100%'");
        %><a href="dashboard.jsp"><button style="margin-bottom: 10px;"  type="button" class="btn btn-light">Go to the Dashboard</button></a><%
            out.print("<thead><tr><th>S.no</th><th>Email</th><th>Subject</th><th>Messages</th><th>Action</th></tr></thead>");
            for (OrderDetails e : messages) {
                if (!e.getUserType().equals("Customer")) {
                    int sno = 0;
                    out.print("<tbody><tr><td>" + (sno + 1) + "</td><td>" + e.getEmail() + "</td><td>" + e.getSubject() + "</td>"
                            + "<td>" + e.getBody() + "</td><td><a href='delete_messages.jsp?id=" + e.getOrderDetailsId() + "'><button type='button' class='btn btn-danger'>Remove</button></a></td></tr></tbody>");
                    c++;
                }
            }
            if (c == 0) {
        %><h3 class="text-center mt-3">You have no messages</h3>
        <%
                    }
                    out.print("</table>");
                    out.println("</div>");
                }
            }
        %>

        <jsp:include page="footer.jsp"/>

        <script src="js/vendor/jquery-2.2.4.min.js"></script>
        <script src="../../../cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
                integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>
        <script src="js/vendor/bootstrap.min.js"></script>
        <script src="js/jquery.ajaxchimp.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/nouislider.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>

        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
        <script src="js/gmaps.min.js"></script>
        <script src="js/main.js"></script>
        <script src="js/script.js"></script>

        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());
            gtag('config', 'UA-23581568-13');
        </script>
    </body>
</html>