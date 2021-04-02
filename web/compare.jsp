<%-- 
    Document   : compare
    Created on : 1 Apr, 2021, 9:17:48 PM
    Author     : Dilip J Sarvaiya
--%>

<%@page import="Pojo.Shop"%>
<%@page import="DAO.ShopDAO"%>
<%@page import="DAO.ProductDAO"%>
<%@page import="Pojo.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Compare products</title>
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
        <style>
            .card{
                border: 2px solid #ccc; border-radius: 3px; padding: 10px;
            }
        </style>
    </head>
    <body>
        <%
            HttpSession httpSession = request.getSession();
            httpSession.removeAttribute("s");
            String email = (String) session.getAttribute("login_or_not");
            if (email != null) {
        %>
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
                                <li class="nav-item"><a class="nav-link" href="Myorder.jsp">My orders</a></li>
                                    <%--<%=login_link%>--%>
                                <li class="nav-item"><a class="nav-link" href="logout.jsp">Logout</a></li>
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
                    <form  action="search.jsp" class="d-flex justify-content-between">
                        <input type="text" class="form-control" id="search_input" placeholder="Search by product, category or shop name" name="search">
                        <button type="submit" class="btn"></button>
                        <span class="lnr lnr-cross" id="close_search" title="Close Search"></span>
                    </form>
                </div>
            </div>
        </header>

        <%} else {%>
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
                                <li class="nav-item active"><a class="nav-link" href="product.jsp">Products</a></li>
                                <li class="nav-item"><a class="nav-link" href="dashboard.jsp">Dashboard</a></li>
                                <li class="nav-item"><a class="nav-link" href="register.jsp">Sign Up</a></li>
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
        <%}%>
        <section class="banner-area organic-breadcrumb">
            <div class="container">
                <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                    <div class="col-first">
                        <h1>Compare products</h1>
                        <nav class="d-flex align-items-center">
                            
                            <a href="dashboard.jsp">Home<span class="lnr lnr-arrow-right"></span></a>
                            <a href="product.jsp">Products</a>
                        </nav>
                    </div>
                </div>
            </div>
            <div style="margin-top: 20px;margin-right: 20px;display:none;"  id="btn_compare" >
                <form action="compare.jsp" method="post">
                    <input type="hidden" value="" id="card_one" name="card_one"/>
                    <input type="hidden" value="" id="card_two" name="card_two"/>
                    <input type="submit" value="Compare Product" class="btn btn-success" style="float:right;"/>
                </form>
            </div> 
        </section>
        <%
            String card_one = request.getParameter("card_one");
            String card_two = request.getParameter("card_two");
            try {
                Product p = ProductDAO.viewSingle_by_Product_id(Long.parseLong(card_one));
                Product p1 = ProductDAO.viewSingle_by_Product_id(Long.parseLong(card_two));
                Shop sh = ShopDAO.viewSingle_by_shop_id(p.getShopId());
                Shop sh1 = ShopDAO.viewSingle_by_shop_id(p1.getShopId());

        %>
        
        <div class="container">
            <div class="row" style="margin-top: 20px;">
            <div class="col-sm-12"  style="margin-bottom: 10px;">
                <button class="btn btn-info"><a href="product.jsp"><i style="color:white;" class="fa fa-arrow-left"></i><a/> Back</button>
                </div>
            </div>
            <div class="row" style="margin-top: 40px;">
                
                <div class="col-sm-6"  style="margin-bottom: 30px; padding: 5px;">
                    <div class="card">
                        <h3  style="background: #ccc;text-align: center; width: 100%; padding: 10px;">Product One</h3>
                        <h4>(1) <%=p.getPname()%></h4>
                        <p><b>Price:</b> <i class="fa fa-inr"></i><%=p.getPprice()%></p>
                        <p style="text-align: center;"><b>Image:</b><img src="img/product/<%=p.getPphoto()%>" style="max-height:120px; max-width: 100%; width:auto"  class="card-img-top m-2" alt=".."></p>
                        <p><b>Discount:</b> <%=p.getPdiscount()%>%</p>
                        <p><b>Shop: </b> <%=sh.getShopName()%></p>
                        <p><b>Stock per quantity: </b> <%=p.getPunit()%></p>
                        <p style="text-align: justify;"><b>Description </b><%=p.getPdesc()%></p>
                    </div>
                </div>
                <div class="col-sm-6" style="margin-bottom: 30px; padding: 5px;">
                    <div class="card">
                        <h3 style="text-align: center; background: #ccc; width: 100%; padding: 10px;">Product Two</h3>
                        <h4>(2) <%=p1.getPname()%></h4>
                        <p><b>Price: </b><i class="fa fa-inr"></i><%=p1.getPprice()%></p>
                        <p style="text-align: center;"><b>Image: </b><img src="img/product/<%=p1.getPphoto()%>" style=" max-height:120px; max-width: 100%; width:auto"  class="card-img-top m-2" alt=".."></p>
                        <p><b>Discount:</b> <%=p.getPdiscount()%>%</p>
                        <p><b>Shop: </b> <%=sh1.getShopName()%></p>
                        <p><b>Stock per quantity: </b> <%=p.getPunit()%></p>
                        <p style="text-align: justify;"><b>Description </b><%=p1.getPdesc()%></p>
                    </div>
                </div>	

            </div>
        </div>
        <% } catch (Exception e) {
                httpSession.setAttribute("not_login_checkout", "Select the products for comparison");
                response.sendRedirect("product.jsp");
    }%>

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
