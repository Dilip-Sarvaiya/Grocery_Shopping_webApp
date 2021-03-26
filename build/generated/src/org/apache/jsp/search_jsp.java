package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Util.HibernateUtil;
import org.hibernate.Hibernate;
import java.util.List;
import Pojo.Product;
import DAO.ProductDAO;
import Util.Helper;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import DAO.DBConnect_JDBC;

public final class search_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/message.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Online Kirana Store</title>\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/linearicons.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/font-awesome.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/themify-icons.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/owl.carousel.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/nice-select.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/nouislider.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/ion.rangeSlider.css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/ion.rangeSlider.skinFlat.css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/magnific-popup.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/main.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header class=\"header_area sticky-header\">\n");
      out.write("            <div class=\"main_menu\">\n");
      out.write("                <nav class=\"navbar navbar-expand-lg navbar-light main_box\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("\n");
      out.write("                        <a class=\"navbar-brand logo\" href=\"index.jsp\">Online Kirana Store</a>\n");
      out.write("                        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\"\n");
      out.write("                                aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                            <span class=\"icon-bar\"></span>\n");
      out.write("                            <span class=\"icon-bar\"></span>\n");
      out.write("                            <span class=\"icon-bar\"></span>\n");
      out.write("                        </button>\n");
      out.write("\n");
      out.write("                        <div class=\"collapse navbar-collapse offset\" id=\"navbarSupportedContent\">\n");
      out.write("                            <ul class=\"nav navbar-nav menu_nav ml-auto\">\n");
      out.write("                                <li class=\"nav-item active\"><a class=\"nav-link\" href=\"index.jsp\">Home</a></li>\n");
      out.write("\n");
      out.write("                                <li class=\"nav-item\"><a class=\"nav-link\" href=\"product.jsp\">Products</a></li>\n");
      out.write("                                <li class=\"nav-item\"><a class=\"nav-link\" href=\"dashboard.jsp\">Dashboard</a></li>\n");
      out.write("                                <li class=\"nav-item\"><a class=\"nav-link\" href=\"register.jsp\">Sign Up</a></li>\n");
      out.write("                                    ");
      out.write("\n");
      out.write("                                <li class=\"nav-item\"><a class=\"nav-link\" href=\"login.jsp\">Login</a></li>\n");
      out.write("                                <li class=\"nav-item\"><a class=\"nav-link\" href=\"contact.jsp\">Contact</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                            <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                                <li class=\"nav-item\"><a href=\"mycart.jsp\" class=\"cart\"><span class=\"lnr lnr-cart\"></span></a></li>\n");
      out.write("                                <li class=\"nav-item\">\n");
      out.write("                                    <button class=\"search\"><span class=\"lnr lnr-magnifier\" id=\"search\"></span></button>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </nav>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"search_input\" id=\"search_input_box\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <form action=\"search.jsp\" class=\"d-flex justify-content-between\">\n");
      out.write("                        <input type=\"text\" class=\"form-control\" id=\"search_input\" placeholder=\"Search by product, category or shop name\" name=\"search\">\n");
      out.write("                        <button type=\"submit\" class=\"btn\"></button>\n");
      out.write("                        <span class=\"lnr lnr-cross\" id=\"close_search\" title=\"Close Search\"></span>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("        <div style=\"margin-top: 200px\">\n");
      out.write("            <div class=\"single-product-slider\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<style>\r\n");
      out.write("    .alert\r\n");
      out.write("    {\r\n");
      out.write("        font-size: 16px;\r\n");
      out.write("    }\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");

    String message = (String) session.getAttribute("message");
    String message_invalid = (String) session.getAttribute("message_invalid");
    String cat_add_msg = (String) session.getAttribute("cat_add_msg");
    String shop_add_msg = (String) session.getAttribute("shop_add_msg");
    String product_add_msg = (String) session.getAttribute("product_add_msg");
    String logout_msg = (String) session.getAttribute("logout_msg");
    String not_login_checkout = (String) session.getAttribute("not_login_checkout");
    if (message != null) {

      out.write("\r\n");
      out.write("<div class=\"alert alert-success alert-dismissible fade show\">\r\n");
      out.write("    <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("    <strong>");
      out.print(message);
      out.write("</strong>\r\n");
      out.write("</div>\r\n");

        session.removeAttribute("message");
    }
 if (not_login_checkout != null) {

      out.write("\r\n");
      out.write("<div class=\"alert alert-danger alert-dismissible fade show\">\r\n");
      out.write("    <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("    <strong>");
      out.print(not_login_checkout);
      out.write("</strong>\r\n");
      out.write("</div>\r\n");

        session.removeAttribute("not_login_checkout");
    }
    if (message_invalid != null) {


      out.write("\r\n");
      out.write("<div class=\"alert alert-danger alert-dismissible fade show\">\r\n");
      out.write("    <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("    <strong>");
      out.print(message_invalid);
      out.write("</strong>\r\n");
      out.write("</div>\r\n");

        session.removeAttribute("message_invalid");
    }
    if (cat_add_msg != null) {


      out.write("\r\n");
      out.write("<div class=\"alert alert-success alert-dismissible fade show\">\r\n");
      out.write("    <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("    <strong>");
      out.print(cat_add_msg);
      out.write("</strong>\r\n");
      out.write("</div>\r\n");
      out.write("    ");

            session.removeAttribute("cat_add_msg");
        }
        if (shop_add_msg != null) {

    
      out.write("\r\n");
      out.write("    <div class=\"alert alert-success alert-dismissible fade show\">\r\n");
      out.write("        <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("        <strong>");
      out.print(shop_add_msg);
      out.write("</strong>\r\n");
      out.write("    </div>\r\n");
      out.write("        ");

                session.removeAttribute("shop_add_msg");
            }
            if (product_add_msg != null) {

        
      out.write("\r\n");
      out.write("        <div class=\"alert alert-success alert-dismissible fade show\">\r\n");
      out.write("            <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("            <strong>");
      out.print(product_add_msg);
      out.write("</strong>\r\n");
      out.write("        </div>\r\n");
      out.write("            ");

                    session.removeAttribute("product_add_msg");
                }
                if (logout_msg != null) {

            
      out.write("\r\n");
      out.write("            <div class=\"alert alert-success alert-dismissible fade show\">\r\n");
      out.write("                <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\r\n");
      out.write("                <strong>");
      out.print(logout_msg);
      out.write("</strong>\r\n");
      out.write("            </div>\r\n");
      out.write("            ");

                    session.removeAttribute("logout_msg");
                }
            
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\n");
      out.write("                    <div class=\"row justify-content-center\">\n");
      out.write("                        <div class=\"col-lg-6 text-center\">\n");
      out.write("                            <div class=\"section-title\">\n");
      out.write("                                ");
                                    int z = 0;
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
                                
      out.write("\n");
      out.write("                                <p>Results for ");
      out.print(s);
      out.write("</p>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("\n");
      out.write("                        ");

                            while (rs.next()) {
                                z = 1;
                        
      out.write("\n");
      out.write("                        <div class=\"col-lg-3 col-md-6\">\n");
      out.write("                            <div class=\"single-product\">\n");
      out.write("                                <img class=\"img-fluid\" style=\"max-height:240px; max-width: 100%; width:auto\"  src=\"img/product/");
      out.print(rs.getString(4));
      out.write("\" alt=\"\">\n");
      out.write("                                <div class=\"product-details\">\n");
      out.write("                                    <h6>");
      out.print(rs.getString(2)+ " : "+rs.getString(6));
      out.write("</h6>\n");
      out.write("                                    <div class=\"price\">\n");
      out.write("                                        <h6>&#8377; ");
      out.print(Helper.getPriceAfterApplyingDiscount(rs.getInt(5), rs.getInt(6)));
      out.write("/-</h6>\n");
      out.write("                                        <h6 class=\"l-through\">&#8377;");
      out.print(rs.getInt(5));
      out.write("</h6>\n");
      out.write("                                    </div>\n");
      out.write("                                        <br>\n");
      out.write("                                        <div class=\"typography desc\">\n");
      out.write("                                            <h6>");
      out.print(Helper.get10words(rs.getString(3)));
      out.write("</h6>\n");
      out.write("                                        </div>\n");
      out.write("                                    <div class=\"prd-bottom\">\n");
      out.write("                                        <a href=\"addtocardAction.jsp?id=");
      out.print(rs.getInt(1));
      out.write(" \"class=\"social-info\">\n");
      out.write("                                            <span class=\"lnr lnr-cart\"></span>\n");
      out.write("                                            <p class=\"hover-text\">add to cart</p>\n");
      out.write("                                        </a>\n");
      out.write("                                        <a href=\"#\" class=\"social-info\">\n");
      out.write("                                            <span class=\"lnr lnr-heart\"></span>\n");
      out.write("                                            <p class=\"hover-text\">Wishlist</p>\n");
      out.write("                                        </a>\n");
      out.write("                                        <a href=\"#\" class=\"social-info\">\n");
      out.write("                                            <span class=\"lnr lnr-sync\"></span>\n");
      out.write("                                            <p class=\"hover-text\">compare</p>\n");
      out.write("                                        </a>\n");
      out.write("                                        <a href=\"#\" class=\"social-info\">\n");
      out.write("                                            <span class=\"lnr lnr-move\"></span>\n");
      out.write("                                            <p class=\"hover-text\">view more</p>\n");
      out.write("                                        </a>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        ");

                                }
                            } catch (Exception e) {
                                out.println(e.getMessage());
                            }
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>                    \n");
      out.write("        ");

                if (z == 0) {
      out.write("\n");
      out.write("        <h1 class=\"text-secondary\" style=\"margin-left: 40px;\">Nothing to show</h1>\n");
      out.write("        ");
}
        
      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("        <script src=\"js/vendor/jquery-2.2.4.min.js\"></script>\n");
      out.write("        <script src=\"../../../cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js\"\n");
      out.write("                integrity=\"sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4\"\n");
      out.write("        crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"js/vendor/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.ajaxchimp.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.nice-select.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.sticky.js\"></script>\n");
      out.write("        <script src=\"js/nouislider.min.js\"></script>\n");
      out.write("        <script src=\"js/countdown.js\"></script>\n");
      out.write("        <script src=\"js/jquery.magnific-popup.min.js\"></script>\n");
      out.write("        <script src=\"js/owl.carousel.min.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE\"></script>\n");
      out.write("        <script src=\"js/gmaps.min.js\"></script>\n");
      out.write("        <script src=\"js/main.js\"></script>\n");
      out.write("\n");
      out.write("        <script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-23581568-13\"></script>\n");
      out.write("        <script>\n");
      out.write("            window.dataLayer = window.dataLayer || [];\n");
      out.write("            function gtag() {\n");
      out.write("                dataLayer.push(arguments);\n");
      out.write("            }\n");
      out.write("            gtag('js', new Date());\n");
      out.write("            gtag('config', 'UA-23581568-13');\n");
      out.write("        </script>\n");
      out.write("        <script defer src=\"../../../static.cloudflareinsights.com/beacon.min.js\"\n");
      out.write("        data-cf-beacon='{\"version\":\"2021.2.0\",\"si\":10,\"rayId\":\"62fb204e0dc00fce\"}'></script>\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
