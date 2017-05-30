<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="container-wrapper">
	<div class="container">
		<h2>The amount spent on tobacco until today</h2>
		<p class="lead">지금 까지 담배에 소비한 금액입니다.</p>
		<div class="card-panel">
			<table class="table centered highlight ">
				<thead>
					<tr class="success">
						<th style="text-align: center">Total Spend Amount</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td align="center"><h2>${myTotalSpend}원</h2></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
