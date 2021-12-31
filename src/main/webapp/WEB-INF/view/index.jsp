<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
		crossorigin="anonymous">



	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-8">

				<h1>Entry Information</h1>

				<form action="insert" method="post">
					<div class="mb-3">
						<label for="exampleFormControlInput1" class="form-label">Name</label>
						<input type="name" name="name" class="form-control"
							id="exampleFormControlInput1" placeholder="name@example.com">
					</div>


					<div class="mb-3">
						<label for="exampleFormControlInput1" class="form-label">Phone</label>
						<input type="phone" name="phone" class="form-control"
							id="exampleFormControlInput1" placeholder="name@example.com">
					</div>



					<div class="mb-3">
						<label for="exampleFormControlInput1" class="form-label">Email</label>
						<input type="email" name="email" class="form-control"
							id="exampleFormControlInput1" placeholder="name@example.com">
					</div>


					<button class="btn btn-primary" type="submit">Save Data</button>


				</form>








<a href="/listpage" >View List</a>




			</div>

		</div>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>


</body>
</html>