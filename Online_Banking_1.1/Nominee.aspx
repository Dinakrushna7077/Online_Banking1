<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Nominee.aspx.cs" Inherits="Online_Banking_1._1.Nominee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Nomini Details</title>
    <style>
        body {
            height: 100vh;
            width: 100vw;
        }

        #form1 {
            height: 100vh;
            width: 100vw;
            display: flex;
            align-items: center;
            flex-direction: column;
        }

        .container {
            height: 85vh;
            width: 100vw;
            /*background-color:gray;*/
            display: flex;
            flex-direction: row;
            justify-content: space-evenly;
        }

        .left, .right {
            display: flex;
            flex-direction: column;
            justify-content: space-around;
            padding: 5px;
        }

        .element {
            padding-top: 15px;
        }


        .btn_box {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        #btn_create {
            padding: 4px 10px 4px 10px;
            margin-top: 20px;
            height: 35px;
            width: 200px;
            text-align: center;
            background-color: lawngreen;
            border: 1px solid;
            border-radius: 5px;
        }

        .txtbox {
            height: 1.4rem;
            width: 20rem;
            outline: none;
            border: none;
            border-bottom: 1px solid;
            letter-spacing: 1px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="container">
            <div class="left">
                <div class="element">Account Number : </div>
                <div class="element">Nominee Name : </div>


                <div class="element">DOB Of Nominee:</div>


                <div class="element">gender </div>



            </div>
            <div class="left">
                <div class="element">
                    <asp:TextBox ID="txt_account" runat="server" CssClass="txtbox"></asp:TextBox>
                </div>
                <div class="element">
                    <asp:TextBox ID="txt_nname" runat="server" CssClass="txtbox"></asp:TextBox>
                </div>
                <div class="element">
                    <asp:TextBox ID="txt_nDob" runat="server" CssClass="txtbox"></asp:TextBox>
                </div>
                <div class="element">
                    <asp:RadioButton ID="rb_male" runat="server" GroupName="gender" Text="Male" /><asp:RadioButton ID="rbfemale" runat="server" GroupName="gender" Text="Female" /><asp:RadioButton ID="rb_other" runat="server" GroupName="gender" Text="Other" />
                </div>








            </div>
            <div class="right">
                <div class="element">
                    Relation :

                </div>
                <div class="element">
                    Mobile No : 
                </div>
                <div class="element">
                    Adhar Number :

                </div>
                <div class="element">photo :</div>

                <div class="element">Admin Id :</div>


            </div>
            <div class="right">
                <div class="element">
                    <asp:TextBox ID="txt_mob" runat="server" MaxLength="10" CssClass="txtbox"></asp:TextBox>
                </div>









            </div>
        </div>
        <div class="btn_box">
            <asp:Button ID="btn_create" runat="server" Text="Create" />
        </div>
    </form>
</body>
</html>
