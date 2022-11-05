<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="site-mobile-menu site-navbar-target">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close">
				<span class="icofont-close js-menu-toggle"></span>
			</div>
		</div>
		<div class="site-mobile-menu-body"></div>
	</div>

	<nav class="site-nav">
		<div class="container">
			<div class="row justify-content-between">
				<div class="col-2">
					<a href="main.do" class="logo"> <img
						src="images/icon/Logo_petckage_XL.png" class="img-fluid"></a>
				</div>
				<div class="col-1 site-navigation">
				
					<ul
						class="js-clone-nav d-none d-lg-inline-noone text-left site-menu">
						<li class="active"><a href="index.jsp">Home</a></li>
                    <form action="search.do" method="post">
                        <div style="text-align: center; margin: 10px;">
                            <input type="text" name="search" maxlength="5">&nbsp;&nbsp;&nbsp;<input type="submit" value="검색">
                        </div>
                    </form>
						<li class="has-children"><a href="productlist.do?more=12&iid=053">강아지</a>
							<ul class="dropdown">
								<li class="has-children"><a href="productlist.do?iid=053001&more=12">사료</a>
									<ul class="dropdown">
										<li><a href="productlist.do?iid=053001001&more=12">건식</a></li>
										<li><a href="productlist.do?iid=053001002&more=12">소프트</a></li>
										<li><a href="productlist.do?iid=053001003&more=12">습식</a></li>
										<li><a href="productlist.do?iid=053001004&more=12">건조</a></li>
										<li><a href="productlist.do?iid=053001005&more=12">분유</a></li>
									</ul></li>
								<li class="has-children"><a href="productlist.do?iid=053002&more=12">간식</a>
									<ul class="dropdown">
										<li><a href="productlist.do?iid=053002001&more=12">껌</a></li>
										<li><a href="productlist.do?iid=053002002&more=12">사사미</a></li>
										<li><a href="productlist.do?iid=053002003&more=12">저키/트릿</a></li>
										<li><a href="productlist.do?iid=053002004&more=12">비스킷/시리얼</a></li>
										<li><a href="productlist.do?iid=053002005&more=12">소시지</a></li>
										<li><a href="productlist.do?iid=053002006&more=12">캔/파우치</a></li>
										<li><a href="productlist.do?iid=053002007&more=12">건조 간식</a></li>
										<li><a href="productlist.do?iid=053002008&more=12">수제간식</a></li>
										<li><a href="productlist.do?iid=053002009&more=12">파우더</a></li>
										<li><a href="productlist.do?iid=053002010&more=12">음료</a></li>
									</ul></li>
								<li class="has-children"><a href="productlist.do?iid=053003&more=12">건강관리</a>
									<ul class="dropdown">
										<li><a href="productlist.do?iid=053003001&more=12">종합영양제</a></li>
										<li><a href="productlist.do?iid=053003002&more=12">치아</a></li>
										<li><a href="productlist.do?iid=053003003&more=12">피부/털</a></li>
										<li><a href="productlist.do?iid=053003004&more=12">뼈/관절</a></li>
										<li><a href="productlist.do?iid=053003005&more=12">눈/귀</a></li>
										<li><a href="productlist.do?iid=053003006&more=12">소화기</a></li>
										<li><a href="productlist.do?iid=053003007&more=12">신장/요로</a></li>
										<li><a href="productlist.do?iid=053003008&more=12">심장/심신 안정</a></li>
										<li><a href="productlist.do?iid=053003009&more=12">해충 방지</a></li>
									</ul></li>
								<li class="has-children"><a href="productlist.do?iid=053004&more=12">위생/배변</a>
									<ul class="dropdown">
										<li><a href="productlist.do?iid=053004001&more=12">배변패드</a></li>
										<li><a href="productlist.do?iid=053004002&more=12">배변판</a></li>
										<li><a href="productlist.do?iid=053004003&more=12">기저귀/팬티</a></li>
										<li><a href="productlist.do?iid=053004004&more=12">탈취/소독</a></li>
										<li><a href="productlist.do?iid=053004005&more=12">물티슈/크리너</a></li>
										<li><a href="productlist.do?iid=053004006&more=12">배변봉투/집게</a></li>
										<li><a href="productlist.do?iid=053004007&more=12">배변 유도제</a></li>
										<li><a href="productlist.do?iid=053004008&more=12">공기 청정</a></li>
									</ul></li>
								<li class="has-children"><a href="productlist.do?iid=053005&more=12">미용/목욕</a>
									<ul class="dropdown">
										<li><a href="productlist.do?iid=053005001&more=12">샴푸/린스</a></li>
										<li><a href="productlist.do?iid=053005002&more=12">에센스/향수</a></li>
										<li><a href="productlist.do?iid=053005003&more=12">브러쉬/거치대</a></li>
										<li><a href="productlist.do?iid=053005004&more=12">클리퍼</a></li>
										<li><a href="productlist.do?iid=053005005&more=12">미용가위</a></li>
										<li><a href="productlist.do?iid=053005006&more=12">발톱/발</a></li>
										<li><a href="productlist.do?iid=053005007&more=12">관리 타월/가운</a></li>
										<li><a href="productlist.do?iid=053005008&more=12">염색약/그루밍 파우더</a></li>
										<li><a href="productlist.do?iid=053005009&more=12">드라이</a></li>
										<li><a href="productlist.do?iid=0530050010&more=12">테이블</a></li>
										<li><a href="productlist.do?iid=0530050011&more=12">식기/식탁</a></li>
									</ul></li>
								<li class="has-children"><a href="productlist.do?iid=053006&more=12">급식기/급수</a>
									<ul class="dropdown">
										<li><a href="productlist.do?iid=053006001&more=12">자동급식기</a></li>
										<li><a href="productlist.do?iid=053006002&more=12">급수기/물병</a></li>
										<li><a href="productlist.do?iid=053006003&more=12">정수기/필터</a></li>
									</ul></li>
								<li class="has-children"><a href="productlist.do?iid=053007&more=12">하우스/울타리</a>
									<ul class="dropdown">
										<li><a href="productlist.do?iid=053007001&more=12">보관통/사료스푼</a></li>
										<li><a href="productlist.do?iid=053007002&more=12">젖병 필건/디스펜서</a></li>
										<li><a href="productlist.do?iid=053007003&more=12">하우스 방석/매트 계단</a></li>
										<li><a href="productlist.do?iid=053007004&more=12">철장/울타리</a></li>
										<li><a href="productlist.do?iid=053007005&more=12">안전문</a></li>
									</ul></li>
								<li class="has-children"><a href="productlist.do?iid=053008&more=12">이동장</a>
									<ul class="dropdown">
										<li><a href="productlist.do?iid=053008001&more=12">이동 가방</a></li>
										<li><a href="productlist.do?iid=053008002&more=12">유모차</a></li>
										<li><a href="productlist.do?iid=053008003&more=12">차량용</a></li>
									</ul></li>
								<li class="has-children"><a href="productlist.do?iid=053009&more=12">의류/악세사리</a>
									<ul class="dropdown">
										<li><a href="productlist.do?iid=053009001&more=12">티셔츠</a></li>
										<li><a href="productlist.do?iid=053009002&more=12">후드티</a></li>
										<li><a href="productlist.do?iid=053009003&more=12">패딩/코트</a></li>
										<li><a href="productlist.do?iid=053009004&more=12">원피스</a></li>
										<li><a href="productlist.do?iid=053009005&more=12">올인원</a></li>
										<li><a href="productlist.do?iid=053009006&more=12">신발/양말</a></li>
										<li><a href="productlist.do?iid=053009007&more=12">스카프/타이/넥</a></li>
										<li><a href="productlist.do?iid=053009008&more=12">모자/헬멧</a></li>
										<li><a href="productlist.do?iid=053009009&more=12">백팩/벨트</a></li>
										<li><a href="productlist.do?iid=0530090010&more=12">옷걸이/보관함</a></li>
									</ul></li>
								<li class="has-children"><a href="productlist.do?more=12&iid=053010">목줄/인식표/리드줄</a>
									<ul class="dropdown">
										<li><a href="productlist.do?more=12&iid=053010001">목줄</a></li>
										<li><a href="productlist.do?more=12&iid=053010002">가슴줄</a></li>
										<li><a href="productlist.do?more=12&iid=053010003">인식표</a></li>
										<li><a href="productlist.do?more=12&iid=053010004">리드줄</a></li>
									</ul></li>
								<li class="has-children"><a href="productlist.do?more=12&iid=053011">장난감</a>
									<ul class="dropdown">
										<li><a href="productlist.do?more=12&iid=053011001">봉제 장난감</a></li>
										<li><a href="productlist.do?more=12&iid=053011002">치실 장난감</a></li>
										<li><a href="productlist.do?more=12&iid=053011003">고무 장난감</a></li>
										<li><a href="productlist.do?more=12&iid=053011004">공기 청정</a></li>
										<li><a href="productlist.do?more=12&iid=053011005">원반</a></li>
									</ul></li>
								<li class="has-children"><a href="productlist.do?more=12&iid=053012">훈련</a>
									<ul class="dropdown">
										<li><a href="productlist.do?more=12&iid=053012001">짖음 제어</a></li>
										<li><a href="productlist.do?more=12&iid=053012002">행동 제어</a></li>
										<li><a href="productlist.do?more=12&iid=053012003">서적</a></li>
									</ul></li>
							</ul></li>
						<li class="has-children"><a href="productlist.do?more=10&iid=052">냥냥이</a>
							<ul class="dropdown">
								<li class="has-children"><a href="productlist.do?more=10&iid=052001">사료</a>
									<ul class="dropdown">
										<li><a href="productlist.do?more=12&iid=052001001">건식 사료</a></li>
										<li><a href="productlist.do?more=12&iid=052001002">캔</a></li>
										<li><a href="productlist.do?more=12&iid=052001003">파우치</a></li>
										<li><a href="productlist.do?more=12&iid=052001004">건조생식</a></li>
										<li><a href="productlist.do?more=12&iid=052001005">분유</a></li>
									</ul></li>
								<li class="has-children"><a href="productlist.do?more=12&iid=052002">간식</a>
									<ul class="dropdown">
										<li><a href="productlist.do?more=12&iid=052002001">캔</a></li>
										<li><a href="productlist.do?more=12&iid=052002002">파우치</a></li>
										<li><a href="productlist.do?more=12&iid=052002003">건조 간식</a></li>
										<li><a href="productlist.do?more=12&iid=052002004">저키/트릿</a></li>
										<li><a href="productlist.do?more=12&iid=052002005">통살/소시지</a></li>
										<li><a href="productlist.do?more=12&iid=052002006">스낵</a></li>
										<li><a href="productlist.do?more=12&iid=052002007">캣닢/그라스</a></li>
										<li><a href="productlist.do?more=12&iid=052002008">음료</a></li>
									</ul></li>
								<li class="has-children"><a href="productlist.do?more=12&iid=052003">건강관리</a>
									<ul class="dropdown">
										<li><a href="productlist.do?more=12&iid=052003001">헤어볼</a></li>
										<li><a href="productlist.do?more=12&iid=052003002">종합영양제</a></li>
										<li><a href="productlist.do?more=12&iid=052003003">치아</a></li>
										<li><a href="productlist.do?more=12&iid=052003004">피부/털</a></li>
										<li><a href="productlist.do?more=12&iid=052003005">신장/요로</a></li>
										<li><a href="productlist.do?more=12&iid=052003006">심장/심신 안정</a></li>
										<li><a href="productlist.do?more=12&iid=052003007">소화기</a></li>
										<li><a href="productlist.do?more=12&iid=052003008">뼈/관절</a></li>
										<li><a href="productlist.do?more=12&iid=052003009">눈/귀 해충 방지</a></li>
										<li><a href="productlist.do?more=12&iid=052003010">서적</a></li>
									</ul></li>
								<li class="has-children"><a href="productlist.do?more=12&iid=052004">모래</a>
									<ul class="dropdown">
										<li><a href="productlist.do?more=12&iid=052004001">응고형 모래</a></li>
										<li><a href="productlist.do?more=12&iid=052004002">흡수형 모래</a></li>
										<li><a href="productlist.do?more=12&iid=052004003">모래 탈취제</a></li>
									</ul></li>
								<li class="has-children"><a href="productlist.do?more=12&iid=052005">위생/배변</a>
									<ul class="dropdown">
										<li><a href="productlist.do?more=12&iid=052005001">하우스형 화장실</a></li>
										<li><a href="productlist.do?more=12&iid=052005002">평판형 화장실</a></li>
										<li><a href="productlist.do?more=12&iid=052005003">모래삽</a></li>
										<li><a href="productlist.do?more=12&iid=052005004">화장실 매트</a></li>
										<li><a href="productlist.do?more=12&iid=052005005">배변패드</a></li>
										<li><a href="productlist.do?more=12&iid=052005006">탈취/소독</a></li>
										<li><a href="productlist.do?more=12&iid=052005007">거름망</a></li>
										<li><a href="productlist.do?more=12&iid=052005008">분변 처리</a></li>
										<li><a href="#">공기 청정</a></li>
									</ul></li>
								<li class="has-children"><a href="productlist.do?more=12&iid=052006">미용/목욕</a>
									<ul class="dropdown">
										<li><a href="productlist.do?more=12&iid=052006001">샴푸/린스</a></li>
										<li><a href="productlist.do?more=12&iid=052006002">브러쉬</a></li>
										<li><a href="productlist.do?more=12&iid=052006003">발톱/발</a></li>
										<li><a href="productlist.do?more=12&iid=052006004">관리</a></li>
										<li><a href="productlist.do?more=12&iid=052006005">클리퍼/가위</a></li>
										<li><a href="productlist.do?more=12&iid=052006006">물티슈/크리너</a></li>
										<li><a href="productlist.do?more=12&iid=052006007">타월</a></li>
										<li><a href="productlist.do?more=12&iid=052006008">에센스/향수</a></li>
										<li><a href="productlist.do?more=12&iid=052006009">드라이</a></li>
										<li><a href="productlist.do?more=12&iid=052006010">테이블</a></li>
									</ul></li>
								<li class="has-children"><a href="productlist.do?more=12&iid=052007">급식기/급수기</a>
									<ul class="dropdown">
										<li><a href="productlist.do?more=12&iid=052007001">식기/식탁</a></li>
										<li><a href="productlist.do?more=12&iid=052007002">자동급식기</a></li>
										<li><a href="productlist.do?more=12&iid=052007003">급수기/물병</a></li>
										<li><a href="productlist.do?more=12&iid=052007004">정수기/필터</a></li>
										<li><a href="productlist.do?more=12&iid=052007005">보관 통/사료 스푼</a></li>
										<li><a href="productlist.do?more=12&iid=052007006">식기 매트</a></li>
										<li><a href="productlist.do?more=12&iid=052007007">필건/디스펜서</a></li>
									</ul></li>
								<li class="has-children"><a href="productlist.do?more=12&iid=052008">스크래쳐/캣타워</a>
									<ul class="dropdown">
										<li><a href="productlist.do?more=12&iid=052008001">스크래쳐</a></li>
										<li><a href="productlist.do?more=12&iid=052008002">캣타워</a></li>
										<li><a href="productlist.do?more=12&iid=052008003">리필/로프</a></li>
									</ul></li>
								<li class="has-children"><a href="productlist.do?more=12&iid=052009">하우스</a>
									<ul class="dropdown">
										<li><a href="productlist.do?more=12&iid=052009001">동굴형 하우스</a></li>
										<li><a href="productlist.do?more=12&iid=052009002">방석/매트</a></li>
										<li><a href="productlist.do?more=12&iid=052009003">철장/울타리</a></li>
									</ul></li>
								<li class="has-children"><a href="productlist.do?more=12&iid=052010">이동장</a>
									<ul class="dropdown">
										<li><a href="productlist.do?more=12&iid=052010001">이동 가방</a></li>
										<li><a href="productlist.do?more=12&iid=052010002">유모차</a></li>
										<li><a href="productlist.do?more=12&iid=052010003">차량용</a></li>
									</ul></li>
								<li class="has-children"><a href="productlist.do?more=12&iid=052011">의류/악세사리</a>
									<ul class="dropdown">
										<li><a href="productlist.do?more=12&iid=052011001">스카프/타이/넥</a></li>
										<li><a href="productlist.do?more=12&iid=052011002">목걸이</a></li>
										<li><a href="productlist.do?more=12&iid=052011003">모자/헬멧</a></li>
									</ul></li>
								<li class="has-children"><a href="productlist.do?more=12&iid=052012">목줄/가슴줄</a>
									<ul class="dropdown">
										<li><a href="productlist.do?more=12&iid=052012001">목줄</a></li>
										<li><a href="productlist.do?more=12&iid=052012002">가슴줄</a></li>
									</ul></li>
								<li class="has-children"><a href="productlist.do?more=12&iid=052013">장난감</a>
									<ul class="dropdown">
										<li><a href="productlist.do?more=12&iid=052013001">낚시/막대</a></li>
										<li><a href="productlist.do?more=12&iid=052013002">인형/쿠션</a></li>
										<li><a href="productlist.do?more=12&iid=052013003">공기 청정</a></li>
										<li><a href="productlist.do?more=12&iid=052013004">터널/주머니</a></li>
										<li><a href="productlist.do?more=12&iid=052013005">레이저/자동</a></li>
										<li><a href="productlist.do?more=12&iid=052013006">리필/로프</a></li>
									</ul></li>
							</ul></li>
					</ul>
					<a href="#"
						class="burger ml-auto float-right site-menu-toggle js-menu-toggle d-inline-block d-lg-block"
						data-toggle="collapse" data-target="#main-navbar"> <span></span>
					</a>
				</div>
			</div>
		</div>
	</nav>
		
	<c:if test="${mid==null}">
	<div class="custom-hero">
        <div class="container">
            <div style="padding-bottom: 5px;">
                <a href="login.jsp"><img src="images/pictogram/lock-16.png" alt="Image">로그인</a> 
                    <a href="login.jsp"><img src="images/pictogram/user-16.png" alt="Image">마이페이지</a> 
                    <a href="login.jsp"><img src="images/pictogram/shopping-cart-16.png" alt="Image">장바구니</a>
            </div>
        </div>
    </div>
    </c:if>
    <c:if test="${mid!=null}">
    <div class="custom-hero">
        <div class="container">
            <div style="padding-bottom: 5px;">
                <a href="logout.do"><img src="images/pictogram/unlock-16.png"
                    alt="Image">로그아웃</a> <a href="mypage.do"><img
                    src="images/pictogram/user-16.png" alt="Image">마이페이지</a> <a
                    href="cart.jsp"><img
                    src="images/pictogram/shopping-cart-16.png" alt="Image">장바구니</a>
            </div>
        </div>
    </div>
    </c:if>
