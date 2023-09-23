<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLoginPage.aspx.cs" Inherits="System_Parkir_Application.views.AdminLoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <link href="../icons/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet" />
    <link href="../icons/bootstrap-icons/font/bootstrap-icons.min.css" rel="stylesheet" />
</head>
<body>
    <section class="text-center">
      <!-- Background image -->
      <div class="p-5 bg-image" style="
            background-image: url('../assets/bcg-2.jpg');
            height: 300px;
            "></div>
      <!-- Background image -->

      <div class="card mx-4 mx-md-5 shadow-5-strong" style="
            margin-top: -100px;
            background: hsla(0, 0%, 100%, 0.8);
            backdrop-filter: blur(30px);
            ">
        <div class="card-body py-5 px-md-5">

          <div class="row d-flex justify-content-center">
            <div class="col-lg-8">
              <h2 class="fw-bold mb-5">Admin Login Page</h2>
              <form runat="server">
                <!-- Email input -->
                <div class="form-outline mb-4">
                    <div class="mb-3">
                        <asp:Label ID="lblUsername" runat="server" Text="Username" CssClass="form-label"></asp:Label>
                    </div>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <!-- Password input -->
                <div class="form-outline mb-4">
                    <div class="mb-3">
                        <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="form-label mb-2"></asp:Label>
                    </div>
                   <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                  <div id="lblErrorAlert" class="alert alert-danger" role="alert" runat="server">
                    <asp:Label ID="lblError" runat="server" Text="" CssClass=""></asp:Label>
                  </div>
                  <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-info btn-rounded p-3 px-5" OnClick="btnLogin_Click"/>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="">
  <!-- Footer -->
  <footer class="text-center text-white" style="background-color: #0a4275;">
    <div class="container p-4 pb-0">
    <!-- Section: Social media -->
    <section class="mb-4">
      <!-- Facebook -->
      <a class="btn btn-outline-light btn-floating m-1" href="../views/MainPage.aspx" role="button"
        ><i class="bi bi-house"></i></a>

      <!-- Twitter -->
      <a class="btn btn-outline-light btn-floating m-1" href="https://www.facebook.com" role="button"
        ><i class="bi bi-facebook"></i
      ></a>

      <!-- Google -->
      <a class="btn btn-outline-light btn-floating m-1" href="https://www.twitter.com" role="button"
        ><i class="bi bi-twitter"></i
      ></a>

      <!-- Instagram -->
      <a class="btn btn-outline-light btn-floating m-1" href="https://www.discord.com" role="button"
        ><i class="bi bi-discord"></i
      ></a>

      <!-- Linkedin -->
      <a class="btn btn-outline-light btn-floating m-1" href="https://www.line.com" role="button"
        ><i class="bi bi-line"></i
      ></a>

      <!-- Github -->
      <a class="btn btn-outline-light btn-floating m-1" href="https://www.instagram.com" role="button"
        ><i class="bi bi-instagram"></i
      ></a>
    </section>
    <!-- Section: Social media -->
  </div>

    <!-- Copyright -->
    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
      © 2020 Copyright:
      <a class="text-white text-decoration-none" href="https://mdbootstrap.com/">Andre, Charles, William</a>
    </div>
    <!-- Copyright -->
  </footer>
  <!-- Footer -->
</section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
