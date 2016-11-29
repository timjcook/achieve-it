<?php
use yii\helpers\Html;
/* @var $this yii\web\View */

$this->title = 'Achieve-IT';
?>

<div id="fullpage">
    <div class="section active" id="site-focus">

        <ul id="slider" style="list-style: none; width: 100%;  padding: 0; margin: 0;overflow:hidden;" class="hde">    
            <li><img src="<?= Yii::getAlias('@web').'/images/slide1.jpg' ?>"></li>
            <li><img src="<?= Yii::getAlias('@web').'/images/slide2.jpg' ?>"></li>
            <li><img src="<?= Yii::getAlias('@web').'/images/slide3.jpg' ?>"></li>
        </ul>

        <div class="body-content" id="foucs-content">

            <div class="jumbotron">
                <h1>Achieve-IT's Approach!</h1>
                <h4 class="lead">We Help <span class="typed"></span></h4>
            </div>
        
            <div class="row" id="what3" data-sr="enter top over 1s">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 text-center hasAnimate" style="visiblity:hidden">
                    <h2>What we build</h2>
                    <p>Web Applications</p>
                    <p>Mobile Applications</p>
                    <p>Software as a Service Businesses</p>
                    <p>Wearable Applications</p>
                    <p>Health Care Applications</p>
                    <p>Big Data Solutions</p>

                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 text-center hasAnimate">
                    <h2>What we provide</h2>
                    <p>Engineerin</p>
                    <p>Design</p>
                    <p>Product Management</p>
                    <p>DevOps</p>
                    <p>Successful Outcomes</p>
                    <p>Research & Development</p>

                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 text-center hasAnimate">
                    <h2>What we use</h2>
                    <p>PHP + MySQL</p>
                    <p>Ruby on Rails</p>
                    <p>Node.js</p>
                    <p>React</p>
                    <p>iOS</p>
                    <p>Android</p>

                </div>
            </div>
        </div>
    </div>
    <div class="section" id="section2">
        <div class="row midtext">
            <div class="col-lg-12">
                <p><h2 class="text-center h-title">Exceptional software, App, website design & development</h2></p>
                <p><h2 class="text-center h-title">We provide scalable solutions for your business.</h2></p>
            </div>
        </div>
        <div class="row" id="showcase" data-sr="enter top over 1s">
            <div class="text-center">
                <p><h4 data-sr="enter right over 1s">WHERE YOU'VE SEEN OUR WORK</h4></p>
            </div>
            <div class="row">
                <div class="col-lg-3 text-center logo-show">
                    <span><?= Html::img(Yii::getAlias('@web').'/images/savant.jpg') ?></span>
                </div>
                <div class="col-lg-3 text-center logo-show">
                    <span><?= Html::img(Yii::getAlias('@web').'/images/swipely.jpg') ?></span>
                </div>
                <div class="col-lg-3 text-center logo-show">
                    <span><?= Html::img(Yii::getAlias('@web').'/images/savant.jpg') ?></span>
                </div>
                <div class="col-lg-3 text-center logo-show">
                    <span><?= Html::img(Yii::getAlias('@web').'/images/swipely.jpg') ?></span>
                </div>
                <div class="col-lg-3 text-center logo-show">
                    <span><?= Html::img(Yii::getAlias('@web').'/images/swipely.jpg') ?></span>
                </div>
                <div class="col-lg-3 text-center logo-show">
                    <span><?= Html::img(Yii::getAlias('@web').'/images/savant.jpg') ?></span>
                </div>
                <div class="col-lg-3 text-center logo-show">
                    <span><?= Html::img(Yii::getAlias('@web').'/images/swipely.jpg') ?></span>
                </div>
                <div class="col-lg-3 text-center logo-show">
                    <span><?= Html::img(Yii::getAlias('@web').'/images/savant.jpg') ?></span>
                </div>
            </div>
        </div>
    </div>
    <div class="section" id="section3">
        <div class="slide" id="slide1">
            <div class="row" data-sr="enter right over 1s">
                <div class="quoteBubble noSelect col-lg-8 col-lg-offset-2">
                  <p class="cropBottom">I’ve built my website with Slides just in one day, and it was ready-to-go. Code is clean and simple, easy to use by people with almost any level of programming skills.</p>
                </div>
                <div class="quoteName fromRigh col-lg-8 col-lg-offset-2">Boris Goncharov<span class="quoteTitle sourceSans">, Co-Founder, moosetank.com</span></div>
            </div>
        </div>
        <div class="slide" id="slide2">
            <div class="row">
                <div class="quoteBubble noSelect col-lg-8 col-lg-offset-2">
                  <p class="cropBottom">As a business targeting high net worth individuals, we were looking for a slick, cool and minimalistic design for our website. The Slides framework checked all of those boxes and was quick, easy-to-use to get up and running in a short time.</p>
                </div>
                <div class="quoteName fromRigh col-lg-8 col-lg-offset-2">Sumeet Mashru<span class="quoteTitle sourceSans">, , coolsetup.com</span></div>
            </div>
        </div>
    </div>
    <div class="section" id="section4">Some section</div>
</div>

<div id="back-top"><a href="##">go to top</a></div>
<?php
$this->registerJs('

$(function() {
    var demo1 = $("#slider").slippry({
         transition: "kenburns",
         useCSS: true,
         speed: 5000,
         pause: 9000,
         auto: true,
         controls: false,
         preload: "visible",
         autoHover: false,
    });

    $(".typed").typed({
        strings: ["entrepreneurs create mobile apps.", "marketers build landing pages.", "company owners build websites."],
        typeSpeed: 100
    });


    // hide #back-top first
    $("#back-top").hide();
    
    // fade in #back-top
    $(function () {
        $(window).scroll(function () {
            if ($(this).scrollTop() > 400) {
                $("#back-top").fadeIn();
            } else {
                $("#back-top").fadeOut();
            }
        });

        // scroll body to 0px on click
        $("#back-top a").click(function () {
            $("body,html").animate({
                scrollTop: 0
            }, 400);
            return false;
        });
    });


    /*var element = $("#what3");
    var height = $(element).offset().top;

    $(window).scroll(function() {
        console.log(height);
            console.log($(window).scrollTop());
        if(height - $(window).scrollTop() < 100) {
            $(".hasAnimate").animateCss("bounceInUp");
        }
    });*/
    

    

});

(function($) {
    "use strict";
    window.sr= new scrollReveal({
      reset: false,
      move:"50px",
      mobile: false
    });
})();


', \yii\web\View::POS_END);

?>