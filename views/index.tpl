<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-U-Compatible" content="ie=edge">
		<title>verk 6</title>
		<meta name="viewport" content="width-device-width, initial-scaled=1">
		<meta name="viewport" content="width=device-width">
    <meta name="twitter:" content="none">
    <meta name="author" content="none">
		<link rel="stylesheet" type="text/css" media="screen" href="stylesheet.css">
	</head>
	<body>
		  % from bottle import *
		% from beaker.middleware import SessionMiddleware
		% bs = request.environ.get("beaker.session")
		<div class="wrapper-one">
			<span>
				<h1>Hoodie</h1>
				<a href="cart/1"><img src="static/img.jpg"></a>
				<h2>price: 20</h2>
			</span>
			<span>
				<h1>Hoodie</h1>
				<a href="cart/2"><img src="static/img2.jpg"></a>
				<h2>Price: 20</h2>
			</span>
			<span>
				<h1>Sweeter</h1>
				<a href="cart/3"><img src="static/img3.jpg"></a>
				<h2>Price: 80</h2>

			</span>

		</div>

<div class="wrapper-two">
			<span>
				<h1>Sweeter</h1>
				<a href="cart/4"><img src="static/img4.jpg"></a>
				<h2>Price: 80</h2>
			</span>
			<span>
				<h1>Jacket</h1>
				<a href="cart/5"><img src="static/img5.jpg"></a>
				<h2>Price: 40</h2>
			</span>
			<span>
				<h1>Jacket</h1>
				<a href="cart/6"><img src="static/img6.jpg"></a>
				<h2>Price: 40</h2>
			</span>
		</div>


		<%
		from bottle import *
		from beaker.middleware import SessionMiddleware
		bs = request.environ.get("beaker.session")
		cnt = 0
		for i in range(6):
			if bs.get(str(i)):
			cnt += 1
			end
		end
		%>
		<div class="Cart">
			({{cnt}})
			<a href="cart"><img src="static/cart.svg"></a>
		</div>
	</body>
</html>
