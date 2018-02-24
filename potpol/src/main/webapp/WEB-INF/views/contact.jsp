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
				<li><a href="trans">번역기</a></li>
				<li><a href="translate">번역기 실행</a></li>
				<li class="active"><a href="contact" class="smooth-scroll">황혜련</a></li>
			</ul>
		</div><!-- /.navbar-collapse -->
	</div><!-- /.container-fluid -->
</nav>

<div class="container-contacts">
    <div class="container">	
		<br/>
		<br/>
        <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INTRODUCTION</h2>
        <div class="row">
            <div class="col-md-6">
                <br />
                <div align="center">
                	<img src="resources/images/me.jpg" width="40%"/>
                </div>
            </div>
            <div class="col-md-6">
                <br />
                <form>
                    <div class="form-group">
                        <label for="form-name">Name</label>
                        <input type="text" class="form-control" id="form-name" placeholder="Name" value="황혜련" readonly="readonly">
                    </div>
                    <div class="form-group">
                        <label for="form-subject">Birth</label>
                        <input type="text" class="form-control" id="form-subject" placeholder="Subject" value="1994.12.03" readonly="readonly">
                    </div>
                    <div class="form-group">
                        <label for="form-email">Email Address</label>
                        <input type="text" class="form-control" id="form-email" placeholder="Email Address" value="rabbith3@naver.com" readonly="readonly">
                    </div>
                    <div class="form-group">
                        <label for="form-email">Phone Number</label>
                        <input type="text" class="form-control" id="form-email" placeholder="Email Address" value="010-3176-1375" readonly="readonly">
                    </div>
                </form>
                <br /><br />
            </div>
        </div>
    </div>
    <div class="clearfix hidden-xs" style="width:100%; height:30px;"></div>
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