<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello World</title>
    
 <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
<%@include file="all_css.jsp" %>
    
    </head>
<body>
    <div class="container">
    <%@include file="navbar.jsp" %>
    <h2>This is the Home page</h2>
    <br>
    
    <div clas="card py-5">
    
    <div class="container text-center">
    <img alt="" class="img-fluid" style="max=width:400px;" src="img/notes.png">
    <h1 class="text-primary text-uppercase text-center mt-3"> Start to write your Notes</h1>
    <button class="btn btn-outline-primary text-center">Start here</button>
    
    </div>
    
    </div>
    </div>
    
    <%@include file="all_js.jsp" %>
</body>
</html>




