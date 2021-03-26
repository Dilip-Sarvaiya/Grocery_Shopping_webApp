package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Pojo.Category;
import Pojo.Cart;
import Pojo.DeliveryBoy;
import java.util.List;
import javax.servlet.http.HttpSession;
import java.sql.*;
import java.sql.Connection;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import DAO.*;
import javax.servlet.http.HttpSession;

public final class Myorder_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

    HttpSession httpSession = request.getSession();
    String email = (String) session.getAttribute("login_or_not");
    String db_charge = (String) session.getAttribute("db_charge");
    String d_boy = (String) session.getAttribute("d_boy");
    if (email != null) {

      out.write("\r\n");
      out.write("<div style=\"margin-top: 140px;\" class=\"container\">\r\n");
      out.write("    <div class=\"row\">\r\n");
      out.write("        <div class=\"col-md-12 col-sm-8\">\r\n");
      out.write("            <h4 class=\"text-white\">Welcome  <strong>");
      out.print(email);
      out.write("</strong></h4>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");

} else {

      out.write('\r');
      out.write('\n');

        httpSession.setAttribute("not_login_checkout", "You are not logged in!! ");
        response.sendRedirect("login.jsp");
    }

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/linearicons.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/font-awesome.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/themify-icons.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/owl.carousel.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/nice-select.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/nouislider.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/ion.rangeSlider.css\" />\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/ion.rangeSlider.skinFlat.css\" />\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/magnific-popup.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/main.css\">\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Order Page</title>\r\n");
      out.write("        <style>\r\n");
      out.write("            h3\r\n");
      out.write("            {\r\n");
      out.write("                color: #ff6c00;\r\n");
      out.write("                text-align: center;\r\n");
      out.write("            }\r\n");
      out.write("        </style>\r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "dashboardNavbar/customer_nav.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <div style=\"padding-top: 10px;\" class=\"container-fluid\">\r\n");
      out.write("\r\n");
      out.write("        ");
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
      out.write("\r\n");
      out.write("        <table class=\"table table-hover\" width='100%'>\r\n");
      out.write("            <h3 class=\"text-center\">My Orders<i class=\"fa fa-cart-plus\"></i></h3>  \r\n");
      out.write("            <thead>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <th>S.no</th>\r\n");
      out.write("                    <th>Product Name</th>\r\n");
      out.write("                    <th>Product Image</th>\r\n");
      out.write("                    <th>Price </th>\r\n");
      out.write("                    <th>Quantity</th>\r\n");
      out.write("                    <th>Discount</th>\r\n");
      out.write("                    <th>Sub total</th>\r\n");
      out.write("                    <th>Delivery boy charge</th>\r\n");
      out.write("                    <th>Delivery boy name</th>\r\n");
      out.write("                    <th>Delivery boy email</th>\r\n");
      out.write("                    <th>Delivery boy phone</th>\r\n");
      out.write("                    <th>Order date</th>\r\n");
      out.write("                    <th>Expected Delivery date</th>\r\n");
      out.write("                    <th>Payment Method</th>\r\n");
      out.write("                    <th>Status</th>\r\n");
      out.write("                    <th>Action</th>\r\n");
      out.write("                </tr>\r\n");
      out.write("            </thead>\r\n");
      out.write("            ");
                    int sno = 0;
                try {
                    Connection conn = DBConnect_JDBC.getConnection();
                    Statement st = conn.createStatement();
                    
                    ResultSet rs1 = st.executeQuery("select * from cart inner join product where cart.p_id=product.pid and cart.email='" + email + "' and cart.orderDateTime is not NULL");
                    while (rs1.next()) {
                        DeliveryBoy db = DeliveryboyDAO.viewSingle_by_name(d_boy);
                        sno = sno + 1;
            
      out.write("\r\n");
      out.write("            <tbody>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td>");
out.println(sno);
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.print(rs1.getString(19));
      out.write("</td>\r\n");
      out.write("                    <td><img src=\"img/product/");
      out.print(rs1.getString(21));
      out.write("\" style=\"max-height:500px; max-width: 100%; width:auto\"  class=\"card-img-top m-2\" alt=\"..\"></td>\r\n");
      out.write("                    <td><i class=\"fa fa-inr\"></i>");
      out.print(rs1.getString(5));
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.print(rs1.getString(4));
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.print(rs1.getLong(23));
      out.write("%</td>\r\n");
      out.write("                    <td><i class=\"fa fa-inr\"></i>");
out.println(rs1.getString(6));
      out.write("</td>\r\n");
      out.write("                    <td><i class=\"fa fa-inr\"></i>");
out.println(Integer.parseInt(db_charge));
      out.write("</td>\r\n");
      out.write("                    ");

                        DeliveryBoy db1 = DeliveryboyDAO.viewSingle(rs1.getString(17));
                    
      out.write("\r\n");
      out.write("                    <td>");
      out.print(db1.getDbName());
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.print(rs1.getString(17));
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("                    <td>");
      out.print(db1.getDbPhone());
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.print(rs1.getString(15));
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.print(rs1.getString(16));
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.print(rs1.getString(12));
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.print(rs1.getString(14));
      out.write("</td>\r\n");
      out.write("                    <td><a href=\"delete_myorder.jsp?id=");
      out.print(rs1.getString(1));
      out.write("\"><button type=\"button\" class=\"btn btn-danger\">Remove</button></a></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("            </tbody>\r\n");
      out.write("            ");

                    }
                } catch (Exception ex) {
                    out.println(ex.getMessage());
                }
            
      out.write("\r\n");
      out.write("\r\n");
      out.write("        </table>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("    <script src=\"js/vendor/jquery-2.2.4.min.js\"></script>\r\n");
      out.write("    <script src=\"../../../cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js\"\r\n");
      out.write("            integrity=\"sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4\"\r\n");
      out.write("    crossorigin=\"anonymous\"></script>\r\n");
      out.write("    <script src=\"js/vendor/bootstrap.min.js\"></script>\r\n");
      out.write("    <script src=\"js/jquery.ajaxchimp.min.js\"></script>\r\n");
      out.write("    <script src=\"js/jquery.nice-select.min.js\"></script>\r\n");
      out.write("    <script src=\"js/jquery.sticky.js\"></script>\r\n");
      out.write("    <script src=\"js/nouislider.min.js\"></script>\r\n");
      out.write("    <script src=\"js/countdown.js\"></script>\r\n");
      out.write("    <script src=\"js/jquery.magnific-popup.min.js\"></script>\r\n");
      out.write("    <script src=\"js/owl.carousel.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    <script src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE\"></script>\r\n");
      out.write("    <script src=\"js/gmaps.min.js\"></script>\r\n");
      out.write("    <script src=\"js/main.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    <script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-23581568-13\"></script>\r\n");
      out.write("    <script>\r\n");
      out.write("        window.dataLayer = window.dataLayer || [];\r\n");
      out.write("        function gtag() {\r\n");
      out.write("            dataLayer.push(arguments);\r\n");
      out.write("        }\r\n");
      out.write("        gtag('js', new Date());\r\n");
      out.write("        gtag('config', 'UA-23581568-13');\r\n");
      out.write("    </script>\r\n");
      out.write("    <script defer src=\"../../../static.cloudflareinsights.com/beacon.min.js\"\r\n");
      out.write("    data-cf-beacon='{\"version\":\"2021.2.0\",\"si\":10,\"rayId\":\"62fb204e0dc00fce\"}'></script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
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
