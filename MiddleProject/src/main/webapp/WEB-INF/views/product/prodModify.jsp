<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class=container>
	<h3>��ǰ���� ����</h3>

	<form action="modifyProd.do" method="post" enctype="multipart/form-data">
		<table class="table">
			<tr>
           		<th scope="col" class="text-primary">�۹�ȣ</th>
            	<td><input type="text" name="pid" value="${prodInfo.pdtId}" readonly></td>
        	</tr>
			<tr>
				<th scope="col" class="text-primary">ī�װ�</th>
				<td>${prodInfo.catNm}</td>
			</tr>
			<tr>
				<th scope="col" class="text-primary">���� ī�װ�</th>
				<td>${prodInfo.subcatNm}</td>
			</tr>
			<tr>
				<th scope="col" class="text-primary">��ǰ �̸�</th>
				<td><input type="text" name="pdtName" value="${prodInfo.pdtNm}"></td>
			</tr>
			<tr>
				<th scope="col" class="text-primary">��ǰ ����</th>
				<td><input type="text" name="price" value="${prodInfo.pdtPrice}">��</td>
			</tr>
			<tr>
				<th scope="col" class="text-primary">�귣��</th>
				<td>${prodInfo.brdNm}</td>
			</tr>
			<tr>
				<th scope="col" class="text-primary">����</th>
				<td>${prodInfo.genderNm}</td>
			</tr>
			<tr>
				<th scope="col" class="text-primary">÷������</th>
				<td>
				 <c:if test="${prodInfo.pdtImg != null}">
				  <img width="200px" src="images/${prodInfo.pdtImg}">
				 </c:if>
				 <input type="file" name="img">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<button class="btn btn-primary me-md-2" type="submit">����</button>
					<button class="btn btn-primary me-md-2" type="button"
						onclick="location.href='prodList.do'">����</button>
				</td>
			</tr>
		</table>
	</form>
</div>