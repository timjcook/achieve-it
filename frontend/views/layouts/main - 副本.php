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
<body>
<?php $this->beginBody() ?>

<div class="wrap">
    <?php
    NavBar::begin([
        'brandLabel' => 'Find Your Zero',
        'brandUrl' => Yii::$app->homeUrl,
        'options' => [
            'class' => 'navbar-inverse navbar-fixed-top',
        ],
    ]);
    $menuItems[] = Yii::$app->user->isGuest ?
            ['label' => 'Sign in', 'url' => ['/user/security/login']] :
            ['label' => 'Sign out (' . Yii::$app->user->identity->username . ')',
        'url' => ['/user/security/logout'],
        'linkOptions' => ['data-method' => 'post']];
    $menuItems[] = ['label' => 'Register', 'url' => ['/user/registration/register'], 'visible' => Yii::$app->user->isGuest];

    $menuItems = array_merge(MenuHelper::getAssignedMenu(Yii::$app->user->id), $menuItems);
    
    echo Nav::widget([
        'options' => ['class' => 'navbar-nav navbar-right'],
        'encodeLabels' => false,
        'items' => $menuItems,
    ]);

    NavBar::end();
    ?>

    <div class="container">
        <?= Breadcrumbs::widget([
            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
        ]) ?>
        <?= Alert::widget() ?>
        <?= $content ?>
    </div>
</div>

<footer class="footer">
    <div class="container">
        <p class="pull-left">&copy; Find Your Zero <?= date('Y') ?></p>

        <p class="pull-right"><?= Yii::powered() ?></p>
    </div>
</footer>

<?php
$this->registerJsFile(Yii::getAlias('@web').'/modernizr/modernizr.js', ["depends" => [\yii\web\JqueryAsset::className()]]);
$this->registerJsFile(Yii::getAlias('@web').'/slippry/dist/slippry.min.js', ["depends" => [\yii\web\JqueryAsset::className()]]);
$this->registerCssFile(Yii::getAlias('@web').'/slippry/dist/slippry.css', ["depends" => [\yii\web\JqueryAsset::className()]]);
$this->registerJsFile(Yii::getAlias('@web').'/typed/dist/typed.min.js', ["depends" => [\yii\web\JqueryAsset::className()]]);

$this->registerJs('

    jQuery(document).ready(function(){
        $(".jumbotron h1").typed({
            strings: ["First sentence.", "Second sentence."],
            typeSpeed: 0
        });
    });

', \yii\web\View::POS_END);


?>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
