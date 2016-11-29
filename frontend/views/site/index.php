<?php
use yii\helpers\Html;
/* @var $this yii\web\View */

$this->title = 'Achieve-IT Company';
?>


<div style="position:relative;">
    <div style="width:100%;overflow:hidden;">
        <ul id="slider" style="list-style: none; width: 100%;  padding: 0; margin: 0;overflow:hidden;" class="hde">    
            <li><img src="<?= Yii::getAlias('@web').'/images/slide2.jpg' ?>"></li>
            <li><img src="<?= Yii::getAlias('@web').'/images/slide10.jpg' ?>"></li>
            <li><img src="<?= Yii::getAlias('@web').'/images/slide6.jpg' ?>"></li>
            <li><img src="<?= Yii::getAlias('@web').'/images/slide7.jpg' ?>"></li>
            <li><img src="<?= Yii::getAlias('@web').'/images/slide9.jpg' ?>"></li>
        </ul>
    </div>
    <div class="site-index">
        <div class="jumbotron">
            <h1>Achieve-IT's Approach!</h1>
            <h4 class="lead">We Help <span class="typed"></span></h4>
        </div>
        <div class="row midtext">
            <div class="col-lg-12">
                <p><h3 class="text-center h-title">Exceptional software, App, website design & development</h3></p>
                <p><h3 class="text-center h-title">We provide scalable solutions for your business.</h3></p>
            </div>
        </div>
        <div class="row" id="what3" data-sr="enter top over 1s">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 text-center hasAnimate">
                <h2>What we build</h2>
                <p>Web Applications</p>
                <p>Mobile Applications</p>
                <p>Software as a Service Businesses</p>
                <p>Wearable Applications</p>
                <p>Health Care Applications</p>
                <p>Big Data Solutions</p>

            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 text-center">
                <h2>What we provide</h2>
                <p>Engineerin</p>
                <p>Design</p>
                <p>Product Management</p>
                <p>DevOps</p>
                <p>Successful Outcomes</p>
                <p>Research & Development</p>

            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 text-center">
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

<div class="container">
    <div class="body-content">
        <div class="row" id="showcase" data-sr="enter left over 1s">
            <div class="text-center">
                <h2 class="h-title">WHERE YOU'VE SEEN OUR WORK</h2>
            </div>
            <div class="row">
                <div class="col-lg-3 text-center logo-show">
                    <?= Html::img(Yii::getAlias('@web').'/images/savant.jpg') ?>
                </div>
                <div class="col-lg-3 text-center logo-show">
                    <?= Html::img(Yii::getAlias('@web').'/images/swipely.jpg') ?>
                </div>
                <div class="col-lg-3 text-center logo-show">
                    <?= Html::img(Yii::getAlias('@web').'/images/savant.jpg') ?>
                </div>
                <div class="col-lg-3 text-center logo-show">
                    <?= Html::img(Yii::getAlias('@web').'/images/swipely.jpg') ?>
                </div>
                <div class="col-lg-3 text-center logo-show">
                    <?= Html::img(Yii::getAlias('@web').'/images/swipely.jpg') ?>
                </div>
                <div class="col-lg-3 text-center logo-show">
                    <?= Html::img(Yii::getAlias('@web').'/images/savant.jpg') ?>
                </div>
                <div class="col-lg-3 text-center logo-show">
                    <?= Html::img(Yii::getAlias('@web').'/images/swipely.jpg') ?>
                </div>
                <div class="col-lg-3 text-center logo-show">
                    <?= Html::img(Yii::getAlias('@web').'/images/savant.jpg') ?>
                </div>
            </div>
        </div>        
    </div>
</div>

<div class="section" id="testimonials" data-sr="enter ease-in 1s">
    <div class="text-center">
        <h2 class="h-title">TESTIMONIALS</h2>
    </div>
    <div id="sliderbg">
    <ul id="slider2">
        <li>
        <div class="slide col-lg-8 col-lg-offset-2" id="slide1">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading text-align">“ I’ve built my website with Slides just in one day, and it was ready-to-go. Code is clean and simple, easy to use by people with almost any level of programming skills. ”</h4>
                    <p class="text-center"><img src="https://d2ogrdw2mh0rsl.cloudfront.net/production/images/comments/john-resig.png?1479984384" alt="..."></p>
                    <p class="text-center">Boris Goncharov, Co-Founder, moosetank.com</p>
                    
                </div>
            </div>
        </div>
        </li>
        <li>
        <div class="slide col-lg-8 col-lg-offset-2" id="slide2">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading text-align">“ As a business targeting high net worth individuals, we were looking for a slick, cool and minimalistic design for our website. The Slides framework checked all of those boxes and was quick, easy-to-use to get up and running in a short time. ”</h4>
                    <p class="text-center"><img src="https://d98b8t1nnulk5.cloudfront.net/production/images/comments/chris-coyier.png?1479984384" alt="..."></p>
                    <p class="text-center">Sumeet Mashru , coolsetup.com</p>
                    
                </div>
            </div>
        </div>
        </li>
    </ul>
    </div>
</div>

<div class="container" id="tellus">
    <div class="row">
        <div class="col-lg-offset-1">
        <div class="col-lg-6 pull-left">
            <p>
                <h3>
                Have an interesting project in mind?
                </h3>
            </p>
            <p>
                <h4>
                We'd love to learn more.
                </h4>
            </p>
        </div>
        <div class="col-lg-4 pull-right" id="btn-tellus">
            <a href="contact" class="btn btn-lg button-primary">Tell us about it</a>
        </div>
        </div>
    </div>
</div>


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
    var demo2 = $("#slider2").slippry({
        speed: 500,
        pause: 4000,
        auto: true,
        controls: true,
        preload: "visible",
        captions: false
    });

    $(".typed").typed({
        strings: ["entrepreneurs create mobile apps.", "marketers build landing pages.", "company owners build websites."],
        typeSpeed: 100
    });


    

});
', \yii\web\View::POS_END);

?>