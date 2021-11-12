<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sample1.aspx.cs" Inherits="_110_1Mid.Sample1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>會員註冊</h1>
            <p style="font-size: x-large">帳號
                <asp:TextBox ID="tb_Id" runat="server" Width="200px" Height="15px"></asp:TextBox>
            </p>
            <p style="font-size: x-large">密碼
                <asp:TextBox ID="tb_Ps" runat="server" Width="200px" Height="15px" TextMode="Password"></asp:TextBox>
                <asp:ImageButton ID="ig_Ps" runat="server" ImageUrl="eye-slash-solid.svg" Width="30px" Height="30px" OnClick="ImageButton1_Click"/>
            </p>
            <p style="font-size: x-large">管道得知(可多選)
                <asp:CheckBoxList ID="cl_Inter" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" RepeatLayout="Flow">
                    <asp:ListItem Value="B1">網頁廣告</asp:ListItem>
                    <asp:ListItem Value="B2">電視</asp:ListItem>
                    <asp:ListItem Value="B3">其他</asp:ListItem>
                </asp:CheckBoxList>
            <p style="font-size: x-large">影片說明
                <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="youtube-brands.svg" NavigateUrl="https://www.youtube.com/" Width="30px" Height="30px"></asp:HyperLink>
            </p>
            <p style="font-size: x-large">驗證碼
                <asp:TextBox ID="tb_Num" runat="server" Width="50px" Height="15px"></asp:TextBox>
                <asp:Image ID="ig_Num" runat="server" />
                <asp:HiddenField ID="hd_Num" runat="server" />
            </p>
                <asp:Button ID="btn_Submit" runat="server" Text="送出" Height="30px" PostBackUrl="~/Sample1Com.aspx" Width="80px" />
        </div>
    </form>
</body>
</html>
