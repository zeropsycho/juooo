define(function(require, exports, module) {

	var $ = require('jquery');

	var searchSuggestionTimeout = 0,
		searchSuggestionAjaxCache = {};

	function stopPropagation(e) {
		e = e || window.event;
		if(e.stopPropagation) { //W3C阻止冒泡方法  
			e.stopPropagation();
		} else {
			e.cancelBubble = true; //IE阻止冒泡方法  
		}
	}

	function gotoSearchPage(searchDomain, keywords, openNewWindow) {
		if(openNewWindow) {
			var submitForm = "<form id='hiddenlink' action='" + searchDomain + "' target='_blank' method='GET'><input type='hidden' name='k'   value='" + encodeURIComponent(keywords) + "'></form>";
			$('body').append(submitForm);
			var s = document.getElementById("hiddenlink");
			s.submit();
		} else {
			if(typeof isCitySite != 'undefined' && isCitySite) {
				window.location.href = searchDomain + '?city=' + cityId + '&k=' + encodeURIComponent(keywords);
			} else {
				window.location.href = searchDomain + '?k=' + encodeURIComponent(keywords);
			}

		}

	}

	$('.search-box .search-bar .search-btn').click(function(event) {
		stopPropagation(event);
		var searchDomain = $('#search_keywords').attr('searchAction'),
			keywords = document.getElementById('search_keywords').value;

		//如果没有输入关键词则使用默认的
		if($.trim(keywords) == '') {
			var defaultKeyWords = $('#search_keywords').attr('defaultKeyWords');
			keywords = defaultKeyWords ? defaultKeyWords : '';
		}

		gotoSearchPage(searchDomain, keywords);
		return;

		window.open(searchDomain + '?k=' + encodeURIComponent(keywords));
	});

	$('#search_keywords').focus(function(event) {
		stopPropagation(event);
		if($.trim(this.value) == '' || $('.search-box .search-bar .search-result').html() == '') {
			$('.search-box .search-bar .search-result').html('').hide();
		} else {
			$('.search-box .search-bar .search-result').show();
		}
	});

	$(document).on('click', function() {
		$('.search-box .search-bar .search-result').html('').hide();
	})

	$('#search_keywords').click(function(event) {
		stopPropagation(event);
	});

	$('#search_keywords').keyup(function(event) {
		var keywords = this.value;
		//keywords = keywords.replace(/(^\s*)|(\s*$)/g, "");
		keywords = $.trim(keywords);

		if(keywords == '') {
			clearTimeout(searchSuggestionTimeout);
			$('.search-box .search-bar .search-result').html('').hide();
			return;
		} else {
			$('.search-box .search-bar .search-result').show();
		}

		switch(event.which) {

			case 13: //回车
				var searchDomain = $(this).attr('searchAction');
				var active = $('.search-box .search-bar .search-result .active');
				if(active.length == 1) {

					//gotoSearchPage(active.find('a').attr('href'),'');
					window.location.href = active.find('a').attr('href');
					//window.open(active.find('a').attr('href'));
				} else {
					gotoSearchPage(searchDomain, keywords);
					//window.open(searchDomain+'?k='+encodeURIComponent(keywords));
				}
				return;
				break;

			case 38: //上箭头选择
				break;
				var active = $('.search .search-result .auto-list .active');
				active.removeClass('active');
				if(active.length == 1) {
					var prev = active.prev();
					if(prev.length == 1) {
						prev.addClass('active');
					}
				} else {
					$('.search .search-result .auto-list li:last').addClass('active');
				}
				return;
				break;

			case 40: //下箭头选择
				break;
				var active = $('.search .search-result .auto-list .active');
				active.removeClass('active');
				if(active.length == 1) {
					var next = active.next();
					if(next.length == 1) {
						next.addClass('active');
					}
				} else {
					$('.search .search-result .auto-list li:first').addClass('active');
				}
				return;
				break;
		}

		clearTimeout(searchSuggestionTimeout);
		searchSuggestionTimeout = setTimeout(function() {

			if(!!searchSuggestionAjaxCache[keywords]) {
				searchSuggestion(searchSuggestionAjaxCache[keywords], keywords);
			} else {
				$.ajax({
					url: searchSuggestionUrl,
					dataType: "jsonp",
					data: "k=" + encodeURIComponent(keywords),
					jsonp: "callback",
					success: function(result) {
						if(result.code == 'ok') {
							searchSuggestionAjaxCache[keywords] = [];
							searchSuggestionAjaxCache[keywords] = result.data;
							searchSuggestion(result.data, keywords);
						} else {
							$('.search-box .search-bar .search-result').html('').hide();
						}

					},
					error: function() {
						//alert('返回失败!');
					}
				});
			}
		}, 400);
	});

	function searchSuggestion(list, keywords) {
		var html = '';
		for(var k in list) {
			var re = new RegExp(keywords, 'i');
			var temp = list[k].schedular_name.replace(re, '<span class="key-word">' + "$&" + "</span>");
			html += '<li class="result-items"><a href="' + itemDomain + list[k].id + '" target="_blank" class="result-link">[' + list[k].c_name + '] ' + temp + '</a></li>';
		}

		if(!html == '') {
			$('.search-box .search-bar .search-result').html(html).show();
		} else {
			$('.search-box .search-bar .search-result').html('').hide();
		}
	}

});