<%-- 
    Document   : editpage
    Created on : 08-Oct-2021, 10:45:26 AM
    Author     : Sagar Thorave
--%>

<%@page import="org.hibernate.Session"%>
<%@page import="com.entity.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="component/alldocuments.jsp" %>
    </head>
    <body>
        <div class="container">
            <%@include file="component/navbar.jsp" %>
            <%
                int id = Integer.parseInt(request.getParameter("note_id").trim());

                Session s = FactoryProvider.getFactory().openSession();
                Note note = (Note) s.get(Note.class, id);

            %>
            <h5 class="text-center mt-3">Update your note details</h5>
            <form action="UpdateServlet" method="post">
                <input type="hidden" name="idb"  readonly value="<%=id%>" style="border: white">
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Title</label>
                    <input name="Utitle" required type="text"  placeholder="Enter title..." maxlength="100" class="form-control"  id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=note.getTitle()%>">

                </div>
                <div class="mb-3 " >
                    <label for="exampleInputPassword1" class="form-label">Content</label>
                    <textarea name="Ucontent" required  class="form-control materialize-textarea"  rows="10" placeholder="Enter content" ><%=note.getContent()%></textarea>
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-success">Save Update</button>

                </div>
            </form>
        </div>


    </body>
</html>
