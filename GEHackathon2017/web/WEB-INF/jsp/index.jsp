<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>GE Aviation Hackathon 2017</title>
    </head>
    <body>
<!--        <form action="login.htm" method="post">
            <div id="login" style="text-align:center">
                <h1>Login</h1>
                <input type="text" name="username" placeholder="Username"/><br><br>
                <input type="password" name="password" placeholder="Password"/><br><br>
                <input type="submit" name="submit" value="Log In"/>

                <c:if test="${!empty requestScope.error}">
                    <p style="color:red">Invalid credentials</p>
                </c:if>


            </div>
        </form>
        -->
        <form action="login.htm" method="post">
                   <fieldset>
                          <div class="form-group">
                            <input class="form-control" placeholder="E-mail" name="username" type="text">
                        </div>
                        <div class="form-group">
                            <input class="form-control" placeholder="Password" name="password" type="password">
                        </div>
                        <div class="checkbox">
                        
                        </div>
                        <input class="btn btn-lg btn-success btn-block" type="submit" value="Login">
                    </fieldset>
                                   <c:if test="${!empty requestScope.error}">
                                       <p style="color:red">Invalid credentials</p>
                                   </c:if>
                      </form>
        
    </body>
</html>