/**
 * Created by huangjiajia on 2016/6/21.
 * Description: tab切换
 * Usage:
 */
define(function(require, exports, module) {
	var $ = require('jquery'); +
	function($) {
		'use strict';

		// TAB CLASS DEFINITION
		// ====================

		var Tab = function(element) {
			this.element = $(element);
		};

		Tab.TRANSITION_DURATION = 150;

		Tab.prototype.show = function() {
			var $this = this.element;
			var $ul = $this.closest('ul');
			var selector = $this.data('target');

			if(!selector) {
				selector = $this.attr('href');
			}

			//if($this.parent('li').hasClass('active')) return
			$ul.find('li').removeClass('active');
			$this.parent('li').addClass('active');

			$ul.find('li [data-toggle="tab-list"]').each(function() {
				var $targetDom = $(this).data('target');
				$($targetDom).removeClass('active');
			});
			var $target = $(selector);
			$target.addClass('active');

		};

		Tab.prototype.activate = function() {

		};

		// TAB PLUGIN DEFINITION
		// =====================

		function Plugin(option) {
			return this.each(function() {
				var $this = $(this);
				var data = $this.data('bs-tab-list');

				if(!data) $this.data('bs-tab-list', (data = new Tab(this)));
				if(typeof option == 'string') data[option]()
			})
		}

		var old = $.fn.tab;

		$.fn.tab = Plugin;
		$.fn.tab.Constructor = Tab;

		// TAB NO CONFLICT
		// ===============

		$.fn.tab.noConflict = function() {
			$.fn.tab = old;
			return this;
		};

		// TAB DATA-API
		// ============

		var clickHandler = function(e) {
			e.preventDefault();
			Plugin.call($(this), 'show');
		};

		$(document)
			.on('click.bs.tab-list', '[data-toggle="tab-list"]', clickHandler)

	}(jQuery);
});