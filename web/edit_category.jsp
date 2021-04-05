<%-- 
    Document   : register
    Created on : 13 Feb, 2021, 6:48:17 PM
    Author     : Dilip J Sarvaiya
--%>

<%@page import="DAO.ShopDAO"%>
<%@page import="Pojo.Shop"%>
<%@page import="Pojo.Category"%>
<%@page import="DAO.CategoryDAO"%>
<%@page import="Pojo.Product"%>
<%@page import="DAO.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
        <link rel="stylesheet" href="css_js_files/style.css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Edit Category</title>
        <style>
            .col-md-12{
                text-align: left;
            }
        </style>
    </head>
    <body>
        <%
            String id = request.getParameter("id");
            Category pr = CategoryDAO.viewSingle_by_Category_id(Long.parseLong(id));
        %>
        <jsp:include page="dashboardNavbar/shopkeeper_nav.jsp"/>

        <section class="banner-area organic-breadcrumb">
            <div class="container">
                <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                    <div class="col-first">
                        <h1>Edit products</h1>
                        <nav class="d-flex align-items-center">
                            <a href="index.jsp">Home<span class="lnr lnr-arrow-right"></span></a>
                            <a href="shop_vise_products.jsp">My Products</a>
                        </nav>
                    </div>
                </div>
            </div>
        </section>


        <section class="login_box_area section_gap">
            <div class="container">
                <div class="row" style="justify-content: center;"> 
                    <div class="col-lg-6">
                        <div class="login_form_inner">
                            <h3>Edit Category</h3>
                            <%
                                HttpSession httpSession=request.getSession();
                                httpSession.setAttribute("all_shop",request.getParameter("all_shop"));
                                %>
                            <form class="row login_form" action="ProductOperationsjsp.jsp" method="post" id="reg_form" class="form-horizontal" role="form">
                                <%@include file="message.jsp" %>
                                <input type="hidden" name="operation" value="edit_category"  />
                                <input type="hidden" name="category_id" value="<%=id%>"  />
                                
                                <div class="col-md-12 form-group">
                                    <label for="pname" class="control-label">Category name<span style="color: red;">*</span></label>
                                    <input type="text" value="<%=pr.getCategoryTitle() %>" name="category_name" placeholder="Enter category name" class="form-control" required />
                                    <p id="p1"></p>
                                </div>

                                <div class="col-md-12 form-group">
                                    <label for="pdesc" class="control-label">Category description<span style="color: red;">*</span></label>
                                    <input ype="text" value="<%=pr.getCategoryDescription()%>" name="category_description" placeholder="Enter category description" class="form-control" required/>
                                    <p id="p2"></p>
                                </div>

                                <button style="margin-bottom: 20px;"id="btn" type="submit" class="btn btn-success btn-block">Submit</button>

                            </form> <!-- /form --> </div>    
                    </div>     
                </div> 
            </div>
        </section>
    </div> <!-- ./container -->

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

