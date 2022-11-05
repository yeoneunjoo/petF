<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

 	<a href="detail.do">
 <c:forEach var="i" items="${ITEM}">
		<div class="col-md-6 mb-5 mb-lg-5 col-lg-4">
			<div class="blog_entry">
				<img src="${i.iimg}" alt="Free Website Template by Untree.co" class="img-fluid">
				<div class="p-4 bg-white">
					<h3 style="text-align: center;">${i.iname}</h3>
					<h3 style="text-align: center;">${i.iprice}</h3>
				</div>
			</div>
		</div>
	</c:forEach>
		</a>

