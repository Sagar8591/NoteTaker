<%-- 
    Document   : index
    Created on : 07-Oct-2021, 5:06:32 PM
    Author     : Sagar Thorave
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->

        <title>Index_page</title>
        <%@include file="component/alldocuments.jsp"%>
    </head>
    <body class="team">
        <%@include file="component/navbar.jsp" %>
        <div class="container">
            <div class="card mt-3">
               
                    <img src="component/icon/icnote.png" class="img-fluid mx-auto mt-3 mb-2" width="400px" height="height" alt="alt"/>
                    <h1 class="text-primary text-uppercase text-center mt-3 mb-2">Start takeing your notes</h1>   
                    <a href="add_note.jsp" <button class="btn btn-primary mt-5 text-center mb-5"> Start here</button></a>
            </div>
        </div>
    </body>
</html>