<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add note</title>
    
 <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
<%@include file="all_css.jsp" %>
    
    </head>
<body>
    <div class="container">
    <%@include file="navbar.jsp" %>
    <h2>This is Add note page</h2>
    
  <form action="SaveNoteServlet" method="post">
  <div class="form-group">
    <label for="title">Note title</label>
    <input required  name="title" type="text" id="title" name="title" class="form-control" area-describedby="emailHelp" placeholder="Enter the Title"><br><br>
  </div>
  <div>
    <label for="note">Note here:</label>
    <textarea required name="content" for="content" id="content" name="note" placeholder="Enter your text here" class="form-control" style="height:300px"></textarea><br><br>
  </div>
  <div class="container text-center">
  <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Submit</button>
  </div>
  </form>
  </div>
<%@include file="all_js.jsp" %>
    
</body>
</html>