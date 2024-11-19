<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="Online_Banking_1._1.Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link rel="stylesheet" href="Root/css/Login.css" />
    <script src="Root/Js/login.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
     <div>
         <div class="login-form">
             <h2 align="center">Login Form</h2>
             <asp:Label ID="uname" runat="server" Text="">User Id <span>*</span></asp:Label>
             <asp:Label ID="lbl_msg1" runat="server" Text="" ></asp:Label>
             <asp:TextBox ID="txt_admin" runat="server" placeholder="User Id"></asp:TextBox>
             <asp:Label ID="pass" runat="server" Text="">Password  <span>*</span></asp:Label>
             <asp:Label ID="lbl_msg2" runat="server" Text="" ></asp:Label>
             <asp:TextBox ID="txt_pass" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
             <div class="remember"><asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Me" /></div>
             <asp:Button ID="btn_login" runat="server" Text="Login" OnClick="btn_login_Click" OnClientClick=" return validation();" />
         </div>
     </div>
</div>
    </form>
</body>
</html>
