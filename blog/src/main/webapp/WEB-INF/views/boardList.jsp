<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Styled Table</title>
  <style>
      table {
          width: 100%;
          border: 2px solid #333;
          border-collapse: collapse;
      }
      th, td {
          border: 1px solid #ccc;
          padding: 10px;
          text-align: center;
      }
      th {
          background-color: #4CAF50;
          color: white;
      }
      tr:nth-child(even) {
          background-color: #f2f2f2;
      }
      tr:nth-child(odd) {
          background-color: #ffffff;
      }
      tr:hover {
          background-color: #ddd;
      }
  </style>
</head>
<body>
	<form action="/boardList" method="get">
		<input type="hidden" name="bltTit" value="1">
		<input type="text" name="keyword">
		<input type="hidden" name="condition" value="condition">
		<button type="submit">123</button>
	</form>
  	<table>
      <tr>
          <th>게시판 번호</th>
          <th>제목</th>
          <th>내용</th>
      </tr>
      <c:forEach items="${list }" var="item">
      	
      	<tr>
          <td>${item.bltNo }</td>
          <td>${item.bltTit }</td>
          <td>${item.bltSstc }</td>
      	</tr>
      </c:forEach>
      
	</table>
</body>