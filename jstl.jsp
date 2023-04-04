<%-- 
    Document   : jstl
    Created on : 29 Mar, 2023, 10:16:35 AM
    Author     : Vishnu
--%>


<%@page import="java.util.Comparator"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.Collection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="program.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            class stu implements Comparable<stu>
            {
                String name;
                String mark;
                String email;
                stu(String n,String m,String e)
                {
                    name=n;
                    mark=m;
                    email=e;
                }
               public String toString() 
               {
                return  name + "            " + mark+ "          " + email ;
               }
               public int compareTo(stu o) 
               {
                    return toString().compareTo(o.toString()); //To change body of generated methods, choose Tools | Templates.
               }
             
            }
                  stu s[]={
                      new stu("eee","67","abe@gmail.com"),
                      new stu("kkk","89","kkk@gmail.com"), 
                      new stu("aaa","78","aaa@gmail.com") 
                  };
                    out.println("<br>");
                     pageContext.setAttribute("obj",s);
                     %>
                     <h1>before sorting</h1>
                     <table border="2">
                      <th>name            grade           email</th>
                      
                      <c:forEach var="i"  items="${pageScope.obj}" begin="0" end="2">
                          <tr><td>${i}</td></tr>
                      </c:forEach>
                 </table>
                     <%
                     
                      Arrays.sort(s, new Comparator<stu>() {
                         public int compare(stu o1, stu o2) {
                              return o1.name.compareTo(o2.name);
                         }
                      });
                    //  out.println(Arrays.asList(s));
                      pageContext.setAttribute("obj1",s);
                  %>
                   <h1>After sorting</h1>
                  <table border="2">
                      <th>name            grade           email</th>
                      
                      <c:forEach var="i"  items="${pageScope.obj1}" begin="0" end="2">
                          <tr><td>${i}</td></tr>
                      </c:forEach>
                 </table>
           
    </body>
</html>
