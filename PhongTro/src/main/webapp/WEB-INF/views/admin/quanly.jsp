<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<style>
table, th, td {
	border: 1px solid black;
}

th, td {
	width: 150px;
}
</style>

<div class="pt-5 mt-5" >
	<ul class="nav nav-tabs" id="myTab" role="tablist">
		<li class="nav-item" role="presentation">
			<button class="nav-link active" id="home-tab" data-bs-toggle="tab"
				data-bs-target="#home-tab-pane" type="button" role="tab"
				aria-controls="home-tab-pane" aria-selected="true">Edit</button>
		</li>
		<li class="nav-item" role="presentation">
			<button class="nav-link" id="profile-tab" data-bs-toggle="tab"
				data-bs-target="#profile-tab-pane" type="button" role="tab"
				aria-controls="profile-tab-pane" aria-selected="false">List</button>
		</li>
	</ul>
	<div class="tab-content" id="myTabContent">
		<div class="tab-pane fade show active" id="home-tab-pane"
			role="tabpanel" aria-labelledby="home-tab" tabindex="0">
			
		</div>
		<div class="tab-pane fade" id="profile-tab-pane" role="tabpanel"
			aria-labelledby="profile-tab" tabindex="0">
			
		</div>
	</div>

	<br>

</div>
</html>