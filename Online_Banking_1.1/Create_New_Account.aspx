<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create_New_Account.aspx.cs" Inherits="Online_Banking_1._1.Create_New_Account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Account
    </title>
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
    <form id="form1" runat="server" enctype="multipart/form-data">
        <div class="container">
            <div class="left">
                <div class="element">Name : </div>
                <div class="element">
                    Father Name :
        
                </div>
                <div class="element">DOB :</div>
                <div class="element">Mail ID :</div>
                <div class="element">
                    Address :
                </div>
                <div class="element">gender </div>
                <div class="element">Maritual Status </div>
                <div class="element">photo :</div>
                <div class="element">Signature : </div>

            </div>
            <div class="left">
                <div class="element">
                    <asp:TextBox ID="txt_name" runat="server" CssClass="txtbox"></asp:TextBox>
                </div>
                <div class="element">
                    <asp:TextBox ID="txt_fname" runat="server" CssClass="txtbox"></asp:TextBox>
                </div>
                <div class="element">
                    <asp:TextBox ID="txt_dob" runat="server" CssClass="txtbox"></asp:TextBox>
                </div>
                <div class="element">
                    <asp:TextBox ID="txt_mail" runat="server" CssClass="txtbox"></asp:TextBox>
                </div>
                <div class="element">
                    <asp:TextBox ID="txt_address" runat="server" CssClass="txtbox" TextMode="MultiLine"></asp:TextBox>
                </div>
                <div class="element">
                    <asp:RadioButton ID="rb_male" runat="server" GroupName="gender" Text="Male" /><asp:RadioButton ID="rbfemale" runat="server" GroupName="gender" Text="Female" /><asp:RadioButton ID="rb_other" runat="server" GroupName="gender" Text="Other" />
                </div>
                <div class="element">
                    <asp:RadioButton ID="rb_unmarried" runat="server" GroupName="maritua_status" Text="Unmarried" /><asp:RadioButton ID="rb_marraid" runat="server" GroupName="maritua_status" Text="Married" /><asp:RadioButton ID="rb_widow" runat="server" GroupName="maritua_status" Text="Widow" />
                </div>
                <div class="element">
                    <asp:FileUpload ID="file_profile" runat="server" />
                </div>
                <div class="element">
                    <asp:FileUpload ID="file_sign" runat="server" />
                </div>

            </div>
            <div class="right">
                <div class="element">
                    Mobile No : 
                </div>
                <div class="element">
                    Adhar No :
                </div>
                <div class="element">
                    PAN card no. :

                </div>
                <div class="element">
                    Branch Name :
        

                </div>
                <div class="element">
                    Branch Code :
        

                </div>
                <div class="element">
                    IFSC code :
        

                </div>
                <div class="element">account type : </div>
                <div class="element">account mode : </div>
                <div class="element">
                    Date of opening :
                </div>

            </div>
            <div class="right">
                <div class="element">
                    <asp:TextBox ID="txt_mob" runat="server" MaxLength="10" CssClass="txtbox"></asp:TextBox>
                </div>
                <div class="element">
                    <asp:TextBox ID="txt_adhar" runat="server" CssClass="txtbox" MaxLength="12"></asp:TextBox>
                </div>
                <div class="element">
                    <asp:TextBox ID="txt_pan" runat="server" CssClass="txtbox" MaxLength="8"></asp:TextBox>
                </div>
                <div class="element">
                    <asp:TextBox ID="txt_branch" runat="server" CssClass="txtbox"></asp:TextBox>
                </div>
                <div class="element">
                    <asp:TextBox ID="txt_branch_code" runat="server" CssClass="txtbox" MaxLength="6"></asp:TextBox>
                </div>
                <div class="element">
                    <asp:TextBox ID="txt_ifsc" runat="server" CssClass="txtbox" MaxLength="10"></asp:TextBox>
                </div>
                <div class="element">
                    <asp:RadioButton ID="rb_saving" runat="server" GroupName="ac_type" Text="Saving" /><asp:RadioButton ID="rb_current" runat="server" GroupName="ac_type" Text="Current" /><asp:RadioButton ID="rb_fd" runat="server" GroupName="ac_type" Text="Fixed" />
                </div>
                <div class="element">
                    <asp:RadioButton ID="rb_single" runat="server" GroupName="ac_mode" Text="Single" /><asp:RadioButton ID="rb_joint" runat="server" GroupName="ac_mode" Text="Joint" />
                </div>
                <div class="element">
                    <asp:TextBox ID="txt_doo" runat="server" CssClass="txtbox"></asp:TextBox>
                </div>

            </div>
        </div>
        <div class="btn_box">
            <asp:Button ID="btn_create" runat="server" Text="Create" OnClick="btn_create_Click" />
        </div>

    </form>
</body>
</html>
