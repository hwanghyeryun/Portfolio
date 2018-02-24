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

<script type="text/javascript">
	function sc(){
		f=document.form;
		if(f.trans.value == "en"){	
			f.target.value="en";
		}else if(f.trans.value == "ch"){		//중국어
			f.target.value="zh-CN";
		}else if(f.trans.value == "ja"){		//일어
			f.target.value="ja";
		}else if(f.trans.value == "es"){		//스페인어
			f.target.value="es";
		}else if(f.trans.value == "fr"){		//프랑스어
			f.target.value="fr";
		}else {
			f.target.value="ko";
		}

		return true;
	
	}

</script>
<title>황혜련 포트폴리오</title>
</head>

<body>
<%

	String after = "", before="" , target = "", source="";
	try{
		
 		source = (String)session.getAttribute("source");
		before = (String)session.getAttribute("before");
		after = (String)session.getAttribute("after");
 		target = (String)session.getAttribute("target");
// 		out.println("source:" + source);
// 		out.println("target:" + target);
 		
	}catch(Exception e){	}
	if(source == null)
		session.setAttribute("source","ko");
	if(before == null)
		before = "";
	if(target == null)
		session.setAttribute("target", "en");
	if(after == null)
		after = "";
	
	%>
	
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
				<li><a href="trans">번역기</a></li>
				<li class="active"><a href="translate" class="smooth-scroll">번역기 실행</a></li>
				<li><a href="contact">황혜련</a></li>
			</ul>
		</div><!-- /.navbar-collapse -->
	</div><!-- /.container-fluid -->
</nav>

<div class="container">
	<div class="row">
		<div class="col-md-5">
			<br/>
			<br/>
			<h2>번역기 실행</h2>
			<br/>
			<br/>
			<p class="text-justify">
			이클립스로 만들었던 번역기프로젝트를 이 페이지에서 실행가능하게 하기 위해 MVC방식으로 변환시킨것입니다.
			</p>
			<br/>
			<ul style="color: #999999;">
			  <li>ENGLISH</li>
			  <li>JAPANESE</li>
			  <li>CHINESE</li>
			  <li>SPANISH</li>
			  <li>FRENCH</li>
			</ul>
			<br/>
		</div>
		<form action="ok" method="post" onsubmit="return sc();" name="form">
		<input type="hidden" name="source" value="${source}"/>
		<input type="hidden" name="target" value="${target}"/>
		<div class="col-md-7">
			<table border="1" width="400" >
				<tr>
					<h1>&nbsp;&nbsp;&nbsp;</h1>
					<th colspan="2" width="400" align="right" bgcolor="white">
						<select name="trans">
							<c:if test="${target.equals('en')}">
								<option value="en" selected="selected">ENGLISH</option>
							</c:if>
							<c:if test="${!target.equals('en')}">
								<option value="en">ENGLISH</option>
							</c:if>
							<c:if test="${target.equals('zh-CN')}">
								<option value="ch" selected="selected">CHINA</option>
							</c:if>
							<c:if test="${!target.equals('zh-CN')}">
								<option value="ch">CHINA</option>
							</c:if>
							<c:if test="${target.equals('ja')}">
								<option value="ja" selected="selected">JAPAN</option>
							</c:if>
							<c:if test="${!target.equals('ja')}">
								<option value="ja">JAPAN</option>
							</c:if>
							<c:if test="${target.equals('es')}">
								<option value="es" selected="selected">SPAIN</option>
							</c:if>
							<c:if test="${!target.equals('es')}">
								<option value="es">SPAIN</option>
							</c:if>
							<c:if test="${target.equals('fr')}">
								<option value="fr" selected="selected">FRANCE</option>
							</c:if>
							<c:if test="${!target.equals('fr')}">
								<option value="fr">FRANCE</option>
							</c:if>
						</select>
					</th>
				</tr>
				<tr >
					<c:if test="${source.equals('ko')}">
						<td colspan="2" align="center" bgcolor="white">한국어</td>
					</c:if>
				</tr>
				<tr>
					<td colspan="2"><textarea rows="10" cols="54" name="before"><%=before%></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="center" style="border:0px;" bgcolor="white"><input type="submit" value="번역"/></td>
				</tr>
				<tr>
					<c:if test="${target.equals('en')}">
						<td colspan="2" align="center" bgcolor="white">영어</td>
					</c:if>
					<c:if test="${target.equals('zh-CN')}">
						<td colspan="2" align="center" bgcolor="white">중국어</td>
					</c:if>
					<c:if test="${target.equals('ja')}">
						<td colspan="2" align="center" bgcolor="white">일본어</td>
					</c:if>
					<c:if test="${target.equals('es')}">
						<td colspan="2" align="center" bgcolor="white">스페인어</td>
					</c:if>
					<c:if test="${target.equals('fr')}">
						<td colspan="2" align="center" bgcolor="white">프랑스어</td>
					</c:if>
				</tr>
				<tr>
					<td colspan="2"><textarea rows="10" cols="54" name="after" readonly="readonly"><%=after%></textarea></td>
				</tr>
			</table>
			<br /><br /><br /><br />
		</div>
		</form>
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