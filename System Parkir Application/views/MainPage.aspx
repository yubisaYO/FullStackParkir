<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="System_Parkir_Application.views.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main Page</title>
    <link href="../css/main.css" rel="stylesheet" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>

</head>
<body>
    <header class="header">
	<div class="brand-box">
		<span class="heading-primary-sub">EasyParkir</span>
	</div>
	
	<div class="text-box">
		<h1 class="heading-primary">
			<span class="heading-primary-main">Let's Get Your Parking Now</span>
			<span class="heading-primary-sub">easy your life</span>
		</h1>
		<a href="../views/RegisterPage.aspx" class="btn btn-white btn-animated border bg-light text-black fst-italic">Register Now</a>
		<a href="../views/AdminLoginPage.aspx" class="btn btn-white btn-animated border bg-dark text-white">Admin Page</a>
	</div>
</header>
</body>
</html>
