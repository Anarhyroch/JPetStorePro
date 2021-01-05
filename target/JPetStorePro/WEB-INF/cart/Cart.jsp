<%--

       Copyright 2010-2020 the original author or authors.

       Licensed under the Apache License, Version 2.0 (the "License");
       you may not use this file except in compliance with the License.
       You may obtain a copy of the License at

          http://www.apache.org/licenses/LICENSE-2.0

       Unless required by applicable law or agreed to in writing, software
       distributed under the License is distributed on an "AS IS" BASIS,
       WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
       See the License for the specific language governing permissions and
       limitations under the License.

--%>
<%@ include file="../common/IncludeTop.jsp"%>

<div id="BackLink"><a href="${pageContext.request.contextPath}/main">Return to Main Menu</a></div>

<div id="Catalog">

<div id="Cart">

<h2>Shopping Cart</h2>
	<table >
		<tr>
			<th><b>Item ID</b></th>
			<th><b>Product ID</b></th>
			<th><b>Description</b></th>
			<th><b>In Stock?</b></th>
			<th><b>Quantity</b></th>
			<th><b>List Price</b></th>
			<th><b>Total Cost</b></th>
			<th><b>Remove</b></th>
		</tr>

		<c:if test="${cart.numberOfItems == 0}">
			<tr>
				<td colspan="8"><b>Your cart is empty.</b></td>
			</tr>
		</c:if>

		<c:forEach var="cartItem" items="${cart.cartItems}">
			<tr>
				<td><a href="${pageContext.request.contextPath}/item?id=${cartItem.item.itemId}">${cartItem.item.itemId}</a></td>
				<td>${cartItem.item.product.productId}</td>
				<td>${cartItem.item.attribute1} ${cartItem.item.attribute2}
				${cartItem.item.attribute3} ${cartItem.item.attribute4}
				${cartItem.item.attribute5} ${cartItem.item.product.name}</td>
				<td>${cartItem.inStock}</td>
				<td>
					<a href="${pageContext.request.contextPath}/decrementitem?id=${cartItem.item.itemId}" class="Button">-</a>
					<input type="text" size="3" value="${cartItem.quantity}" readonly="">
					<a href="${pageContext.request.contextPath}/incrementitem?id=${cartItem.item.itemId}" class="Button">+</a>
				</td>
				<td><fmt:formatNumber value="${cartItem.item.listPrice}"
									  pattern="$#,##0.00" /></td>
				<td><fmt:formatNumber value="${cartItem.total}"
									  pattern="$#,##0.00" /></td>
				<td><a href="${pageContext.request.contextPath}/removeitem?id=${cartItem.item.itemId}" class="Button">Remove</a></td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="7">Sub Total: <fmt:formatNumber value="${cart.subTotal}" pattern="$#,##0.00" />
			<a href="${pageContext.request.contextPath}/clearcart" class="Button">Clear Cart</a>
			</td>
			<td>&nbsp;</td>
		</tr>
	</table>
	<c:if test="${cart.numberOfItems > 0}">
		<p style="color: red">${message}</p>
		<a href="/checkout" class="Button">Proceed to Checkout</a>
	</c:if>
</div>

	<%-- accountBean --%>
<div id="MyList">
  <c:if test="${sessionScope.account != null}">
	<c:if test="${sessionScope.authenticated}">
	  <c:if test="${!empty sessionScope.account.listOption}">
	    <%@ include file="IncludeMyList.jsp"%>
      </c:if>
	</c:if>
  </c:if>
</div>

<div id="Separator">&nbsp;</div>
</div>

<%@ include file="../common/IncludeBottom.jsp"%>