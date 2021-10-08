<%-- 
    Document   : show_all_notes
    Created on : 08-Oct-2021, 7:56:08 AM
    Author     : Sagar Thorave
--%>

<%@page import="com.entity.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="component/alldocuments.jsp"%>
    </head>
    <body>
        <%@include file="component/navbar.jsp" %>
        <div class="container">
            <br>
            <h1 class="text-center">All Notes</h1>

             <%
                        Session sess = FactoryProvider.getFactory().openSession();
                        Query q = sess.createQuery("from Note");
                        List<Note> list = q.list();
                        for (Note note : list) {

                    %>
            <div class="row">
                <div class="col-12">

                   
                    <div class="card mt-3 px-3 rounded " >
                        <img class="card-img-top m-4 mx-auto" style="max-width: 100px; max-height:100px;" src="component/icon/icnote.png" alt="Card image cap">
                        <div class="card-body" >
                            <h5 class="card-title"><%=note.getTitle()%></h5>
                            <p class="card-text"><%=note.getContent()%></p>
                            <p class="card-text"><b class="text-primary"><%=note.getAddedDate()%></b></p>
                            <a href="editpage.jsp?note_id=<%=note.getnId()%>" class="btn btn-primary">Update</a>
                            &nbsp;
                            <a href="deleteServlet?note_id=<%=note.getnId()%>" class="btn btn-danger">Delete</a>
                            
                        </div>
                    </div>
                    <div>
                    </div>

                </div>


                <%
                    }

                    sess.close();

                %>
            </div>
    </body>
</html>
