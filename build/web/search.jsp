<%-- 
    Document   : search
    Created on : 9 Mar, 2021, 5:27:22 PM
    Author     : Makwana Divya
--%>

<%@page import="Util.HibernateUtil"%>
<%@page import="org.hibernate.Hibernate"%>
<%@page import="java.util.List"%>
<%@page import="Pojo.Product"%>
<%@page import="DAO.ProductDAO"%>
<%@page import="Util.Helper"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DAO.DBConnect_JDBC"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Online Kirana Store</title>

        <link rel="stylesheet" href="css/linearicons.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/themify-icons.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/nice-select.css">
        <link rel="stylesheet" href="css/nouislider.min.css">
        <link rel="stylesheet" href="css/ion.rangeSlider.css" />
        <link rel="stylesheet" href="css/ion.rangeSlider.skinFlat.css" />
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/main.css">
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
                                <li class="nav-item active"><a class="nav-link" href="index.jsp">Home</a></li>

                                <li class="nav-item"><a class="nav-link" href="product.jsp">Products</a></li>
                                <li class="nav-item"><a class="nav-link" href="dashboard.jsp">Dashboard</a></li>
                                <li class="nav-item"><a class="nav-link" href="register.jsp">Sign Up</a></li>
                                    <%--<%=login_link%>--%>
                                <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
                                <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                                <li class="nav-item"><a href="mycart.jsp" class="cart"><span class="lnr lnr-cart"></span></a></li>
                                <li class="nav-item">
                                    <button class="search"><span class="lnr lnr-magnifier" id="search"></span></button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
            <div class="search_input" id="search_input_box">
                <div class="container">
                    <form action="search.jsp" class="d-flex justify-content-between">
                        <input type="text" class="form-control" id="search_input" placeholder="Search by product, category or shop name" name="search">
                        <button type="submit" class="btn"></button>
                        <span class="lnr lnr-cross" id="close_search" title="Close Search"></span>
                    </form>
                </div>
            </div>
        </header>
        <div style="margin-top: 200px">
            <div class="single-product-slider">
                <div class="container">
                    <%@ include file="message.jsp" %>
                    <div class="row justify-content-center">
                        <div class="col-lg-6 text-center">
                            <div class="section-title">
                                <%                                    int z = 0;
                                    try {
                                        String s = request.getParameter("search");
                                        HttpSession httpSession = request.getSession();
                                        httpSession.setAttribute("s", s);
                                        Connection conn = DBConnect_JDBC.getConnection();
                                        PreparedStatement ps = conn.prepareStatement("(SELECT pid,pname,pdesc,pphoto,pprice,pdiscount,punit from product where pname LIKE '%" + s + "%') "
                                                + "UNION(SELECT pid,pname,pdesc,pphoto,pprice,pdiscount,punit from product,category where categoryTitle LIKE '%" + s + "%' and product.categoryId = category.categoryId)"
                                                + "UNION(SELECT pid,pname,pdesc,pphoto,pprice,pdiscount,punit from product,shop where shop_name LIKE '%" + s + "%' and product.shop_id=shop.shop_id)");
                                        ResultSet rs = ps.executeQuery();
                                        // or category like '%"+search+"%'
                                %>
                                <p>Results for <%=s%></p>
                            </div>
                        </div>
                    </div>
                    <div class="row">

                        <%
                            while (rs.next()) {
                                z = 1;
                        %>
                        <div class="col-lg-3 col-md-6">
                            <div class="single-product">
                                <img class="img-fluid" style="max-height:240px; max-width: 100%; width:auto"  src="img/product/<%=rs.getString(4)%>" alt="">
                                <div class="product-details">
                                    <h6><%=rs.getString(2)+ " : "+rs.getString(7)%></h6>
                                    <div class="price">
                                        <h6>&#8377; <%=Helper.getPriceAfterApplyingDiscount(rs.getInt(5), rs.getInt(6))%>/-</h6>
                                        <h6 class="l-through">&#8377;<%=rs.getInt(5)%></h6>
                                    </div>
                                        <br>
                                        <div class="typography desc">
                                            <h6><%=Helper.get10words(rs.getString(3))%></h6>
                                        </div>
                                    <div class="prd-bottom">
                                        <a href="addtocardAction.jsp?id=<%=rs.getInt(1)%> "class="social-info">
                                            <span class="lnr lnr-cart"></span>
                                            <p class="hover-text">add to cart</p>
                                        </a>
                                        <a href="#" class="social-info">
                                            <span class="lnr lnr-heart"></span>
                                            <p class="hover-text">Wishlist</p>
                                        </a>
                                        <a href="#" class="social-info">
                                            <span class="lnr lnr-sync"></span>
                                            <p class="hover-text">compare</p>
                                        </a>
                                        <a href="#" class="social-info">
                                            <span class="lnr lnr-move"></span>
                                            <p class="hover-text">view more</p>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%
                                }
                            } catch (Exception e) {
                                out.println(e.getMessage());
                            }%>
                    </div>
                </div>
            </div>
        </div>                    
        <%
                if (z == 0) {%>
        <h1 class="text-secondary" style="margin-left: 40px;">Nothing to show</h1>
        <%}
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
        <script src="js/countdown.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>

        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
        <script src="js/gmaps.min.js"></script>
        <script src="js/main.js"></script>

        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());
            gtag('config', 'UA-23581568-13');
        </script>
        <script defer src="../../../static.cloudflareinsights.com/beacon.min.js"
        data-cf-beacon='{"version":"2021.2.0","si":10,"rayId":"62fb204e0dc00fce"}'></script>
    </body>
</html>