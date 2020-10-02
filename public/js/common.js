$(function(){
	$('a').each(function(){
		$(this).click(function(e){
			var emptyLink = $(this).attr('href');
			if ( emptyLink === '#none' ) e.preventDefault();
		});
	});
	inputBox();
	selectDs();
	listChange();

	/* header */
	var $wrapper = $('.jh_wrapper');
	var $header = $('.jh_header');
	var headerH = $header.outerHeight(true);
	var $footer = $('.jh_footer');
	var footerH = $footer.outerHeight(true);
	var $headerMenu = $('.gnb_menu');
	var headerList = $header.find('.nav_page');
	var headerTitle = $header.find('.tit_page');

	$wrapper.css({ 'padding-top' : $header.height() });

	var $appBar = $('.app_bar');
	var appBarH = $appBar.outerHeight();
	var $commonButton = $('.bt_common');
	var goTop = $commonButton.find('.go_top');
	var commonButtonBottom = parseInt($commonButton.css('bottom'));
	var lastScrollTop = 0;

	goTop.click(function(){
		var minTimer = 300;
		var maxTimer = 800;
		var baseH = parseInt($(this).offset().top);
		var baseT = $wrapper.offset().top;
		var timer = parseInt(baseH - baseT) >= minTimer ? parseInt((baseH - baseT)/$(window).height()) * minTimer : minTimer;
		var moveTime = timer >= maxTimer ? maxTimer : timer;

		$('html, body').stop().animate({ scrollTop : baseT }, moveTime);
	});
	var $purchaseBar = $('.purchase_box');
	var purchaseBarH = $purchaseBar.outerHeight();
	if ( $purchaseBar.length ) $wrapper.addClass('detail_wrapper');

	var $orderBar = $('.order_sticky');
	var orderBarH = $orderBar.outerHeight();

	/* detail Tab */
	var $detail = $('.purchase_content');
	var detailTab = $detail.find('.tab_base');
	var offsetMinus = (detailTab.height() + headerH);

	detailTab.find('li a').click(function(){
		var moveIndex = $(this).parent('li').index();
		var contentName = $(this).attr('data-src');
		detailMoving(contentName, moveIndex);
	});
	function detailMoving(contentName, moveIndex, moveTime){
		detailMove(moveIndex);
		if ( $('.'+contentName).length ){
			var top = $('.'+contentName).offset().top - offsetMinus;
			var pos = parseInt(top);
			var tabPos = $('.purchase_content .tab_base').offset().top;
			var time = parseInt(Math.abs((top - tabPos) / 10));
			if ( moveTime == null ) {
				var timer = (time <= 500) ? 500 : time;
			} else {
				var timer = moveTime;
			}
			$('html, body').stop().animate({ scrollTop : pos }, timer);
		}
	}
	function detailMove(index){
		detailTab.find('li').removeClass('active');
		detailTab.find('li').eq(index).addClass('active');
	}

	$(window).on('load scroll resize', function(){
		var wrapperH = $wrapper.outerHeight();
		var scrollTop = $(this).scrollTop();
		var scrollLeft = $(this).scrollLeft();
		var endContent = wrapperH - $(this).height();

		var $topBanner = $('.top_banner');
		var headerTop = 0;
		if ( $topBanner.length && !$topBanner.hasClass('hide') ) headerTop = $topBanner.height();

		var stopLine = (endContent - footerH) + headerTop;

		if (scrollTop >= headerTop ) { $header.addClass('fixed'); }
		else { $header.removeClass('fixed'); }

		scrollTop >= headerH ? goTop.addClass('show') : goTop.removeClass('show');

		var fixedBottom, pos, bottom;
		var trans = $purchaseBar.length || $orderBar.length ?  '' : '.3s ease all';

		if ( scrollTop >= stopLine - $commonButton.outerHeight() ){
			pos = 'absolute';
			bottom = $orderBar.length ? orderBarH + commonButtonBottom : '';
		} else {
			pos = 'fixed';
			bottom = $purchaseBar.length ? commonButtonBottom + 54 : commonButtonBottom;
		}
		$commonButton.css({ 'position' : pos, 'bottom' : bottom, 'transition' : trans });

		if (scrollTop > lastScrollTop) {
			//내려갈때
			if ( scrollTop <= endContent ) $appBar.removeClass('show');

			if ( $orderBar.length ){ fixedBottom = orderBarH; }
			else { fixedBottom = 0; }

			if ( scrollTop >= stopLine - $commonButton.outerHeight() ){
				pos = 'absolute';
				trans = '';
				if ( $purchaseBar.length ){ fixedBottom = 0; }
			} else {
				pos = 'fixed';
				if ( $purchaseBar.length ){ fixedBottom = purchaseBarH; }
			}
			bottom = fixedBottom + commonButtonBottom;
		} else if (scrollTop < lastScrollTop) {
			//올라갈때
			$appBar.addClass('show');
			if ( $purchaseBar.length ){ fixedBottom = purchaseBarH; }
			else if ( $orderBar.length ){ fixedBottom = orderBarH; }
			else {
				fixedBottom = appBarH;
				stopLine = $appBar.length ? stopLine + appBarH : stopLine;
			}

			if (lastScrollTop >= stopLine ) trans = '';
			if ( scrollTop >= stopLine ){
				bottom = $orderBar.length ? fixedBottom + commonButtonBottom : '';
			} else {
				pos = 'fixed';
				bottom = fixedBottom + commonButtonBottom;
			}
		}
		$commonButton.css({ 'position' : pos, 'bottom' : bottom, 'transition' : trans });
		lastScrollTop = scrollTop;


		/* detailTab select */
		detailMove(0);
		if ( $detail.length ) var detailTabPos = $detail.offset().top;
		var contentIndex = 0;

		if ( scrollTop >= detailTabPos - headerH ){
			detailTab.addClass('fixed').css({ 'top' : headerH - 1 });

			if ( $detail.length ){
				for (var i = 0; i < $('.detail_view').length; i++){
					var pos = $detail.find('.detail_view').eq(i).offset().top - offsetMinus - ($(window).height()/5);
					if (scrollTop > pos ) contentIndex = i;
					detailMove(contentIndex);
				}
			}
			if ( $(window).width() <= detailTab.width() ){
				if (scrollLeft <= 0){
					detailTab.css({ 'left' : '0', 'margin-left' : 0 });
				} else {
					detailTab.css({ 'left' : '0', 'margin-left' : - scrollLeft });
				}
			} else {
				detailTab.css({ 'left' : '50%', 'margin-left' : -(detailTab.width()/2) });
			}
		} else {
			detailTab.removeClass('fixed').css({ 'top' : 0, 'left' :'50%', 'margin-left' : -(detailTab.width()/2) });
		}
	});

	var $bannerBar = $('.banner_bar');
	$bannerBar.each(function(){
		var _this = $(this);
		_this.find('ul').addClass('swiper-wrapper');
		_this.find('ul li').each(function(){
			$(this).addClass('swiper-slide');
			$(this).find('dt').attr('data-swiper-parallax', '-100');
			$(this).find('dd').attr('data-swiper-parallax', '-200');
		});

		var bannerBar = new Swiper($(this), {
			effect: 'fade',
			spaceBetween: 0,
			pagination: {
				el: $(this).find('.bn_page'),
				type: 'fraction',
			},
			loop : true,
			resistanceRatio : 0
		});
	});

	var $review = $('.review_box');
	$review.each(function(){
		var reText = $(this).find('.re_text');
		var reply = $(this).find('.reply');
		var more = $(this).find('.bt_more');

		if ( !reText.find('.re_inner').length ) reText.wrapInner('<div class="re_inner" />').wrapInner('<div class="re_cont" />');
		if (reText.find('.re_inner').outerHeight(true) <= 54 && !reply.length ) more.css({ 'display' : 'none'});
		more.click(function(){
			var reviewBox = $(this).parents('.review_box');
			if (!reviewBox.hasClass('show')){
				reviewBox.addClass('show');
				reText.css({ 'max-height' : reText.find('.re_inner').outerHeight(true) });
			} else {
				reviewBox.removeClass('show');
			}
			console.log(reText.find('.re_inner').outerHeight(true) );
		});
	});

	var $reviewAid = $('.aid_click');
	$reviewAid.each(function(){
		var button = $(this).find('.bt_aid');
		button.click(function(){
			var reviewAid = $(this).parent('.aid_click');
			var number1 = parseInt($(this).find('span').html());
			var number2 = parseInt($(this).siblings().find('span').html());

			if ( !reviewAid.find('.active').length ){
				$(this).addClass('active');
				number1 = number1 + 1;
			} else {
				if ( $(this).hasClass('active') ){
					$(this).removeClass('active');
					number1 = number1 - 1;
				} else {
					$(this).addClass('active');
					$(this).siblings().removeClass('active');
					number1 = number1 + 1;
					number2 = number2 - 1;
				}
			}
			$(this).find('span').html(number1);
			$(this).siblings().find('span').html(number2);
		});

	});

	headerTitle.click(function(){
		if ( $(this).hasClass('has_sub') && $(this).next('.nav_page').length ){
			if ( !$(this).hasClass('show') ){
				aniDelay(headerList.find('li'), '.02');
				$(this).addClass('show');
			} else {
				aniDelay(headerList.find('li'), '.02');
				$(this).removeClass('show');
			}
		}
		headerNavi();
	});
	function headerNavi(){
		if ( !headerList.hasClass('show') ) {
			headerList.addClass('show');
			headerList.height(headerList.find('ul').height());
		} else {
			headerList.height(0);
			headerList.removeClass('show');
		}
		$('body').on('touchmove click',function(e){
			if ( !$header.has(e.target).length && headerList.hasClass('show') ) headerList.removeClass('show');
		});
	}

	$headerMenu.each(function(){
		var _this = $(this);
		var headerSearch = _this.find('.nav_search');
		var headerList = _this.find('.nav_page');
		var headerTitle = _this.find('.tit_page');
		if ( headerList.length ) headerTitle.addClass('has_sub');
		headerSearch.click(function(){
			_this.find('.search_form').addClass('show');
			_this.find('.search_form').find('.nav_prev').click(function(){
				_this.find('.search_form').removeClass('show');
			});
		});
	});

	var $lnbMenu = $('.lnb_menu');
		$lnbMenu.each(function(){
			var lnbUl = $(this).find('ul');
			var lnbActive = lnbUl.find('li.active');
			if ( lnbUl >= $lnbMenu && lnbActive.length ){
				var pos = (lnbActive.position().left) - ($(window).width() - lnbActive.width())/2;
				lnbUl.scrollLeft(pos);
			}
		});

	var $menu = $('.nav_all');
	var $close = $menu.find('.gnb_menu > .nav_prev');
	var $menuAll = $('.menu_list');
	var navAll = $menuAll.find('li');

	var list = $('.menu_list > ul > li').not('.plan');
	$('.nav_app .m_hbg').click(function(){
		if ( $menu.length ){
			if ($menuAll.length) aniDelay(list);
			$menu.addClass('show');
			$('body').css({ 'overflow' : 'hidden' });
			$close.click(function(){
				if ($menuAll.length) aniDelay(list,'.03','0');
				$('body').css({ 'overflow' : 'auto' });
				$menu.removeClass('show');
				navAll.find('.dep_2').height(0);
			});
		}
	});
	navAll.each(function(){
		var navDep_1 = $(this).find('.dep');
		var navDep_2 = navDep_1.next('.dep_2');
		if ( navDep_2.length ) {
			navDep_1.addClass('has_sub');
			navDep_1.click(function(){
				var thisDep_1 = $(this);
				var thisDep_2 = navDep_1.next('.dep_2');
				aniDelay(thisDep_2.find('li a'), '.03');
				if ( !$(this).parent('li').hasClass('show') ){
					navAll.removeClass('show');
					thisDep_1.parent('li').addClass('show');

					navAll.find('.dep_2').height(0);
					thisDep_2.height(navDep_2.find('ul').outerHeight());
				} else {
					thisDep_1.parent('li').removeClass('show');
					thisDep_2.height(0);
				}
			});
		}
	});

	/* amount control */
	var $amount = $('.amount_input');
	$amount.each(function() {
		spinnerHandler($(this));
	});

	/* list view type */
	var $btList = $('.bt_list_view');
	if ( $btList.length ){
		$btList.each(function(){
			if (!$btList.find('.ico').length) $btList.find('span').before('<span class="ico"><u>아이콘</u></span>');
			$btList.on('click', function(){
				var _this = $(this);
				if (_this.hasClass('rows')) {
					_this.removeClass('rows');
					_this.find('span').not('.ico').html('1단');
				}
				else {
					_this.addClass('rows');
					_this.find('span').not('.ico').html('2단');
				}
			});
		});
	}
	var $lnbSecond = $('.lnb_second.slide');
	$lnbSecond.each(function(){
		var _this = $(this);
		var lnbTitle = _this.find('h2');
		var lnbList = _this.find('.lnb_2dep');
		var lnbLi = lnbList.find('li');
		var beforeH = lnbTitle.outerHeight(true);
		var afterH = beforeH + lnbList.outerHeight(true);
		lnbTitle.find('a').click(function() {
			if (!_this.hasClass('show')){
				for ( var i=0; i<=lnbLi.length; i++){
					var index = i + 1;
					lnbLi.eq(i).css({ 'transition-delay' : ('0.08'*index) + 's' });
				}
				_this.height(afterH);
				_this.addClass('show');
			} else {
				lnbLi.css({ 'transition-delay' : '.3s' });
				_this.height(beforeH);
				_this.removeClass('show');
			}
		});
	});

	/* scroll */
	var $listScroll = $('.list_scroll');
	$listScroll.each(function(){
		var _this = $(this);
		var inner = _this.find('.scroll_inner');
		var innerPadding = parseInt(inner.css('padding-bottom'));
		_this.height(inner.outerHeight(true) - innerPadding);
		$(window).bind('resize', function(){
			_this.height(inner.outerHeight(true) - innerPadding);
		});
	});

	$('.banner_plan').each(function(){
		var _this = $(this);
		if ( _this.hasClass('slide') ){
			_this.find('ul').addClass('swiper-wrapper');
			_this.find('ul li').each(function(){
				$(this).addClass('swiper-slide');
				$(this).find('dt').attr('data-swiper-parallax', '-100');
				$(this).find('dd').attr('data-swiper-parallax', '-200');
			});

			//var loopType = _this.parents('.main_recommand').length ? true : false;

			var perview = _this.parents('.main_focus').length ? 'auto' : 1;
			var bannerPlan = new Swiper($(this), {
				spaceBetween: 0,
				slidesPerView : perview,
				parallax: true,
				loop : true,
				loopFillGroupWithBlank: true,
				pagination: {
					el: $(this).find('.bn_page'),
					clickable: true,
					type: 'progressbar'
				},
				resistanceRatio : 0
			});
		}
	});

	var $btLike = $('.bt_like');
	$btLike.each(function(){
		$(this).click(function(){
			if ( !$(this).hasClass('active') ){
				$(this).addClass('active');
			} else {
				$(this).removeClass('active');
			}
		});
	});

	var $searchBest = $('.search_best');
	$searchBest.each(function(){
		var best = $(this);
		var search = best.find('.search_list');
		var thisTitle = best.find('.tit_search');
		search.find('ol').clone(true).appendTo(thisTitle).wrap('<div class="search_list_copy" />');

		var thisList = best.find('.search_list_copy li');
		var index = 0;
		var timer = 2000;
		var searchSlide = null;
		var starting = null;

		function searchBest(){
			thisList.not(':eq('+ index +')').removeClass('active');
			thisList.eq(index).addClass('active');
			index = ( index < thisList.length - 1 ) ? ++index : 0;
		}
		function searchStart(){
			searchBest();
			searchSlide = setInterval(searchBest, timer);
		}
		function searchStop(){
			if(searchSlide != null) {
				clearInterval(searchSlide);
			}
		}
		if ( best.hasClass('small') ) searchStart();
		best.find('.bt_more').click(function(){
			if ( best.hasClass('small') ) {
				best.removeClass('small');
				clearTimeout(starting);
				searchStop();
				aniDelay(search.find('li'), '.4', '.2');
			} else {
				aniDelay(search.find('li'), '0', '0');
				best.addClass('small');
				starting = setTimeout(searchStart, timer);
			}
		});
	});

	/* detail */
	var $detailThumbs = $('.detail_thumbs');
	if ( $detailThumbs.length ){
		$detailThumbs.find('ul').addClass('swiper-wrapper');
		$detailThumbs.find('ul li').each(function(){
			$(this).addClass('swiper-slide');
		});

		var detailThumb = new Swiper($detailThumbs, {
			spaceBetween: 0,
			pagination: {
				el: $detailThumbs.find('.bn_page'),
				//clickable: true,
				type: 'progressbar'
			},
			resistanceRatio : 0
		});
	}

	/* review thumbs */
	var $reviewPhoto = $('.item_thumbnail');
	$reviewPhoto.each(function(){
		thumbClone($(this), 0);
	});
	function thumbClone($reviewPhoto, index){
		var thumbList = $reviewPhoto.find('.thumbs li');
		var thumbPreview = $reviewPhoto.find('.preview');

		if ( $reviewPhoto.length || thumbList.find('img').length ){
			var thumbClone = thumbList.eq(index).children('img');
			thumbPreview.html(thumbClone.clone(true));
		}
		thumbList.eq(index).addClass('active');

		thumbList.click(function(){
			var index = $(this).index();

			thumbList.not(':eq('+ index +')').removeClass('active');
			thumbList.eq(index).addClass('active');

			var thumbClone = thumbList.eq(index).children('img');
			thumbPreview.html(thumbClone.clone(true));
		});
	}

	if ( $('.popup_filter').length ){
		$('.popup_filter').css({ 'height' : $(window).height() });
	}
	$(window).bind('scroll resize', function(){
		$('.popup_filter').css({ 'height' : $(window).height() });
	});

	qnaList();

	var $buttonBuy = $('.purchase_box .bt_buy');
	$buttonBuy.click(function(){
		$('.purchase_box').append('<div class="dimd" />');
		layerShow('.layer_purchase');
		$('.purchase_box').find('.dimd').click(function(){
			$(this).remove();
			layerHide('.layer_purchase');
		});
	});
	var $buttonShare = $('.purchase_box .bt_share');
	$buttonShare.click(function(){
		$('.purchase_box').append('<div class="dimd" />');
		layerShow('.layer_share');
		$('.purchase_box').find('.dimd').click(function(){
			$(this).remove();
			layerHide('.layer_share');
		});
		$('.layer_share .bt_close').click(function(){
			$('.purchase_box').find('.dimd').remove();
			layerHide('.layer_share');
		});
	});
	var $admin = $('.admin_write');
	$admin.each(function(){
		var admin = $(this);
		var adminButton = admin.find('h5');
		var layerAdmin = adminButton.next('.layer_admin');
		adminButton.click(function(){
			if (!layerAdmin.hasClass('show')){
				layerAdmin.addClass('show');
				layerAdmin.parents('.qna_content').css({'overflow' : 'visible'});
			} else {
				layerAdmin.removeClass('show');
			}
		});
		$('body').on('touchmove click',function(e){
			if ( !admin.has(e.target).length && layerAdmin.hasClass('show') ) layerAdmin.removeClass('show');
		});
	});


	var $fileUpload = $('.file_upload');
	if($fileUpload.length){
		$fileUpload.each(function(){
			var $this = $(this);
			var $thisID = $this.attr('id');
			$this.wrapAll('<div class="find_file" />');
			if (!$this.parents('.upload_area').length ) $this.parent('.find_file').wrapAll('<div class="upload_area" />');
			$('.attach_name').each(function(){
				var thisDel = $(this).find('.bt_del');
				thisDel.click(function(){
					$(this).parents('.attach_area').remove();
				});
			});

			var uploadWrap = $this.parent('.find_file');
			var attachList = uploadWrap.siblings('.attach_area');
			uploadWrap.append('<input type="text" readonly="readonly" class="file_name" /><label for="'+ $thisID +'" class="file_label">파일첨부</label>');

			function fileLoad() {
				uploadWrap.each(function(idx){
					var $this = $(this).eq(idx),
						$btnUpload = $this.find('[type="file"]');

					$btnUpload.on('change', function() {
						var $target = $(this),
							fileName = $target.val().replace(/.*(\/|\\)/, '');
						var attach = $this.siblings('.attach_area').find('.attach_name');

						if ( !$(this).parents('.find_file').siblings('.attach_area').length ){
							uploadWrap.after('<div class="attach_area" />');
						}
						attachList = uploadWrap.siblings('.attach_area');
						attachList.html('<span class="attach_name">'+ fileName +'<a href="#none" class="bt_del">삭제</a></span>');

						$('.attach_name').each(function(){
							var thisDel = $(this).find('.bt_del');
							thisDel.click(function(){
								$(this).parents('.attach_area').remove();
							});
						});
						/*
						if ( attach.length < 2 ){
							attachList.append('<span class="attach_name">'+ fileName +'<a href="#none" class="bt_del">삭제</a></span>');
						} else {
							attach.eq(0).remove();
							attachList.append('<span class="attach_name">'+ fileName +'<a href="#none" class="bt_del">삭제</a></span>');
						}
						*/
					});
				});
			}
			fileLoad();
		});
	}

	var $formCheck = $('.form_check');
	$formCheck.each(function(){
		var _this = $(this);
		_this.find('li').each(function(){
			$(this).find('.bt_more').click(function(){
				if ( !$(this).hasClass('active') ){
					$(this).siblings('.agree_box').addClass('show');
					$(this).addClass('active');
				} else {
					$(this).siblings('.agree_box').removeClass('show');
					$(this).removeClass('active');
				}
			});
			var agreeCheck = _this.find('input[type=checkbox]');
			var agreeAll = _this.find('.all input[type=checkbox]');
			if( agreeAll.prop("checked") ) agreeCheck.prop("checked",true);
			agreeAll.click(function(){
				if( agreeAll.prop("checked") ) agreeCheck.prop("checked",true);
				else agreeCheck.prop("checked",false);
			});
			var maxCheck = agreeCheck.length - 1;
			agreeCheck.click(function(){
				if( !$(this).parent('li').hasClass('all') ){
					var numCheck = _this.find('.agree_read input[type=checkbox]:checked').length;
					if ( numCheck === maxCheck ) agreeAll.prop('checked', true);
					else agreeAll.prop('checked', false);
				}
			});
		});
	});

	var $emailSelect = $('select.email_address');
	emailSelect();
	$emailSelect.change(function(){
		emailSelect();
	});
	function emailSelect(){
		var $emailBox = $('input.email_address');
		$('select.email_address option:selected').each(function () {
			var _this = $(this);
			if( _this.val() == 'directInput' ) {
				$emailBox.val('');
				$emailBox.attr("disabled",false);
			} else { //직접입력이 아닐경우
				$emailBox.val(_this.text());
				$emailBox.attr("disabled",true);
			}
		});
	}

	var systemPage = $('.system_content');
	if (systemPage.length) $wrapper.addClass('system_page');
});
function qnaList(){
	var $qna = $('.qna_box');
	$qna.each(function(){
		var qnaList = $(this);
		var subjects = qnaList.find('.qna_subject');
		subjects.click(function(){
			var content = $(this).next('.qna_content');
			if ( !$(this).parent('.qna_box').hasClass('show') ){
				var totalH = 0;
				content.children('div').each(function(){
					totalH = totalH + $(this).outerHeight();
				});
				qnaList.siblings().removeClass('show');
				qnaList.siblings().find('.qna_content').css({'overflow' : 'hidden'}).height(0);
				content.height(totalH);
				qnaList.addClass('show');
			} else {
				content.height(0).css({'overflow' : 'hidden'});
				qnaList.removeClass('show');
			}
		});
	});
}
function aniDelay(name, space, delay){
	var space = !space ? .1 : space;
	var delay = !delay ? 0 : Number(delay);
	for ( var i=0; i<=name.length; i++){
		var index = i + 1;
		name.eq(i).css({ 'transition-delay' : (delay + (space * index)) + 's' });
	}
}
function tabShow(tab,content){
	var $tab = $(tab);
	var tabList = $tab.find('li');
	var active = $tab.find('li.active');
	var $content = $(content);
	var showNum = active.length ? active.index() : 0;

	contentShow(showNum);
	$tab.find('li a').click(function(){
		var _this = $(this);
		var index = _this.parent('li').index();
		contentShow(index);
	});

	function contentShow(showNum){
		tabList.not(':eq('+ showNum+ ')').removeClass('active');
		tabList.eq(showNum).addClass('active');
		$content.not(':eq('+ showNum+ ')').hide();
		$content.eq(showNum).show();
	}
}
function listChange(){
	var $listCols = $('.bt_list_view');
	var $listContent = $listCols.parents('.list_header').next('.list_thumbs');
	if ( $listCols.length && $listContent.length ) {
		if ( $listContent.hasClass('rows') ) {
			$listCols.addClass('rows');
		}
	}
	$listCols.click(function(){
		if ($(this).hasClass('rows')){
			$listContent.removeClass('rows');
		} else {
			$listContent.addClass('rows');
		}
	});
}
function inputBox(){
	var inputText = $('input:not([type="checkbo"]):not([type="radio"]), textarea');
	inputText.each(function(e){
		var _this = $(this);
		var inputBox = _this.parents('.input_box');
		if ( inputBox.length && inputBox.find('.bt_search').length ) inputBox.addClass('search_form');

		searchBox(inputBox, e);
		_this.on('keypress keyup', function(e){
			var thisParent = _this.parent('.input_box');
			searchBox(thisParent, e);
		});
		if (_this.val() !== '') _this.addClass('focus');
		function searchBox(thisParent, e){
			var box = thisParent.length ? thisParent : _this;
			if(e.keyCode !== 13){
				if( _this.val() !== '' ){
					box.addClass('focus');
					if ( !inputBox.find('.bt_remove').length ) inputBox.append('<span class="bt_remove" />');
					inputBox.find('.bt_remove').click(function(){
						box.removeClass('focus');
						$(this).siblings('input').val('');
						$(this).remove();
					});
				} else {
					_this.removeClass('focus');
					inputBox.find('.bt_remove').remove();
				}
			}
		}
	});
}
function selectDs(){
	$('select.select').each(function () {
		var _this = $(this),
			numberOfOptions = _this.children('option').length,
			name = _this.attr('class');

		_this.addClass('s-hidden');
		_this.wrap('<div class="' + name + '"></div>');
		_this.after('<div class="styledSelect"><span></span></div>');

		var styledSelect = _this.next('div.styledSelect');
		if ( _this.is(':disabled') ) {
			styledSelect.parent('.select').addClass('disabled');
		}
		var selected = ( _this.find('option:selected').length ) ? _this.find('option').index(_this.find('option:selected')) : 0;

		styledSelect.children('span').text(_this.children('option').eq(selected).text());

		var $list = $('<ul />', { 'class': 'options' }).insertAfter(styledSelect);
		for (var i = 0; i < numberOfOptions; i++) {
			$('<li />', {
				text: _this.children('option').eq(i).text(),
				rel: _this.children('option').eq(i).val()
			}).appendTo($list);
		}
		if ( _this.find('option:disabled').length ){
			$list.children('li').eq(_this.find('option:disabled').index()).addClass('disabled');
		}

		var $listItems = $list.children('li');

		styledSelect.click(function (e) {
			e.stopPropagation();

			if ($(this).hasClass('active')){
				$(this).removeClass('active').next('ul.options').hide();
			} else {
				$('div.styledSelect').each(function () {
					$(this).removeClass('active').next('ul.options').hide();
				});
				if ( !styledSelect.hasClass('disabled') ){
					$(this).toggleClass('active').next('ul.options').toggle();
				}
			}
		});
		$listItems.click(function (e) {
			e.stopPropagation();
			styledSelect.children('span').text($(this).text()).removeClass('active');
			_this.val($(this).attr('rel'));
			$list.hide();
			styledSelect.removeClass('active');
			styledSelect.addClass('focus');

			//var index =  !_this.children('option').attr('disabled') ? $(this).index() : $(this).index() + 1;
			var index = $(this).index();
			_this.val(_this.find('option').eq(index).val()).trigger('change');
		});
		$(document).click(function () {
			styledSelect.removeClass('active');
			$list.hide();
		});
	});
}
function spinnerHandler($spinner){
	var spinner = $spinner,
		input = spinner.find('input[type="number"]'),
		button = spinner.find('.bt_icon'),
		btnUp = spinner.find('.plus'),
		btnDown = spinner.find('.minus'),
		min = input.attr('min'),
		max = input.attr('max');

	var oldValue = parseFloat(input.val());
	if (oldValue <= min) {
		btnDown.addClass('not_more');
	} else if (oldValue >= max) {
		btnUp.addClass('not_more');
	} else {
		btnUp.removeClass('not_more');
		btnDown.removeClass('not_more');
	}

	input.on('input', function(){
		if ( Number(input.val()) >= Number(max) ){
			input.val(max);
		} else if ( Number(input.val()) <= Number(min) && input.val() === '' ){
			input.val(min);
		}
		(input.val() <= 1) ? btnDown.addClass('not_more') : btnDown.removeClass('not_more');
		(input.val() >= Number(max)) ? btnUp.addClass('not_more') : btnUp.removeClass('not_more');
		//console.log(input.val())
	});

	button.each(function(){
		$(this).click(function(){
			var oldValue = parseFloat(input.val());
			if ( $(this).hasClass('plus') ){
				var newVal = (oldValue >= max) ? oldValue : oldValue + 1;
			} else {
				var newVal = (oldValue <= min) ? oldValue : oldValue - 1;
			}
			(newVal <= 1) ? btnDown.addClass('not_more') : btnDown.removeClass('not_more');
			(newVal >= max) ? btnUp.addClass('not_more') : btnUp.removeClass('not_more');

			spinner.find('input').val(newVal);
			spinner.find('input').trigger('change');
		});
	});
}
function layerShow(name){
	var name = $(name);
	if ( name.hasClass('popup') ){
		if (!name.parent('.layer_popup').length) name.wrap('<div class="layer_popup" />');

		var thisParent = name.parent('.layer_popup');
		if (!thisParent.find('.dimd').length) thisParent.append('<div class="dimd" />');
		$(name).parents('.layer_popup').addClass('show');
		$('.dimd').click(function(){
			layerHide(name);
		});
		name.show();
		layerPos(name);
		$(window).bind('load resize', function(){
			layerPos(name);
		});
	} else {
		name.addClass('show');
	}
	$('body').css({ 'overflow' : 'hidden' });
	var close = name.find('.close');
	close.click(function(){
		layerHide(name);
	});

	function layerPos(name){
		var wh = $(window).height();
		var h = name.outerHeight();
		if ( wh <= h ) {
			name.parents('.layer_popup').css({'align-items': 'flex-start'});
		} else {
			name.parents('.layer_popup').css({'align-items': 'center'});
		}
	}
}
function layerHide(name){
	var name = $(name);
	if ( name.hasClass('popup') ) {
		$(name).parents('.layer_popup').removeClass('show');
		if ($('.dimd').length) $('.dimd').remove();
	} else {
		name.removeClass('show');
	}
	$('body').css({ 'overflow' : '' });
}