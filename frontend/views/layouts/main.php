<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use frontend\assets\AppAsset;
use common\widgets\Alert;
use mdm\admin\components\MenuHelper;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body id=<?= $this->title ?>>
<?php $this->beginBody() ?>

<div class="wrap">
    <?php
    NavBar::begin([
        'brandLabel' => Html::img(Yii::getAlias('@web').'/images/logo.png'),
        'brandUrl' => Yii::$app->homeUrl,
        'options' => [
            'class' => 'navbar-fixed-top',
            'id' => 'ait-nav',
        ],
    ]);
    /*
    $menuItems[] = Yii::$app->user->isGuest ?
            ['label' => 'Sign in', 'url' => ['/user/security/login']] :
            ['label' => 'Sign out (' . Yii::$app->user->identity->username . ')',
        'url' => ['/user/security/logout'],
        'linkOptions' => ['data-method' => 'post']];
    $menuItems[] = ['label' => 'Register', 'url' => ['/user/registration/register'], 'visible' => Yii::$app->user->isGuest];

    $menuItems = array_merge(MenuHelper::getAssignedMenu(Yii::$app->user->id), $menuItems);
    */
    $menuItems =[ 
        [
            'label' => 'Home',
            'url' => ['/'],
        ],
        [
            'label' => 'About us',
            'url' => ['about'],
        ],
        [
            'label' => 'Show Case',
            'url' => ['showcase'],
        ],
        [
            'label' => 'Contact Us',
            'url' => ['contact'],
        ],        
    ];

    echo Nav::widget([
        'options' => ['class' => 'navbar-nav navbar-right'],
        'encodeLabels' => false,
        'items' => $menuItems,
    ]);

    NavBar::end();
    ?>
    <div style="width:100%;overflow:hidden;">

    <?= Alert::widget() ?>
    <?= $content ?>
    </div>

<footer class="footer">
    <div class="container">
        <p class="pull-left">&copy; Achieve-IT <?= date('Y') ?></p>
        <p class="pull-right">
            <?php 
            echo Nav::widget([
                'options' => ['class' => 'foot-menu'],
                'encodeLabels' => false,
                'items' => $menuItems,
            ]);
            ?>
        </p>
    </div>
</footer>
<p id="back-top" style="display: block;"><a href="#top"><span></span></a></p>
<?php
$this->registerJsFile(Yii::getAlias('@web').'/modernizr/modernizr.js', ["depends" => [\yii\web\JqueryAsset::className()]]);
$this->registerJsFile(Yii::getAlias('@web').'/slippry/dist/slippry.min.js', ["depends" => [\yii\web\JqueryAsset::className()]]);
//$this->registerCssFile(Yii::getAlias('@web').'/slippry/dist/slippry.css', ["depends" => [\yii\web\JqueryAsset::className()]]);
$this->registerJsFile(Yii::getAlias('@web').'/typed/dist/typed.min.js', ["depends" => [\yii\web\JqueryAsset::className()]]);
//$this->registerCssFile(Yii::getAlias('@web').'/animate/animate.min.css', ["depends" => [\yii\web\JqueryAsset::className()]]);
$this->registerCssFile(Yii::getAlias('@web').'/fullPage/jquery.fullPage.css', ["depends" => [\yii\web\JqueryAsset::className()]]);
$this->registerJsFile(Yii::getAlias('@web').'/fullPage/vendors/scrolloverflow.min.js', ["depends" => [\yii\web\JqueryAsset::className()]]);
$this->registerJsFile(Yii::getAlias('@web').'/fullPage/jquery.fullPage.min.js', ["depends" => [\yii\web\JqueryAsset::className()]]);
$this->registerJsFile(Yii::getAlias('@web').'/scrollreveal/dist/scrollreveal.min.js', ["depends" => [\yii\web\JqueryAsset::className()]]);

$this->registerJs('
    // $.fn.extend({
    //     animateCss: function (animationName) {
    //         var animationEnd = "webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend";
    //         this.addClass("animated " + animationName).one(animationEnd, function() {
    //             $(this).removeClass("animated " + animationName);
    //         });
    //     }
    // });

    jQuery(document).ready(function(){
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
        "use strict";
        window.sr= new scrollReveal({
          reset: false,
          move:"50px",
          mobile: false,
          duration: 2000
        });
    });

', \yii\web\View::POS_END);


?>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
