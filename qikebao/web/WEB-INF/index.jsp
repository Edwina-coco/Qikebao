<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/6/6
  Time: 0:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"/>
  </head>
  <script>
  $(function () {
      $("#btn").click(function () {
          $.ajax({
              url:"${pageContext.request.contextPath}/product/addProduct",
              contentType: "application/json;charset=UTF-8",
//              将javascript转换为json字符串
              data:JSON.stringify({
                  "Product_name":$("#product_name").val(),
                  "Product_id":$("#product_id").val(),
                  "Product_price":$("#product_price").val(),
                  "Product_profile":$("#product_profile").val()
              }),
              type:"POST",
              dataType:"JSON",
              success:function (data) {
                  console.log(data);
              }
          })
      })
  })
  </script>
  <body>
  <form method="post" action="${pageContext.request.contextPath}/addProduct">
    商品名称:<input name="Product_name" id="Product_name" type="text"/>
    商品编号:<input name="Product_id" id="Product_id" type="text"/>
    商品成本:<input name="Product_price" id="Product_price" type="text"/>
    商品简介:<input name="Product_profile" id="Product_profile" type="text"/>
    <input type="submit" name="提交" id="btn"/>
  </form>
  </body>
</html>
