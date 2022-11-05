<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="container">
	<div class="row mb-4 align-items-center">
		<div class="col-6">
			<h2 class="line-top" style="font-weight: bold">
				<span style="color: #FF4081">HOT</span> 신상
			</h2>
		</div>

	</div>

	<div>
		<div class="owl-4-slider owl-carousel">

				<c:forEach var="i" items="${ITEMN}">
					<div class="product">
						<a href="detail.do?iid=${i.iid}" class="d-block"> <img
							src="${i.iimg}" alt="Image"
							class="img-fluid">
						</a>
						<div class="text-center text-md-left">
							<h3 class=pname>${i.iname}</h3>
							<p class="p_price">
								${i.iprice}
							</p>
						</div>
					</div>
				</c:forEach>

		</div>
	</div>
</div>