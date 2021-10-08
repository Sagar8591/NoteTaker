<%-- 
    Document   : add_note
    Created on : 07-Oct-2021, 8:13:06 PM
    Author     : Sagar Thorave
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Notes</title>
           <%@include file="component/alldocuments.jsp"%>
    </head>
    <body>
        <%@include file="component/navbar.jsp" %>
        


        <div class="container">
            <h5 class="text-center mt-3">Please fill your note details</h5>
            <form action="saveNoteServlet" method="post">
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Title</label>
                    <input name="atitle" required type="text"  placeholder="Enter title..." maxlength="100" class="form-control"  id="exampleInputEmail1" aria-describedby="emailHelp">

                </div>
                <div class="mb-3 " >
                    <label for="exampleInputPassword1" class="form-label">Content</label>
                    <textarea name="acontent" required  class="form-control materialize-textarea"  rows="10" placeholder="Enter content"></textarea>
                </div>
                <div class="text-center">
                                    <button type="submit" class="btn btn-success">Submit</button>

                </div>
            </form>
        </div>
    </body>
</html>
