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
<h3>Account Information</h3>

<table>
	<tr>
		<td>First name:</td>
		<td><input name="firstName" value="${account.firstName}"></td>
	</tr>
	<tr>
		<td>Last name:</td>
		<td><input name="lastName" value="${account.lastName}"</td>
	</tr>
	<tr>
		<td>Email:</td>
		<td><input name="email" value="${account.email}"></td>
	</tr>
	<tr>
		<td>Phone:</td>
		<td><input name="phone" value="${account.phone}"></td>
	</tr>
	<tr>
		<td>Address 1:</td>
		<td><input name="addr1" value="${account.address1}"></td>
	</tr>
	<tr>
		<td>Address 2:</td>
		<td><input name="addr2" value="${account.address2}"></td>
	</tr>
	<tr>
		<td>City:</td>
		<td><input name="city" value="${account.city}"></td>
	</tr>
	<tr>
		<td>State:</td>
		<td><input name="state" value="${account.state}"></td>
	</tr>
	<tr>
		<td>Zip:</td>
		<td><input name="zip" value="${account.zip}"></td>
	</tr>
	<tr>
		<td>Country:</td>
		<td><input name="country" value="${account.country}"></td>
	</tr>
</table>

<h3>Profile Information</h3>

<table>
	<tr>
		<td>Language Preference:</td>
		<td><select name="languagePreference">
			<option value="english"<c:if test="${account.languagePreference == 'english'}">selected="selected"</c:if>>English</option>
			<option value="japanese"<c:if test="${account.languagePreference == 'japanese'}">selected="selected"</c:if>>Japanese</option>
		</select></td>
	</tr>
	<tr>
		<td>Favourite Category:</td>
		<td>
			<select name="favoriteCategory">
				<option value="FISH"<c:if test="${account.favouriteCategoryId == 'FISH'}">selected="selected"</c:if>>Fish</option>
				<option value="DOGS"<c:if test="${account.favouriteCategoryId == 'DOGS'}">selected="selected"</c:if>>Dogs</option>
				<option value="REPTILES"<c:if test="${account.favouriteCategoryId == 'REPTILES'}">selected="selected"</c:if>>Reptiles</option>
				<option value="CATS"<c:if test="${account.favouriteCategoryId == 'CATS'}">selected="selected"</c:if>>Cats</option>
				<option value="BIRDS"<c:if test="${account.favouriteCategoryId == 'BIRDS'}">selected="selected"</c:if>>Birds</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>Enable MyList</td>
		<td><input name="listOpt" type="checkbox"<c:if test="${account.listOption}">checked</c:if>></td>
	</tr>
	<tr>
		<td>Enable MyBanner</td>
		<td><input name="bannerOpt" type="checkbox"<c:if test="${account.bannerOption}">checked</c:if>></td>
	</tr>

</table>
