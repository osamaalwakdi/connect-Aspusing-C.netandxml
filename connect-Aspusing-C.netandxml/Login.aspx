<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="connect_Aspusing_C.netandxml.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 41%;
            height: 203px;
            border: 1px solid #808000;
            background-color: #999999;
        }
        .auto-style4 {
            height: 36px;
            background-color: #CCCCCC;
            text-align: center;
        }
        .auto-style5 {
            height: 49px;
            background-color: #CCCCCC;
            width: 113px;
        }
        .auto-style8 {
            height: 10px;
            background-color: #CCCCCC;
            text-align: center;
        }
        .auto-style9 {
            height: 277px;
        }
        .auto-style10 {
            height: 39px;
            background-color: #CCCCCC;
            text-align: center;
            font-size: large;
        }
        .auto-style11 {
            height: 49px;
            background-color: #CCCCCC;
            }
    </style>
</head>
<body bgcolor="white" >
    <form id="form1" runat="server">
        <div class="auto-style9" style="color: #808080; background-color: white;">
            <table align="right" class="auto-style1" dir="rtl" style="color: #FFFFFF">
                <tr>
                    <td class="auto-style10" colspan="2" style="background-color: #FFFFFF">
                        <h2><strong style="color: #0000FF">تسجيل الدخول</strong></h2>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="color: black" style="background-color: #FFFFFF;" colspan="2"><strong>إسم المستخدم</strong><asp:TextBox ID="txtusername" runat="server" Height="21px" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"  style="color: black" style="background-color: #FFFFFF;" colspan="2"><strong>كلمة المرور&nbsp; </strong>
                        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="background-color: #FFFFFF">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" Width="144px" BorderStyle="Solid" />
                    </td>
                    <td class="auto-style11" style="background-color: #FFFFFF">
                        <asp:Label ID="Lbmsg" runat="server" ForeColor="#FF3300"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
    <h2>&nbsp;</h2>
</body>
</html>
