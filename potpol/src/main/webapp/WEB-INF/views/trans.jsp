<%@page import="java.net.URLEncoder"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="resources/fonts/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="resources/css/theme.css" rel="stylesheet">
	<link id="themecss" rel="stylesheet" type="text/css" href="https://www.shieldui.com/shared/components/latest/css/dark/all.min.css" />
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

<title>황혜련 포트폴리오</title>
</head>

<body>

	
<!-- Navbar -->
<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a href="main" title="HR Studio"> <img class="img-responsive" src="resources/images/logo.png" alt="HR Studio" /></a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="game">미니 게임 천국</a></li>
				<li class="active"><a href="trans" class="smooth-scroll">번역기</a></li>
				<li><a href="translate">번역기 실행</a></li>
				<li><a href="contact">황혜련</a></li>
			</ul>
		</div><!-- /.navbar-collapse -->
	</div><!-- /.container-fluid -->
</nav>

<div class="container">
	<div>
		<br/>
		<p style="font-weight: bold; font-size: 50px" align="center">번역기</p>
	</div>
	<div class="row">
		<div class="col-md-7">
		<br/><br/>
			<img src="resources/images/trans1.png" class="img-responsive center-block" />
		</div>
		<div class="col-md-5">
			<div>
				<h2>개발 환경</h2><br/>
				<p style="color: #999999;">Eclipse, Sqldeveloper</p>
				<p style="color: #999999;">Jsp, Javascript</p>
				<p style="color: #999999;">Apache Tomcat v8.0</p>
				<p style="color: #999999;">Oracle, MyBatis</p>
				<p style="color: #999999;">NAVER API</p>
			</div>
			<div>
				<br/>
				<h2>About Project</h2><br/>
					<p style="color: #999999;">프로젝트 기간 : 2018.01.29 ~ 2018.02.02</p>
					<p style="color: #999999;">목표 : API를  경험해보고 싶어서 만들게 되었습니다.</p>
					<p style="color: #999999;">개발 언어는 Jsp이며, 개발도구로 Eclipse를 선택했습니다.</p>
					<p style="color: #999999;">DBMS는 Oracle을 이용했고, Mybatis방식으로 구성했습니다.</p>
					<p style="color: #999999;">글을 입력하고 번역버튼을 누르면 번역된 문구가 나타납니다.</p>
					<p style="color: #999999;">저장버튼을 누르면 DB에 저장됩니다.</p>
				<br/>
			</div>
		</div>
	</div>
	
	<div class="row">
		<h2>Project library</h2>
	</div>
	
	<div class="row">
		<div class="col-md-7">
			<br/>
			<img src="resources/images/translib.PNG" class="img-responsive pull-left" />
		</div>
		<div class="row">
			<div class="col-md-5">
				<br/><br/>
					<h4 style="font-weight: bold;">mybatis package</h4>
					<p style="color: #999999;">MySession.java는 mapper를 생성하고 SqlSession객체를 얻어오는 함수가 선언되어 있습니다.<br/></p>
					<p style="color: #999999;">db.properties와 SqlConfig.xml에는 데이터베이스정보가 들어있습니다.<br/></p>
					<p style="color: #999999;">data.xml은 sql문이 저장되어있는 파일입니다.<br/></p>
					<h4 style="font-weight: bold;">VO/List/DAO/Service</h4>
					<p style="color: #999999;">VO는 변수 선언과 그 변수의 getter(), setter()를 생성해준 파일입니다.<br/></p>
					<p style="color: #999999;">List는 페이지를 나누기위해 필요한 변수와 VO타입으로 값을 받기위한<br/>
												ArrayList가 선언되어 있으며 마찬가지로 getter()와 setter()가 만들어져있습니다.<br/></p>
					<p style="color: #999999;">DAO는 실질적으로 DB로 접근하는 파일입니다.<br/></p>
					<p style="color: #999999;">Service는 DAO와 사용자를 연결해줍니다.<br/></p>
					<h4 style="font-weight: bold;">번역 과정</h4>
					<p style="color: #999999;">form.jsp->change.jsp->trans.java->change.jsp->form.jsp<br/><br/></p>
					<h4 style="font-weight: bold;">저장 과정</h4>
					<p style="color: #999999;">form.jsp->data.jsp->dataService.java->dataDAO.java<br/>->data.xml(insert문)<br/><br/></p>
					<h4 style="font-weight: bold;">단어장 출력</h4>
					<p style="color: #999999;">form.jsp->list.jsp->dataService.java->dataDAO.java<br/>->data.xml(select문)<br/><br/></p>
			</div>
		</div>
	</div>
	<div class="row">
		<h2>Json데이터 Parsing방법</h2>
	</div>
	<div class="row">
		<div class="col-md-7">
			<br/>
			<img src="resources/images/parse.PNG" class="img-responsive pull-left" />
		</div>
		<div class="row">
			<div class="col-md-5">
				<br/><br/><br/>
				<p style="color: #999999;">
					결과값이 Json데이터로 나오기 때문에 json라이브러리를 추가하여 JSONParser()를 이용해 파싱했습니다.				
				</p>
				<br/><br/><br/>
			</div>
		</div>
	</div>
	<div class="row">
		<h2>발생하는 에러</h2><br/>
	</div>
	<div class="row">
		<div class="col-md-7">
			<div class="col-md-6">
				<img src="resources/images/err.PNG" class="img-responsive pull-left" />
			</div>
			<div class="col-md-6">
				<img src="resources/images/null.PNG" class="img-responsive pull-left" />
			</div>
		</div>
		<div class="row">
			<div class="col-md-5">
				<p style="color: #999999;">
					<br/>번역할 문구를 입력하지 않았을 때에는 왼쪽과 같이 결과값이 출력됩니다. 이러한 부분을 '번역할 내용을 입력해주세요.'라는 문구가 표시되게끔 수정했습니다. 				
				</p>
			</div>
		</div>
	</div>
	
	<div class="row">
		<br/><h2>단어장</h2><br/>
	</div>
	<div class="row">
		<div class="col-md-7">
			<img src="resources/images/book.PNG" class="img-responsive pull-left" />
		</div>
		<div class="row">
			<div class="col-md-5">
				<br/><br/><br/><br/><br/><br/>
				<p style="color: #999999;">
					저장버튼을 누르면 정보값을 가지고 data.jsp파일로 넘어갑니다.<br/>
					data.jsp -> dataService.java -> dataDAO.java -> data.xml<br/>
					위와 같은 순서로 xml파일에 접근해 sql문을 실행합니다.<br/>
				</p>
				<br/><br/><br/>
			</div>
		</div>
	</div>
	
	
	
	<br/><br/>
	<div>
		<h2>후기</h2><br/>
		<p style="color: #999999;">
			이 프로젝트를 통해 API가 무엇인지, 어떻게 연동하는 것인지 알게되었습니다.<br/>
			처음 접해보는 json이어서 파싱하는데에 어려움을 겪었지만 해결해냈습니다.<br/>
			DB연동은 공부했던 경험을 살려 익숙하게 sql문을 작성할 수 있었습니다.<br/>
			그저 API를 써보고싶다는 생각에 하게 된 프로젝트라서 번역과 단어장 밖에 만들지 못한 점이 아쉽고 이에 설계 단계에서의 중요성을 알 수 있었습니다.<br/>
		</p>
		<br/><br/>
	</div>
	
</div>

<footer id="subfooter" class="clearfix">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <p style="font-size:18px;"><span class="fa fa fa-laptop"></span> List</p>
                <p>미니 게임 천국</p>
                <p>번역기</p>
                <p>번역기 실행</p>
                <p>황혜련</p>
            </div>
            <div class="col-md-3">
                <p style="font-size:18px;"><span class="fa fa-clock-o"></span>Portfolio</p>
                <p>Hello My name is Heidi.</p>
                <p>This site show you about my portfolio</p>
				<p>I really want to work in your company and I have a strong passion.</p>
                <p>Thank you</p>
            </div>
			<div class="col-md-3">
                <p style="font-size:18px;"><span class="fa fa-map-marker"></span> CONTACTS</p>
                <p>Seoul, Republic of Korea</p>
                <p>+82 010 3176 1375</p>
                <p><a href="mailto:rabbith3@naver.com">rabbith3@naver.com</a></p>
            </div>
        </div>
    </div>
</footer>

<footer id="footer" class="clearfix">
    <div class="container">
        <div class="row">
            <div class="col-md-4" align="right">
                <p>Created by <a href="https://www.shieldui.com" title="Shield UI">Shield UI</a> and hosted by <a href="https://www.prepbootstrap.com" title="PrepBootstrap">PrepBootstrap</a></p>
            </div>
        </div>
    </div>
</footer>

<script src="resources/js/jquery.min.js"></script>
<script src="resources/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>