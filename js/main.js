"use strict";
jQuery(document).ready(function($) {

	var headerHeight = $('#master-header-wrap').height();
	
	// Are we on mobile?
	var onMobile = false;
	if( /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ) { onMobile = true; }
	
	
	/* Functions that space stuff around, and fire every time the site is resized, as well on first load */
	$(window).on('resize load', function () {
	
		/* Vertical align function */
		$('.alignverticalcenter').each(function(){
			var height = $(this).outerHeight();
			$(this).css({position:'absolute',top:'50%',marginTop: -height/2});
		});
		
		/* Horizontal align function */
		$('.alignhorizontalcenter').each(function(){
			var width = $(this).outerWidth();
			$(this).css({position:'relative',left:'50%',marginLeft: -width/2});
		});
	
	}).resize();
	
	
	/* The menus dropdown rolldown script */
	var menu = $('nav#master-nav');
	menu.find('li:has(ul)').addClass('hassubmenu');
	
	$('#mobile-switch').click(function(){
		menu.slideToggle();
	});
	
	menu.find('li').hoverIntent({
		over: makeTall, 
		timeout: 200,
		sensitivity: 30,
		out: makeShort
	});
	function makeTall(){
	
		if( onMobile == true ){
			$(this).has('ul').addClass('current-menu-item-hover').find('ul:first').slideDown({queue:false,duration:220});
		} else {
			$(this).has('ul').addClass('current-menu-item-hover').find('ul:first').fadeIn({queue:false,duration:220});
		}
		
		var availableSpace = $(window).width() - $(this).offset().left;
		
		if(( onMobile == false ) && ( availableSpace < 520 )){
			$(this).find('ul').find('li').find('ul').css({left: '-262px'});
		}
	}
	function makeShort(){
		if( onMobile == true ){
			$(this).has('ul').removeClass('current-menu-item-hover').find('ul:first').slideUp({queue:false,duration:200});
		} else {
			$(this).has('ul').removeClass('current-menu-item-hover').find('ul:first').fadeOut({queue:false,duration:200});
		}
	}

	
	/* The Donuts around services widgets */
	$(".donut-halo").each(function(){
	
		var doughnutData = [
			{
				value: $(this).data('donut-percent'),
				color:"#00A0D1"
			},
			{
				value : 100 - $(this).data('donut-percent'),
				color : "#cdeaf5"
			},

		];
			
		var myDoughnut = new Chart( this.getContext("2d")).Doughnut(doughnutData);
	});
	
	/* Clear input on focus in fields */
	$('input[type=text]').each(function(){
	var inputfieldval = $(this).val();
		$(this).focus(function(){
			if(inputfieldval==$(this).val()){
				$(this).val('');
			}
		});
		$(this).blur(function(){
			if($(this).val()==''){
				$(this).val(inputfieldval);
			}
		});
	});
	
	/* Contact form validation, ajax response */
    var paraTag = jQuery('input#cf-submit').parent('p');
    jQuery(paraTag).children('input').remove();
    jQuery(paraTag).append('<input type="button" name="submit" id="cf-submit" value="Send it" class="btn" />');

    jQuery('#form_main input#cf-submit').click(function() {
        jQuery('#form_main p').append('<img src="css/img/ajax-loader.gif" class="loaderIcon" alt="Loading..." />');

        var name = jQuery('input#name').val();
        var email = jQuery('input#cf-email').val();
        var phone = jQuery('input#phone').val();
        var comments = jQuery('textarea#comments').val();

        jQuery.ajax({
            type: 'post',
            url: 'sendEmail.php',
            data: 'name=' + name + '&email=' + email + '&comments=' + comments,

            success: function(results) {
                jQuery('#form_main img.loaderIcon').fadeOut(5000);
                jQuery('ul#form_response').html(results);
            }
        }); // end ajax
    });
		
	
	/* Isotope init */
	var collage = $('.collage');
	  collage.isotope({
		// options...
	  });
	
	// If the page has filterer
	if ( $('#isotope_filter_wrap') ) {
		// Rerun isotope filter on new sizes
		$('#isotope_filter_wrap a').click(function(){
			$('#isotope_filter_wrap a').removeClass('current');
			$(this).addClass('current');
			var selector = $(this).attr('data-filter');
			collage.isotope({
				filter: selector,
			});
			return false;
		});
	}
	
	
	/* Toggle */
	$('.toggle-handle').each( function() {
		if ( !$(this).hasClass('active') ) {
			$(this).siblings().hide();
		}
		$(this).click( function() {
			if ( $(this).hasClass('active') ) {
				$(this).parent().parent().find('.toggle-handle').removeClass('active');
			} else {
				$(this).parent().parent().find('.toggle-handle').removeClass('active');
				$(this).addClass('active');
			}
			$(this).siblings().slideToggle(250);
			$(this).parent().siblings().find('.toggle').slideUp(250);
		});
	});
	
	/* Close alertbox */
	$('.alertbox a.close').click( function() {
		$(this).parent().fadeOut();
		return false;
	});
	
	/* Faq */
	$('div.faq:not(.open)').hide();
	$('.faq-handle').click(function(){
		$(this).toggleClass("active").next().slideToggle("fast");
	});
	
	/* Tabber */
	jQuery('.ds_tabber_wrap,.ds_vtabber_wrap').each(function(){
	var tabContainers = jQuery(this).find('.ds_tabber');
	var tabSelectors = jQuery(this).find('.tabber li');
    tabContainers.hide();
    jQuery(this).find('ul.tabber li a').click(function(){
        tabContainers.hide().filter(this.hash).fadeIn(500);
        tabSelectors.removeClass('selected');
        jQuery(this).parent().addClass('selected');
        return false;
    });
	jQuery(this).find('ul.tabber li a:first').click();
	});

			
});

jQuery(window).load(function() {

	// Are we on mobile?
	var onMobile = false;
	if( /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ) { onMobile = true; }
  
	
	/* Flexslider carousel (logos) */
	$('#carousel-logos').flexslider({
		animation: "slide",
		animationLoop: false,
		controlNav: false,
		keyboard: false,
		itemWidth: 228,
		itemMargin: 0,
		minItems: 1,
		maxItems: 5
	});
	
	
	/* Flexslider main slider */
	$('#entertainer .flexslider').flexslider({
		animation: "fade",
		keyboard: true,
		multipleKeyboard: true,
		before: function(slider) {
			slider.slides.eq(slider.currentSlide).find('.flex-caption .vertical-align-middle .move-that').fadeOut().animate({top:'-100px'},{queue:false, easing: 'easeOutQuad', duration: 550});
			slider.slides.eq(slider.animatingTo).find('.flex-caption .vertical-align-middle .move-that').hide().css({top:'100px'});
		},
		after: function(slider) {
			slider.slides.eq(slider.currentSlide).find('.flex-caption .vertical-align-middle .move-that').fadeIn().animate({top:'0'},{queue:false, easing: 'easeOutQuad', duration: 450});
		},
		slideshow: true,
		useCSS: true
	});
	$('#entertainer .flex-control-nav li').attr('data-300','margin:0px 60px; opacity: 0;').attr('data-start','margin:0px 6px; opacity: 1;');
	$('#entertainer .flex-direction-nav a').attr('data-500','top:89%; opacity: 0;').attr('data-start','top:50%; opacity: 1;').attr('data-smooth-scrolling','on'); 
	
	
	/* Parallax madness firing up only on desktop/capable stuff */
	if( ( onMobile === false ) && ( $('#entertainer').length ) ) {
	
		skrollr.init({
			edgeStrategy: 'set',
			smoothScrolling: false,
			forceHeight: false
		});
		
	}
	
	var $container = $('.collage');
	$container.isotope('reLayout')
	
});
