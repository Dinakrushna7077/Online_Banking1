<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Continue.aspx.cs" Inherits="Online_Banking_1._1.Continue" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Continue</title>
    <style>
        *{
            margin:0;
            padding:0;
        }
        body{
            height:100vh;
            width:100vw;
        }
        #form{
            display:flex;
            align-items:center;
            justify-content:center;
        }
        #Btn_continue{
            height:100vh;
            width:100vw;
            background-color:deepskyblue;
            border:none;
            outline:none;
        }
        .circle{
            height:200px;
            width:200px;
            border-radius:50%;
            background-color:lightgray;
            position:absolute;
            z-index:1;
            top:35%;
            left:42%;
            display:flex;
            justify-content:center;
            align-items:center;
            border:none;
            outline:none;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:button ID="Btn_circle" runat="server" Text="Click anywhere to continue..." class="circle" OnClick="Btn_circle_Click"/>
        <asp:button ID="Btn_continue" Text="" runat="server" OnClick="Btn_continue_Click" />
    </form>
</body>
</html>
