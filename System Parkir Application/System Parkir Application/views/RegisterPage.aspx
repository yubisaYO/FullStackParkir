<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="System_Parkir_Application.views.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Page</title>
    <link href="../css/RegisterPage.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <link href="../icons/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet" />
    <link href="../icons/bootstrap-icons/font/bootstrap-icons.min.css" rel="stylesheet" />
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
</head>
<body>
    <section class="intro">
      <div class="mask d-flex align-items-center h-100 gradient-custom" style="background-image : url(../assets/bcg-3/jpg); background-size: cover">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-12 col-xl-10">
              <div class="card">
                <div class="card-body p-5">

                  <div class="row d-flex align-items-center">
                    <div class="col-md-6 col-xl-7">

                      <div class="text-center pt-md-5 pb-5 my-md-5" style="padding-right: 24px;">
                        <img src="../assets/bcg-full.jpg"/>
                      </div>

                    </div>
                    <div class="col-md-6 col-xl-4 text-center">

                      <h2 class="fw-bold mb-4 pb-2">Register Your Data</h2>
                      <form runat="server">
                      <div class="form-outline mb-3">
                        <label class="form-label" for="typeEmail">Nama</label>
                        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control form-control-lg" Text=""></asp:TextBox>
                        
                      </div>

                      <div class="form-outline mb-4">
                        <label class="form-label" for="typePassword">Plat Nomor</label>
                        <asp:TextBox ID="txtPlatNomor" runat="server" CssClass="form-control form-control-lg" Text=""></asp:TextBox>
                      </div>
                     <div class="form-outline mb-4">
                      <label class="form-label" for="typePassword">Find Tiket ID</label>
                      <asp:TextBox ID="txtFindPlatNomor" runat="server" CssClass="form-control form-control-lg" placeholder="Input Your Plat Nomor" Text=""></asp:TextBox>
                    </div>
                      <div id="lblErrorAlert" class="alert" role="alert" runat="server">
                        <asp:Label ID="lblError" runat="server" Text="" CssClass=""></asp:Label>
                      </div>
                      <div class="text-center">
                          <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-info btn-block btn-lg" OnClick="btnRegister_Click"/>
                          <asp:Button ID="btnFind" runat="server" Text="Find" CssClass="btn btn-warning btn-block btn-lg" OnClick="btnFind_Click"/>
                      </div>
                      <div class="text-center">
                          <asp:Button ID="btnShowTiket" runat="server" Text="Show Ticket" CssClass="btn btn-success btn-block btn-lg" OnClick="btnShowTiket_Click" Visible="false"/>
                      </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

    </section>
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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>
