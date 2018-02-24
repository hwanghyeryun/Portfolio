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
				<li><a href="main" >HOME</a></li>
				<li><a href="translate">TRANSLATE</a></li>
				<li class="active"><a href="word" class="smooth-scroll">WORD</a></li>
				<li><a href="contact">CONTACT</a></li>
			</ul>
		</div><!-- /.navbar-collapse -->
	</div><!-- /.container-fluid -->
</nav>

<div class="container">
	<div class="row">
		<h1 align="center">단어장</h1>
			<table border="1" align="center" width="800" style="font-size: 14pt" >
				<tr align="center"><td width="50">No.</td><td>번역 전</td><td>번역 후</td></tr>
				<c:set var="no" value="${list.totalCount - (list.currentPage -1) * list.pageSize}"/>
				<c:forEach var="vo" items="${list.list}">
					<tr><td>${no}</td><td>&nbsp;${vo.before}</td><td>&nbsp;${vo.after}</td>
				<c:set var="no" value="${no - 1}"/>
				</c:forEach>
				<tr>
					<td colspan="5" align="center">
					
					<!-- startPage가 1 보다 크다면 이전 10 페이지가 있다. -->
					<c:if test="${list.startPage > 1}">
						<input type="button" value="start" onclick="location.href='?currentPage=1'"/>
						<input type="button" value="-10" onclick="location.href='?currentPage=${list.startPage - 1}'"/>
					</c:if>
					<c:if test="${list.startPage <= 1}">
						<input type="button" value="start" disabled="disabled"/>
						<input type="button" value="-10" disabled="disabled"/>
					</c:if>
					
					<!-- currentPage가 1 보다 크다면 이전 페이지가 있다. -->
					<c:if test="${list.currentPage > 1}">
						<input type="button" value="-1" onclick="location.href='?currentPage=${list.currentPage - 1}'"/>
					</c:if>
					<c:if test="${list.currentPage <= 1}">
						<input type="button" value="-1" disabled="disabled"/>
					</c:if>
					
					<!-- 10 페이지 단위로 페이지 이동 버튼 표시하기 -->
					<c:forEach var="i" begin="${list.startPage}" end="${list.endPage}" step="1">
						<c:if test="${list.currentPage == i}">
							<input type="button" value="${i}" disabled="disabled"/>
						</c:if>
						<c:if test="${list.currentPage != i}">
							<input type="button" value="${i}" onclick="location.href='?currentPage=${i}'"/>
						</c:if>
					</c:forEach>
					
					<!-- currentPage가 totalPage 보다 작다면 다음 페이지가 있다. -->
					<c:if test="${list.currentPage < list.totalPage}">
						<input type="button" value="+1" 
								onclick="location.href='?currentPage=${list.currentPage + 1}'"/>
					</c:if>
					<c:if test="${list.currentPage >= list.totalPage}">
						<input type="button" value="+1" disabled="disabled"/>
					</c:if>
					
					<!-- endPage가 totalPage 보다 작다면 다음 10 페이지가 있다. -->
					<c:if test="${list.endPage < list.totalPage}">
						<input type="button" value="+10" 
								onclick="location.href='word?currentPage=${list.endPage + 1}'"/>
						<input type="button" value="end" 
								onclick="location.href='word?currentPage=${list.totalPage}'"/>
					</c:if>
					<c:if test="${list.endPage >= list.totalPage}">
						<input type="button" value="+10" disabled="disabled"/>
						<input type="button" value="end" disabled="disabled"/>
					</c:if>
					</td>
				</tr>
			</table>	
		<br /><br /><br /><br />
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
<script type="text/javascript" src="https://www.shieldui.com/shared/components/latest/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="https://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
	

</body>
</html>