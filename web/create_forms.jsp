<%-- 
    Document   : create_forms
    Created on : 03 19, 18, 12:37:43 PM
    Author     : BavarianHotdog
--%>
<%@page import="dao.Po"%>
<%@page import="dao.Pr"%>
<%@page import="dao.FormRepo"%>
<%@page import="java.util.ArrayList"%>
<%ArrayList<FormRepo> forms = (ArrayList<FormRepo>)request.getAttribute("forms");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
      <jsp:include page="WEB-INF/header.jsp" />       
            <title>DAR-AMIS | Create Forms</title>
  </head>

  <body>
     <section id="container">
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header start-->
      <!--header end-->
      
      
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
        <jsp:include page="WEB-INF/sidebarcheck.jsp" />
      <!--sidebar end-->
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
              <section class="content-header">
                    <h1>
                        Department of Agrarian Reform 
                        <small>- Create Forms</small>
                        <h4 class="text-right text-bold"><div name="curDate">00:00:00</div></h4> 
                        <h4 class="text-right text-bold"><div name="curTime">00:00:00</div></h4>             
                    </h1>
                   <div class="btn-group">
						    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
						      Create New Form
						      <span class="caret"></span>
						    </button>
						    <ul class="dropdown-menu">
                          <li><a href="/DAR-AMIS/PRPage">Purchase Request</a></li>
                          <li><a href="/DAR-AMIS/CreatePOSelectFormsPR">Purchase Order</a></li>
                          <li><a href="/DAR-AMIS/PARPage">Property Acknowledgement Receipt</a></li>
                          <li><a href="rfi.jsp">Request For Inspection</a></li>
                          <li><a href="aif.jsp">Assignment of Inspector Form</a></li>
                          <li><a href="ics.jsp">Inventory Custodian Slip</a></li>
                          <li><a href="/DAR-AMIS/RISPage">Requisition and Issuance Slip</a></li>
                          <li><a href="sc.jsp">Stock Card</a></li>
						    </ul>
						    </ul>
						  </div>
                </section>
              
                <section class="content-panel">
                    <table class="table table-striped table-responsive">
                        <thead>
                            <tr>
                                <td>ID</td>
                                <td>Entity Name</td>
                                <td>Office</td>
                                <td>Form Type</td>
                                <td>Date</td>
                                <td>Approval Status</td>
                            </tr>
                        </thead>
                        <tbody>
                            <%for(FormRepo form: forms){%>
                                <%if(form.getIdPr() != null){%>
                                <%Pr pr = form.getIdPr();%>
                                    <tr>
                                        <td><%=pr.getIdPr()%></td>
                                        <td><%=pr.getEntityName()%></td>
                                        <td><%=pr.getIdOffice().getDepartment()%></td>
                                        <td>Purchase Request</td>
                                        <td><%=form.getDateCreated()%></td>
                                        <%if(form.getApproveDate() != null){%>
                                            <td>Approved</td>
                                        <%}else if(form.getDenyDate() != null){%>
                                            <td>Denied</td>
                                        <%}else{%>
                                            <td>Pending</td>
                                        <%}%>
                                    </tr>
                                <%}else if(form.getIdPo() != null){%>
                                <%Po po = form.getIdPo();%>
                                    <tr>
                                        <td><%=po.getIdPo()%></td>
                                        <td><%=po.getIdPr().getEntityName()%></td>
                                        <td><%=po.getIdPr().getIdOffice().getDepartment()%></td>
                                        <td>Purchase Order</td>
                                        <td><%=form.getDateCreated()%></td>
                                        <%if(form.getApproveDate() != null){%>
                                            <td>Approved</td>
                                        <%}else if(form.getDenyDate() != null){%>
                                            <td>Denied</td>
                                        <%}else{%>
                                            <td>Pending</td>
                                        <%}%>
                                    </tr>
                                <%}%>
                            <%}%>
                        </tbody>
                    </table>
                </section>
          </section>
      <!--main content end-->
      <!--footer start-->
      <jsp:include page="WEB-INF/copyright.jsp" /> 
      <!--footer end-->
  </section>
      <jsp:include page="WEB-INF/footer.jsp" />
  </body>
</html>
