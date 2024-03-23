<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resultados da Pesquisa</title>
<style>
table {
  width: 100%;
  border-collapse: collapse;
  border="2"
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

th {
  background-color: #f2f2f2;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}
</style>
</head>
<body>
		<% if (session.getAttribute("avista") != null) { %>
    		<h3><strong>Valor a vista com Desconto: <%= session.getAttribute("avista") %></strong></h3>
		<% } %>

		<% 
			double valorCarro = (double) request.getAttribute("valorCarro");
		%>
			<table>
		<tr>
			<th>Quantidade de Parcelas</th>
			<th>Percentual de Acréscimo sobre o preço final</th>
			<th>Preço Final</th>
		</tr>
		<tr>
			<td>6</td>
			<td>3%</td>
			<td><%= (valorCarro)+valorCarro * 0.03 %></td>
		</tr>
		<tr>
			<td>12</td>
			<td>6%</td>
			<td><%= (valorCarro)+valorCarro * 0.06 %></td>
		</tr>
		<tr>
			<td>18</td>
			<td>9%</td>
			<td><%= (valorCarro)+valorCarro * 0.09 %></td>
		</tr>
		<tr>
			<td>24</td>
			<td>12%</td>
			<td><%= (valorCarro)+valorCarro * 0.12 %></td>
		</tr>
		<tr>
			<td>30</td>
			<td>15%</td>
			<td><%= (valorCarro)+valorCarro * 0.15 %></td>
		</tr>
		<tr>
			<td>36</td>
			<td>18%</td>
			<td><%= (valorCarro)+valorCarro * 0.18 %></td>
		</tr>
		<tr>
			<td>42</td>
			<td>21%</td>
			<td><%= (valorCarro)+valorCarro * 0.21 %></td>
		</tr>
		<tr>
			<td>48</td>
			<td>24%</td>
			<td><%= (valorCarro)+valorCarro * 0.24 %></td>
		</tr>
		<tr>
			<td>54</td>
			<td>27%</td>
			<td><%= (valorCarro)+valorCarro * 0.27 %></td>
		</tr>
		<tr>
			<td>60</td>
			<td>30%</td>
			<td><%=(valorCarro)+valorCarro * 0.30 %></td>
		</tr>
		
	</table>
	
</body>
</html>