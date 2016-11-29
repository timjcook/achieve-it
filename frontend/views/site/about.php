<?php

/* @var $this yii\web\View */

use yii\helpers\Html;
use yii\widgets\Breadcrumbs;

$this->title = 'About';
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="row">
	<div class="fp-tableCell" id="firstfocus">
		<div class="jumbotron">
            <h1>Know about us</h1>
            <h4 class="lead"><span class="typed"></span></h4>
        </div>
	</div>
</div>

<div id="aboutAim">
	<div class="container">
		<div class="row text-center" data-sr="enter top over 1s">
			<p class="intro h-title">
			Our aim is to provide knowledge & experience to identify system issues, design solutions, build infrastructure and support business.
			</p>
			<p class="intro h-title">
			Our Leader is a professionals with decades experiences, as well as a pragmatic and trustworthy team.
			</p>
		</div>
	</div>
</div>

<div class="row text-center" id="values">
	<p class="intro h-title" data-sr="enter left over 1s">
		Our Values	
	</p>
	<p class="intro h-title" data-sr="enter left over 2s">
		Faith: enthusiastic, flexible.
	</p>
	<p class="intro h-title" data-sr="enter right over 1s">
		Mission: low cost, high output.
	</p>
	<p class="intro h-title" data-sr="enter left over 2s">
		Goals: save money for clients.
	</p>
</div>

<div class="row" id="whatwedo">
	<h3 class="text-center h-title">WE LOVE WHAT WE DO.</h3>
	<div class="col-lg-3">
		<div  class="media-display-item" style="display: block; background-image: url(<?= Yii::getAlias('@web').'/images/about-soft.jpg' ?>);"><div class="media-display-item-wrap"><div class="media-display-item-cta"><div class="small-headline"><p><h4 class="h-title">Software Development</h4></p><p>We develop software base on C/C+</p></div></div></div></div>
	</div>	
	<div class="col-lg-3">
		<div  class="media-display-item" style="display: block; background-image: url(<?= Yii::getAlias('@web').'/images/about-mobile.jpg' ?>);"><div class="media-display-item-wrap"><div class="media-display-item-cta"><div class="small-headline"><p><h4 class="h-title">Mobile Application</h4></p><p>Andorid & IOS developemtn</p></div></div></div></div>
	</div>	
	<div class="col-lg-3">
		<div  class="media-display-item" style="display: block; background-image: url(<?= Yii::getAlias('@web').'/images/about-web.jpg' ?>);"><div class="media-display-item-wrap"><div class="media-display-item-cta"><div class="small-headline"><p><h4 class="h-title">Web Application</h4></p><p>A Variety Of Apps</p></div></div></div></div>
	</div>	
	<div class="col-lg-3">
		<div  class="media-display-item" style="display: block; background-image: url(<?= Yii::getAlias('@web').'/images/about-oa.jpg' ?>);"><div class="media-display-item-wrap"><div class="media-display-item-cta"><div class="small-headline"><p><h4 class="h-title">OA solutions</h4></p><p>Build your administrative office system with hardware and software</p></div></div></div></div>
	</div>	
</div>

<div class="row" id="aboutneeds">
	<div class="container">
	<div class="row text-center" data-sr="enter bottom over 1s">
			<p class="intro h-title">
			We develop systems for all your future needs
			</p>
			<p class="intro h-title">
			With clear business objectives, development in the form of improvements to existing applications or building new applications, can be designed and delivered. Application development can be delivered on all major platforms, including IBM Domino/Notes, DB2, WebSphere, Microsoft SQL, .NET, SharePoint.
			</p>
		</div>
	</div>
</div>
<hr>
<div class="container" id="tellus">
    <div class="row">
        <div class="col-lg-offset-1">
        <div class="col-lg-6 pull-left">
            <p>
                <h3>
                Interested in Working with us ?
                </h3>
            </p>
            <p>
                <h4>
                Tell us what your strength
                </h4>
            </p>
        </div>
        <div class="col-lg-4 pull-right" id="btn-tellus">
            <a href="contact" class="btn btn-lg button-primary">Join Our Team</a>
        </div>
        </div>
    </div>
</div>

<?php

$this->registerJs('
$(function() {

	var height = $("body").height();
	var width = $("body").width();
	$("#firstfocus").height(height);
	$("#firstfocus").width(width);

	$(".typed").typed({
        strings: ["These are our strength and our faith"],
        typeSpeed: 100
    });

});
', \yii\web\View::POS_END);
?>