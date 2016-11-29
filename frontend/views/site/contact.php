<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \frontend\models\ContactForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yii\captcha\Captcha;

$this->title = 'Contact';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
    <div class="fp-tableCell" id="firstfocus">
        <div class="jumbotron">
            <h1>Hi, we're Achieve-IT.</h1>
            <h4 class="lead"><span class="typed"></span></h4>
        </div>
    </div>
</div>

<div id="whatwebuild">
    <div class="container">
        <div class="row text-center" data-sr="enter top over 1s">
            <p class="intro h-title">
            Want to build efficient things with a talented team?  
            </p>
            <p class="intro h-title">
            Contact us at  <a href="mailto:ken@achieve-it.com.au">ken@achieve-it.com.au</a>  or give a call at +61 412 419 841 
            </p>
            <p>
                <a href="http://au.linkedin.com/pub/ken-cook/17/676/271"><span class="icon-linkedin"></span></a>
            </p>
        </div>
    </div>
</div>

<hr>

<div class="row">
    <div class="site-contact contact-form">
        <h1><?= Html::encode($this->title) ?></h1>
        <p>
            If you have business inquiries or other questions, please fill out the following form to contact us. Thank you.
        </p>
        <div class="row">
            <div class="col-lg-8">
                <?php $form = ActiveForm::begin(['id' => 'contact-form']); ?>

                    <?= $form->field($model, 'name')->textInput(['autofocus' => true]) ?>

                    <?= $form->field($model, 'email') ?>

                    <?= $form->field($model, 'subject') ?>

                    <?= $form->field($model, 'body')->textarea(['rows' => 6]) ?>

                    <?= $form->field($model, 'verifyCode')->widget(Captcha::className(), [
                        'template' => '<div class="row"><div class="col-lg-3">{image}</div><div class="col-lg-6">{input}</div></div>',
                    ]) ?>

                    <div class="form-group">
                        <?= Html::submitButton('Send', ['class' => 'btn btn-lg button-primary', 'name' => 'contact-button']) ?>
                    </div>

                <?php ActiveForm::end(); ?>
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
        strings: ["How can we help you?"],
        typeSpeed: 100
    });

});
', \yii\web\View::POS_END);
?>