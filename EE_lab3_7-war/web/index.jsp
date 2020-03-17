<%-- 
    Document   : index
    Created on : 14.03.2020, 9:27:40
    Author     : ann
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Login Page</title>
        <style type="text/css">
            html {
                background: url(graphics/fon.jpg) no-repeat center center fixed;
                -webkit-background-size: cover;
                -moz-background-size: cover;
                -o-background-size: cover;
                background-size: cover;
            }
        </style>
    </head>
    <body>
    <center>
        <style>
            section {
                color: black;
                border-radius: 1em;
                padding: 1em;
                position: absolute;
                top: 50%;
                left: 50%;
                margin-right: -50%;
                transform: translate(-50%, -50%) }
            </style>
            <section>
                <form name="toDooshka" action="toDo" method="POST">
                    <table  bgcolor="c0e4ff" border="2"
                            cellspacing="5" cellpadding="5">
                        <tr>
                            <td colspan="2">
                        <center>Введите Логин/Пароль
                        </center>
                        </td>
                        </tr>
                        <tr >
                            <td >
                                Логин:
                            </td> 
                            <td >
                                <input type="text" name="login" value="" size="10" required placeholder="user"/>
                            </td>
                        </tr>
                        <tr >
                            <td >
                                Пароль:
                            </td> 
                            <td >
                                <input type="password" name="psw" value="" size="10" placeholder="***"/>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <style type="text/css">
                                .bt{width:100%}
                            </style>
                            <input  class="bt" name="button1" width="100" type="submit" value=
                                    <%  String k = "";
                                        if ((k = (String) request.getAttribute("msg")) == null) {
                                            k = "Войти";
                                        }
                                        out.print(k);
                                    %>
                                    />
                        </td>
                    </tr>
                </table>                                                 
            </form>
        </section>
    </center>
</body>
</html>