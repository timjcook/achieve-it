<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \frontend\models\ContactForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yii\captcha\Captcha;

$this->title = 'Show';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
    <div class="fp-tableCell" id="firstfocus">
        <div class="jumbotron">
            <h1>Build up with Achieve-IT</h1>
            <h4 class="lead"><span class="typed"></span></h4>
        </div>
    </div>
</div>

<div id="showbox">

    <a href="#" class="work-item countr overlay overlay-light" data-sr="enter left over 1s"><div class="work-item-content inner clearfix"><div class="work-item-info col"><h2 class="work-title">Project Name</h2><div class="work-desc">Putting the power back into the hands of consumers, It is your digital identity with retailers.</div><div class="btn btn-lg button-primary">View Project</div></div></div></a>

    <a href="#" class="work-item insurer overlay overlay-light" data-sr="enter left over 1s"><div class="work-item-content inner clearfix"><div class="work-item-info col"><h2 class="work-title">Project Name</h2><div class="work-desc">Putting the power back into the hands of consumers, It is your digital identity with retailers.</div><div class="btn btn-lg button-primary">View Project</div></div></div></a>

    <a href="#" class="work-item dockwa overlay overlay-light" data-sr="enter left over 1s"><div class="work-item-content inner clearfix"><div class="work-item-info col"><h2 class="work-title">Project Name</h2><div class="work-desc">Putting the power back into the hands of consumers, It is your digital identity with retailers.</div><div class="btn btn-lg button-primary">View Project</div></div></div></a>

    <a href="#" class="work-item pinchme overlay overlay-light" data-sr="enter left over 1s"><div class="work-item-content inner clearfix"><div class="work-item-info col"><h2 class="work-title">Project Name</h2><div class="work-desc">Putting the power back into the hands of consumers, It is your digital identity with retailers.</div><div class="btn btn-lg button-primary">View Project</div></div></div></a>

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

<div class="container">
    <div class="body-content">
        <div class="row" id="showcase" data-sr="enter right over 1s">
            <div class="text-center">
                <h2 class="h-title">OTHER HAPPY CLIENTS</h2>
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

<hr>

<div class="container" id="tellus">
    <div class="row">
        <div class="col-lg-offset-1">
        <div class="col-lg-6 pull-left">
            <p>
                <h3>
                Like what you see?
                </h3>
            </p>
            <p>
                <h4>
                Let's work together.
                </h4>
            </p>
        </div>
        <div class="col-lg-4 pull-right" id="btn-tellus">
            <a href="contact" class="btn btn-lg button-primary">Let us Know</a>
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

    var demo2 = $("#slider2").slippry({
        speed: 500,
        pause: 4000,
        auto: true,
        controls: true,
        preload: "visible",
        captions: false
    });

    $(".typed").typed({
        strings: ["Here are our outcomes"],
        typeSpeed: 100
    });

});
', \yii\web\View::POS_END);
?>