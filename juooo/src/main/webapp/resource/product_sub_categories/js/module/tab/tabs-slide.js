/**
 * Created by huangjiajia on 2016/6/21.
 * Description: 点击列表，上一个/下一个显示
 */
define(function(require, exports, module) {
	var $ = require('jquery');

	+
	function($) {
		'use strict';

		// TabSlide CLASS DEFINITION
		// ====================

		var TabSlide = function(element) {
			this.element = $(element);
			this.len = 0;
			this.start = 0;
			this.end = 0;
		};

		TabSlide.TRANSITION_DURATION = 150;

		TabSlide.prototype.slide = function() {
			var $this = this.element,
				next = $this.data('direction'),
				selector = $this.data('target'),
				$target = $(selector),
				$ItemList = $target.find('.tab-item'),
				$ItemListActive = $target.find('.tab-item.active');

			this.start = $ItemListActive.first().index();
			this.end = $ItemListActive.last().index();
			this.len = $ItemList.length;

			// next 有两种状态 prev or next
			if(next == 'prev') {
				// 如果已经是第一个，则不向前滑动
				if(this.start == 0) {
					return;
				} else {
					$ItemList.eq(this.start - 1).addClass('active');
					$ItemList.eq(this.end).removeClass('active');
					this.start--;
					this.end--;
				}
			} else if(next == 'next') {
				// 如果已经是最后一个，则不向后移动
				if(this.end == this.len - 1) {
					return;
				} else {
					$ItemList.eq(this.start).removeClass('active');
					$ItemList.eq(this.end + 1).addClass('active');
					this.start++;
					this.end++;
				}
			}

		};

		// TabSlide PLUGIN DEFINITION
		// =====================

		function Plugin(option) {
			return this.each(function() {
				var $this = $(this);
				var data = $this.data('bs-tab-slide-list');

				if(!data) $this.data('bs-tab-slide-list', (data = new TabSlide(this)));
				if(typeof option == 'string') data[option]()
			})
		}

		var old = $.fn.tabslide;

		$.fn.tabslide = Plugin;
		$.fn.tabslide.Constructor = TabSlide;

		// TAB NO CONFLICT
		// ===============

		$.fn.tabslide.noConflict = function() {
			$.fn.tabslide = old;
			return this;
		};

		// TabSlide DATA-API
		// ============

		var clickHandler = function(e) {
			e.preventDefault();
			Plugin.call($(this), 'slide');
		};

		$(document)
			.on('click.bs.tab-slide-list', '[data-toggle="tab-slide-list"]', clickHandler);

		//$(window).on('load', function () {
		//    $('[data-ride="tab-slide"]').each(function () {
		//        var $tabSlide = $(this);
		//        Plugin.call($tabSlide, $tabSlide.data())
		//    })
		//})
	}(jQuery);
});