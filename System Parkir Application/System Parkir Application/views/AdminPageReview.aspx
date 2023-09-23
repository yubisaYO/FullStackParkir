<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPageReview.aspx.cs" Inherits="System_Parkir_Application.views.AdminPageReview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Review Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <link href="../css/AdminPage.css" rel="stylesheet" />
    <link href="../icons/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet" />
    <link href="../icons/bootstrap-icons/font/bootstrap-icons.min.css" rel="stylesheet" />
</head>
<body>
    
    <section class="intro">
      <div class="bg-image h-100" style="background-image: url('../assets/bcg-2.jpg'); background-size: cover">
        <div class="mask d-flex align-items-center h-100" style="background-color: rgba(0,0,0,.25);">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-12">
                <div class="card bg-dark shadow-2-strong">
                  <div class="card-body">
                    <div class="table-responsive">
                      <form runat="server">
                          <div class="d-flex justify-content-end mb-3">
                                <div class="input-group input-group-lg">
                                    <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control form-control-lg" placeholder="Input Tiket ID" Text=""></asp:TextBox>
                                    <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-primary button-addon2" OnClick="btnSearch_Click"/>
                                    </div>
                                <div class="bg-primary" style="width: 10px;"></div>
                            </div>
                            <div>
                                <asp:Label ID="lblError" runat="server" Text="" CssClass=""></asp:Label>
                            </div>
                        <table class="table table-dark table-borderless mb-0">
                            <thead>
                                <tr>
                                    <th>Parkir ID</th>
                                    <th>Tiket ID</th>
                                    <th>Pengemudi ID</th>
                                    <th>Area</th>
                                    <th>Lantai</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% foreach (var x in parkir) { %>
                                <tr>
                                    <td><%= x.parkirID %></td>
                                    <td><%= x.tiketID %></td>
                                    <td><%= x.Pengemudi.name %></td>
                                    <td><%= x.area %></td>
                                    <td><%= x.lantai %></td>
                                </tr>
                                <% } %>
                            </tbody>
                        </table>

                          <table class="table table-dark table-borderless mb-0">
                             <asp:Label ID="lblErrorF" runat="server" Text="" CssClass=""></asp:Label>
                            <thead>
                                <tr>
                                    <th>Parkir ID</th>
                                    <th>Nama</th>
                                    <th>Plat Nomor</th>
                                    <th>Area</th>
                                    <th>Lantai</th>
                                    <th>Waktu Masuk</th>
                                    <th>Waktu Keluar</th>
                                    <th>Price</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% if(p != null) { %>
                                <tr>
                                    <td><%= p.parkirID %></td>
                                    <td><%= p.Pengemudi.name %></td>
                                    <td><%= p.Pengemudi.platNomor %></td>
                                    <td><%= p.area %></td>
                                    <td><%= p.lantai %></td>
                                    <td><%= p.Tiket.waktuMasuk %></td>
                                    <td><%= p.Tiket.waktuKeluar %></td>
                                    <td><%= p.Tiket.harga %></td>
                                    <td>
                                        <asp:Button ID="btnGenerateIn" runat="server" Text="In" OnClick="btnGenerateIn_Click" CssClass="btn btn-primary"/>
                                        <asp:Button ID="btnGenerateOut" runat="server" Text="Out" OnClick="btnGenerateOut_Click" CssClass="btn btn-danger"/>
                                        <asp:Button ID="btnDone" runat="server" Text="DONE" OnClick="btnDone_Click" CssClass="btn btn-success" Visible="false"/>
                                    </td>
                                </tr>
                                <% } %>
                            </tbody>
                        </table>
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
       
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
