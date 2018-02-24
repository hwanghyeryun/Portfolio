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
				<li class="active"><a href="game" class="smooth-scroll">미니 게임 천국</a></li>
				<li><a href="trans">번역기</a></li>
				<li><a href="translate">번역기실행</a></li>
				<li><a href="contact">황혜련</a></li>
			</ul>
		</div><!-- /.navbar-collapse -->
	</div><!-- /.container-fluid -->
</nav>

<div class="container">
	<div class="row">
		<div class="col-md-7">
			<br/><br/>
			<img src="resources/images/game_main.png" class="img-responsive center-block" />
		</div>
		<div class="col-md-5">
			<br/>
			<br/>
			<h1 style="font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;미니 게임 천국</h1>
			<br/>
			<br/>
			<h2>개발 환경</h2><br/>
			<p style="color: #999999;">Eclipse</p>
			<p style="color: #999999;">MySQL</p>
			<p style="color: #999999;">JAVA</p>
			<br/>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
			<br/>
			<br/>
			<h2>About Project</h2><br/>
				<p style="color: #999999;">프로젝트 기간 : 2017.11.16 ~ 2017.11.30</p>
				<p style="color: #999999;">팀원 6명 [카드게임개발/ 벽돌게임개발/ 러닝게임개발/ DB/ UI/ PPT]</p>
				<p style="color: #999999;">개발 언어는 Java이며, 개발도구로 Eclipse를 선택했습니다.</p>
				<p style="color: #999999;">MySQL을 이용하여 DB연동을 해서 게임별로 점수가 등록되게 했습니다.</p>
				<p style="color: #999999;">세가지 게임을 실행할 수 있는 프로그램입니다.</p>
				<p style="color: #999999;">메인화면에서 게임을 선택할 수 있으며 게임시작 버튼을 누르면 실행됩니다.</p>
				<p style="color: #999999;">게임이 종료되고 이름을 입력하면 DB에 저장됩니다.</p>
			<br/>
			<h4>같은 그림 찾기</h4>
			<p style="color: #999999;">카드이미지를 기억한 다음 같은 카드를 맞추는 카드게임입니다.</p>
			<h4>스와이프 벽돌깨기</h4>
			<p style="color: #999999;">내려오는 벽돌을 공으로 맞춰 없애는 벽돌깨기 게임입니다.</p>
			<h4>카멜레온 러너</h4>
			<p style="color: #999999;">날아오는 운석을 피해 날아가는 러닝게임입니다.</p>
			<br/>
		</div>
		<div class="row">
			<br/><br/>
			<div class="col-md-6">
				<div class="col-md-6 col-sm-6" >
					<img src="resources/images/card.png" class="img-responsive pull-left" />
					<br/>
				</div>
				<div class="col-md-6 col-sm-6" >
					<img src="resources/images/runner.png" class="img-responsive pull-right" />
					<br/>
				</div>
			</div>
			<div class="col-md-6" >
				<div class="col-md-6 col-sm-6" >
					<br/>
					<img src="resources/images/block.png" class="img-responsive pull-left"/>
				</div>
				<div class="col-md-6 col-sm-6" >
					<br/>
					<br/>
					<img src="resources/images/table.png" class="img-responsive pull-right" />
				</div>
			</div>
		</div>
	</div>
	
	<br/><br/><br/><br/>
	<div class="row">
		<p style="color: #4C4C4C; font-size: 30px" align="center">내가 담당한 부분 : 같은 그림 찾기 게임 개발 (2명)</p>
	</div>
	
	<div class="row">
		<div class="col-md-7">
			<img src="resources/images/lev.png" class="img-responsive pull-left" />
		</div>
		<div class="row">
			<div class="col-md-5">
				<br/><br/>
				<p style="color: #999999;">게임을 실행하게되면 난이도[초급/중급/고급]를 선택할 수 있는 </p>
				<p style="color: #999999;">메시지창이 나타납니다.</p>
				<p style="color: #999999;">- JOptionPane.showInputDialog()</p>
				<br/><br/><br/>
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-7">
			<div class="col-md-4 col-sm-6" >
				<img src="resources/images/lv1.png" class="img-responsive pull-left" />
			</div>
			<div class="col-md-4 col-sm-6" >
					<img src="resources/images/lv2.png" class="img-responsive pull-left" />
			</div>
			<div class="col-md-4 col-sm-6">
					<img src="resources/images/lv3.png" class="img-responsive pull-left" />
			</div>
		</div>
		<div class="col-md-5">
			<br/>
			<p style="color: #999999;">카드의 모양은 버튼으로 나타냈습니다.</p>
			<p style="color: #999999;">난이도에 따라 랜덤함수로 섞어준 이미지를 배열에 저장 후 초급은 서로 </p>
			<p style="color: #999999;">다른 8쌍, 중급은 12쌍, 고급은 18쌍의 이미지가 버튼에 셋팅됩니다.</p>
			<p style="color: #999999;">- JFrame(),JPanel(),JButton(),Random(),ImageIcon()</p>
			<br/><br/><br/><br/>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-7">
			<div class="col-md-4 col-sm-6" >
				<img src="resources/images/bg1.png" class="img-responsive pull-left" />
			</div>
			<div class="col-md-4 col-sm-6" >
					<img src="resources/images/bg2.png" class="img-responsive pull-left" />
			</div>
			<div class="col-md-4 col-sm-6">
					<img src="resources/images/bg3.png" class="img-responsive pull-left" />
			</div>
		</div>
		<div class="col-md-5">
			<br/><br/>
			<p style="color: #999999;">버튼이미지를 뒷면으로 바꿔줌으로써 뒤집혀진 카드를 구현했습니다.</p>
			<p style="color: #999999;">게임이 시작되고 5초 후 카드가 뒤집혀지고 그와 동시에 1분20초로 </p>
			<p style="color: #999999;">타이머가 돌아갑니다.</p>
			<p style="color: #999999;">- JLabel(),Thread()</p>
			<br/><br/><br/><br/>
		</div>
	</div>
	
	
	<div class="row">
		<div class="col-md-7">
			<div class="col-md-3 col-sm-6" >
				<img src="resources/images/combo.png" class="img-responsive pull-left" />
			</div>
			<div class="col-md-3 col-sm-6" >
				<img src="resources/images/bomb.png" class="img-responsive pull-left" />
			</div>
			<div class="col-md-3 col-sm-6" >
					<img src="resources/images/wait.png" class="img-responsive pull-left" />
			</div>
			<div class="col-md-3 col-sm-6">
					<img src="resources/images/ran.png" class="img-responsive pull-left" />
			</div>
		</div>
		<div class="row">
			<div class="col-md-5">
				<br/><br/>
				<p style="color: #999999;">세 쌍의 카드를 연속으로 맞추면 콤보기능으로 한 쌍이 맞춰지는 기능</p>
				<p style="color: #999999;">폭탄카드를 클릭하면 게임종료, 타임카드를 클릭하면 5초간 타임,</p>
				<p style="color: #999999;">랜덤카드를 클릭하면 처음부터 다시 시작하게 되는 기능을 구현했습니다.</p>
				<br/><br/><br/>
			</div>
		</div>
	</div>
	
	
	<div class="row">
		<div class="col-md-7">
			<div class="col-md-4 col-sm-6" >
				<img src="resources/images/suc.png" class="img-responsive pull-left" />
			</div>
			<div class="col-md-4 col-sm-6" >
					<img src="resources/images/end.png" class="img-responsive pull-left" />
			</div>
			<div class="col-md-4 col-sm-6">
					<img src="resources/images/res.png" class="img-responsive pull-left" />
			</div>
		</div>
		<div class="row">
			<div class="col-md-5">
				<p style="color: #999999;">시간내로 게임을 클리어하면 이름을 입력할 수 있는 창이 뜨고</p>
				<p style="color: #999999;">클리어하지 못하면 Game Over라는 메시지 창이 나타납니다.</p>
				<p style="color: #999999;">그리고나서 재실행 할 수 있는 창이 나타납니다.</p>
				<br/><br/>
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-7">
			<img src="resources/images/grade.png" class="img-responsive pull-left" />
		</div>
		<div class="row">
			<div class="col-md-5">
			<br/><br/><br/><br/><br/>
				<p style="color: #999999;">재시작을 물어보는 창에서 아니오를 누르게되면 메인창으로 돌아갑니다.</p>
				<p style="color: #999999;">그리고 같은 그림 찾기 게임을 누르면 하단에 순위가 보여집니다.</p>
				<br/><br/><br/>
			</div>
		</div>
	</div>

	<div class="col-md-12">
	<br/><br/>
		<h1>후기</h1>
		<p style="color: #999999;">
			이 프로젝트를 통해 java로도 게임구현이 가능함을 알게되었습니다.<br/>
			프로젝트를 진행하면서 에러를 해결해는데에 어려움이 있었지만 수차례의 수정을 통해 극복해 낼 수 있었고, 후에는 기능추가까지 해낼 수 있었습니다.<br/>
			또한 처음해보는 팀 프로젝트였고, 이를 통해 역할분담의 중요성을 알 수 있었고, 협업을 통해 더 나은 성과를 낼 수 있다는 것을 느꼈습니다.<br/>
			프로젝트를 성공적으로 끝내면서 생각하는 것을 코드로 구현할 수 있다는 것에 자신감을 얻을 수 있었습니다.
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