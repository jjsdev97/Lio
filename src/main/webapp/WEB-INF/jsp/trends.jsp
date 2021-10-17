<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>


<%--jsp 필수!--%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Link In One</title>
<link rel="stylesheet" href="CSS/reset.css" />
<link rel="stylesheet" href="CSS/style.css" />
<script type="text/javascript">
	//a태그를 post 방식으로 전송
	function mySubmit(val){
		var f = document.myForm;
		f.contentPage.value = val;
		f.submit();
	}
	
	//a태그를 post 방식으로 전송
	function mySubmit(val, lang){
		var f = document.myForm2;
		f.contentPage.value = val;
		f.languge.value = lang;
		f.submit();
	}
</script>
</head>
<body>
	<!-- 트렌드 분석 a 태그 안에 post 전송 및 값 전달을 위한 hidden form -->
	<form action="/DataTrendServlet" name="myForm" method="POST">
		<sec:csrfInput />
		<input type="hidden" name="contentPage" value="">	
	</form>
	
	<!-- 트렌드 분석 a 태그 안에 post 전송 및 값 전달을 위한 hidden form -->
	<form action="/DataTrendServlet" name="myForm2" method="POST">
		<sec:csrfInput />
		<input type="hidden" name="contentPage" value="">
		<input type="hidden" name="languge" value="">	
	</form>

	<!-- start login-modal -->
	<form action="/open-login-modal" method="POST">
		<input
				type="hidden"
				th:name="${_csrf.parameterName}"
				th:value="${_csrf.token}"
		/>
		<div class="login-modal" id="open-login-modal">
			<div class="login-modal__content modal-content">
				<a href="#">
					<img
							class="modal-content__close"
							src="/img/close_white_24dp.svg"
							alt="modal-close"
					/>
				</a>
				<input
						type="email"
						name="username"
						placeholder="이메일"
						class="modal-content__input"
				/>
				<input
						type="password"
						name="password"
						placeholder="비밀번호"
						class="modal-content__input"
				/>
				<div class="modal-content_ly1">
					<a
							href="#login-modal-find"
							class="modal-content__box modal-content__box_small"
					>비밀번호 찾기</a
					>
					<a
							href="#login-modal-signup"
							class="modal-content__box modal-content__box_small"
					>회원가입</a
					>
				</div>
				<input
						type="submit"
						class="
              modal-content__box
              modal-content__box_big
              modal-content__first-big-btn
            "
						value="로그인"
				/>
				<a
						href=""
						class="
              modal-content__box modal-content__box_big modal-content__google
            "
				>구글로 로그인</a
				>
				<a
						href=""
						class="
              modal-content__box modal-content__box_big modal-content__naver
            "
				>네이버로 로그인</a
				>
			</div>
		</div>
	</form>
	<form action="" method="POST">
		<div class="login-modal" id="login-modal-find">
			<div class="login-modal__content modal-content">
				<a href="#open-login-modal">
					<img
							class="modal-content__prev"
							src="/img/keyboard_arrow_left_white_24dp.svg"
							alt="modal-prev"
					/>
				</a>
				<a href="#">
					<img
							class="modal-content__close"
							src="/img/close_white_24dp.svg"
							alt="modal-close"
					/>
				</a>
				<input
						type="email"
						placeholder="이메일"
						class="modal-content__input"
				/>
				<input
						type="submit"
						class="
              modal-content__box
              modal-content__box_big
              modal-content__first-big-btn
            "
						value="비밀번호 초기화"
				/>
			</div>
		</div>
	</form>
	<form action="/login-modal-signup" method="POST">
		<input
				type="hidden"
				th:name="${_csrf.parameterName}"
				th:value="${_csrf.token}"
		/>
		<div class="login-modal" id="login-modal-signup">
			<div class="login-modal__content modal-content">
				<a href="#open-login-modal">
					<img
							class="modal-content__prev"
							src="/img/keyboard_arrow_left_white_24dp.svg"
							alt="modal-prev"
					/>
				</a>
				<a href="#">
					<img
							class="modal-content__close"
							src="/img/close_white_24dp.svg"
							alt="modal-close"
					/>
				</a>
				<input
						type="email"
						name="email"
						placeholder="이메일"
						class="modal-content__input"
				/>
				<input
						type="password"
						name="password"
						placeholder="비밀번호"
						class="modal-content__input"
				/>
				<input
						type="text"
						name="name"
						placeholder="이름"
						class="modal-content__input"
				/>
				<input
						type="text"
						name="nickname"
						placeholder="닉네임"
						class="modal-content__input"
				/>
				<input
						type="submit"
						class="
              modal-content__box
              modal-content__box_big
              modal-content__first-big-btn
            "
						value="회원가입"
				/>
			</div>
		</div>
	</form>
	<form action="" method="POST">
		<div class="login-modal" id="tech-modal">
			<div class="login-modal__content modal-content">
				<a href="#">
					<img
							class="modal-content__close"
							src="/img/close_white_24dp.svg"
							alt="modal-close"
					/>
				</a>
				<p class="modal-content__p">
					<span class="font-weight_600">사용자</span>의 팀 찾기 매핑을
					위한<span class="font-weight_600">기술</span>을 등록해주세요.
				</p>
				<label for="tech" class="modal-content__label">언어</label>
				<!-- tech select -->
				<select name="tech" id="tech" class="modal-content__input">
					<option value="선택없음">선택없음</option>
					<option value="Python">Python</option>
					<option value="Java">Java</option>
				</select>
				<div class="">
            <span class="tag"
			>Python<img
					src="/img/close_white_24dp.svg"
					class="tag__close-btn"
			/></span>
					<span class="tag"
					>Java<img src="/img/close_white_24dp.svg" class="tag__close-btn"
					/></span>
				</div>
				<input
						type="submit"
						class="
              modal-content__box
              modal-content__box_big
              modal-content__first-big-btn
            "
						value="등록"
				/>
			</div>
		</div>
	</form>
	<form action="" method="POST">
		<div class="login-modal" id="modify-pw-modal">
			<div class="login-modal__content modal-content">
				<a href="#">
					<img
							class="modal-content__close"
							src="/img/close_white_24dp.svg"
							alt="modal-close"
					/>
				</a>
				<p class="modal-content__p">
					<span class="font-weight_600">비밀번호</span>를
					<span class="font-weight_600">변경</span>하시겠습니까?
				</p>
				<input
						type="password"
						placeholder="기존 비밀번호 입력"
						class="modal-content__input"
				/>
				<input
						type="password"
						placeholder="변경 비밀번호 입력"
						class="modal-content__input"
				/>
				<input
						type="password"
						placeholder="변경 비밀번호 확인"
						class="modal-content__input"
				/>
				<input
						type="submit"
						class="
              modal-content__box
              modal-content__box_big
              modal-content__first-big-btn
            "
						value="비밀번호 변경"
				/>
			</div>
		</div>
	</form>
	<!-- end login-modal -->
	<!-- start header -->

<%--jsp 필수!!--%>

	<sec:authorize access="isAnonymous()"> <script src="../JS/header.js"></script> </sec:authorize>
	<sec:authorize access="isAuthenticated()"> <script src="../JS/header-logined.js"></script> </sec:authorize>



	<!-- end header -->

    <div class="main" style="width: 100%;">
	    <!-- 차트를 보여줌 -->
		<table border="1" style="width: 100%;">
			<tr>
				<td>

					<select onchange="mySubmit(this.value)">
						<option value="">-선택-</option>
					    <option value="graph/userTrend.jsp">이용자들이 습득한 언어</option>
					    <option value="graph/boardTrend.jsp">이용자들이 필요하는 언어</option>
					    <option value="graph/langUserTrend.jsp">시간별 배운 언어 트랜드</option>
					    <option value="graph/langBoardTrend.jsp">시간별 필요로 하는 언어</option>
					</select>
				</td>
			</tr>	
			<tr>
				<td style="display: flex; width: 100%; height: 500px;">
					<jsp:include page="${contentPage}"></jsp:include>
				</td>
			</tr>	
		</table>
    </div>
   
    <!-- footer -->
    <script src="/JS/footer.js"></script>
</body>
</html>