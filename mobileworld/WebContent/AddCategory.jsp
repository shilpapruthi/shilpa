<jsp:include page="AdminHeader.jsp"/>

<br/>
<!-- Content -->
<div class="container" style="align:center; margin:10%;">
<h1>Category Form </h1>
<form class="form-horizontal" action="addCategory" method="post">
  <div class="form-group">
    <label class="control-label col-sm-2" for="categoryName" style="text-align:left;">Category Name :</label>
    <div class="col-sm-10" style="width:30%;">
    <input type="text" class="form-control" id="categoryName" name="categoryName">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="categoryDesc" style="text-align:left;">Category Desc :</label>
    <div class="col-sm-10" style="width:30%;">
    <textarea class="form-control" id="categoryDesc" name="categoryDesc" rows="5" cols="15">
    </textarea>
    </div>
  </div>
    <button type="submit" class="btn btn-default" style="margin-left:200px;">Add Category</button>
</form>

 </div>
 

<br/><br/><br/>
<jsp:include page="Footer.jsp"/>	