<jsp:include page="AdminHeader.jsp"/>

<br/>
<!-- Content -->
<div class="container">
<form class="form-horizontal" action="addCategory" method="post">
  <div class="form-group">
    <label class="control-label col-sm-2" for="categoryName" style="text-align:left;">Category Name :</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" id="categoryName" name="categoryName">
    </div>
  </div>
   <div class="form-group">
    <label class="control-label col-sm-2" for="desc"  style="text-align:left;">Category Description:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" id="desc" name="desc">
    </div>
  </div>
    <button type="submit" class="btn btn-default" style="margin-left:200px;">Add Category</button>
</form>

 </div>
 

<br/><br/><br/>
<jsp:include page="Footer.jsp"/>	