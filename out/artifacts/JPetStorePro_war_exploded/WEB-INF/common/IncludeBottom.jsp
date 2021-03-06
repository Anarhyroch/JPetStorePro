<%--

       Copyright 2010-2016 the original author or authors.

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
</div>
<%--<div id="smallCart" style="right: 0px;">Cart</div>--%>
<%--<div id="cartButton" class="hide" style="right: 0px;">Cart</div>--%>
<div id="Footer">

	<nav class="navbar-expand-lg navbar navbar-dark bg-success justify-content-between">
		<a class="navbar-brand" href="http://www.mybatis.org">www.mybatis.org</a>

		<div id="Banner" class="form-inline my-2 my-lg-0"><c:if test="${sessionScope.account != null }">
			<c:if test="${sessionScope.authenticated}">
				<c:if test="${sessionScope.account.bannerOption}">
					${sessionScope.account.bannerName}
				</c:if>
			</c:if>
		</c:if></div>
</div>
</nav>

</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery-3.5.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/cart.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/searchautocomplete.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/signup.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/form.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/item.js"></script>
</body>
</html>