/**
 * Created by 黄佳佳 on 2016/6/5.
 */
define(function(require, exports, module) {
	var $ = require('jquery');

	+
	function($) {
		'use strict';
		var version = $.fn.jquery.split(' ')[0].split('.')
		if((version[0] < 2 && version[1] < 9) || (version[0] == 1 && version[1] == 9 && version[2] < 1)) {
			throw new Error('Bootstrap\'s JavaScript requires jQuery version 1.9.1 or higher')
		}
	}(jQuery);

	/* ========================================================================
	 * Bootstrap: transition.js v3.3.5
	 * http://getbootstrap.com/javascript/#transitions
	 * ========================================================================
	 * Copyright 2011-2015 Twitter, Inc.
	 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
	 * ======================================================================== */

	+
	function($) {
		'use strict';

		// CSS TRANSITION SUPPORT (Shoutout: http://www.modernizr.com/)
		// ============================================================

		function transitionEnd() {
			var el = document.createElement('bootstrap')

			var transEndEventNames = {
				WebkitTransition: 'webkitTransitionEnd',
				MozTransition: 'transitionend',
				OTransition: 'oTransitionEnd otransitionend',
				transition: 'transitionend'
			}

			for(var name in transEndEventNames) {
				if(el.style[name] !== undefined) {
					return {
						end: transEndEventNames[name]
					}
				}
			}

			return false // explicit for ie8 (  ._.)
		}

		// http://blog.alexmaccaw.com/css-transitions
		$.fn.emulateTransitionEnd = function(duration) {
			var called = false
			var $el = this
			$(this).one('bsTransitionEnd', function() {
				called = true
			})
			var callback = function() {
				if(!called) $($el).trigger($.support.transition.end)
			}
			setTimeout(callback, duration)
			return this
		}

		$(function() {
			$.support.transition = transitionEnd()

			if(!$.support.transition) return

			$.event.special.bsTransitionEnd = {
				bindType: $.support.transition.end,
				delegateType: $.support.transition.end,
				handle: function(e) {
					if($(e.target).is(this)) return e.handleObj.handler.apply(this, arguments)
				}
			}
		})

	}(jQuery);

	+
	function($) {
		'use strict';

		// SWIPE CLASS DEFINITION
		// =========================

		var Swipe = function(element, options) {
			this.$element = $(element);
			this.$indicators = this.$element.find('.swipe-indicators');
			this.options = options;
			this.paused = null;
			this.sliding = null;
			this.interval = null;
			this.$active = null;
			this.$items = null;

			this.options.keyboard && this.$element.on('keydown.bs.swipe', $.proxy(this.keydown, this));

			this.options.pause == 'hover' && !('ontouchstart' in document.documentElement) && this.$element
				.on('mouseenter.bs.swipe', $.proxy(this.pause, this))
				.on('mouseleave.bs.swipe', $.proxy(this.cycle, this));

			this.$indicators.length == 0 && (this.$indicators = this.$element.find('[data-indicators="swipe-indicators"]'));
			this.$indicators.length == 0 && (this.$indicators = $('[data-target="#' + $(this.$element).attr('id') + '"]').closest('[data-indicators="swipe-indicators"]'));

		};

		Swipe.TRANSITION_DURATION = 600;

		Swipe.DEFAULTS = {
			interval: 5000,
			pause: 'hover',
			wrap: true,
			keyboard: true
		};

		Swipe.prototype.keydown = function(e) {
			if(/input|textarea/i.test(e.target.tagName)) return;
			switch(e.which) {
				case 37:
					this.prev();
					break;
				case 39:
					this.next();
					break;
				default:
					return;
			}

			e.preventDefault()
		};

		Swipe.prototype.cycle = function(e) {
			e || (this.paused = false);

			this.interval && clearInterval(this.interval);

			this.options.interval &&
				!this.paused &&
				(this.interval = setInterval($.proxy(this.next, this), this.options.interval));

			return this
		};

		Swipe.prototype.getItemIndex = function(item) {
			this.$items = item.closest('.swipe').find('.swipe-inner .item');

			item.closest('.swipe').length == 0 && (this.$items = $(item.data('target')).find('.swipe-inner .item'));
			return this.$items.index(item || this.$active)
		};

		Swipe.prototype.getItemForDirection = function(direction, active) {
			var activeIndex = this.getItemIndex(active);
			var willWrap = (direction == 'prev' && activeIndex === 0) ||
				(direction == 'next' && activeIndex == (this.$items.length - 1));
			if(willWrap && !this.options.wrap) return active;
			var delta = direction == 'prev' ? -1 : 1;
			var itemIndex = (activeIndex + delta) % this.$items.length;
			return this.$items.eq(itemIndex)
		};

		Swipe.prototype.to = function(pos) {
			var that = this;
			var activeIndex = this.getItemIndex(this.$active = this.$element.find('.item.active'));

			if(pos > (this.$items.length - 1) || pos < 0) return;

			if(this.sliding) return this.$element.one('slid.bs.swipe', function() {
				that.to(pos)
			}); // yes, "slid"
			if(activeIndex == pos) return this.pause().cycle();

			return this.slide(pos > activeIndex ? 'next' : 'prev', this.$items.eq(pos))
		};

		Swipe.prototype.pause = function(e) {
			e || (this.paused = true);

			if(this.$element.find('.next, .prev').length && $.support.transition) {
				this.$element.trigger($.support.transition.end);
				this.cycle(true);
			}

			this.interval = clearInterval(this.interval);

			return this;
		};

		Swipe.prototype.next = function() {
			if(this.sliding) return;
			return this.slide('next');
		};

		Swipe.prototype.prev = function() {
			if(this.sliding) return;
			return this.slide('prev')
		};

		Swipe.prototype.slide = function(type, next) {
			var $active = this.$element.find('.swipe-inner .item.active');
			var $next = next || this.getItemForDirection(type, $active);
			var isCycling = this.interval;
			var direction = type == 'next' ? 'left' : 'right';
			var that = this;

			if($next.hasClass('active')) return(this.sliding = false);

			var relatedTarget = $next[0];
			var slideEvent = $.Event('slide.bs.swipe', {
				relatedTarget: relatedTarget,
				direction: direction
			});
			this.$element.trigger(slideEvent);
			if(slideEvent.isDefaultPrevented()) return;

			this.sliding = true;

			isCycling && this.pause();

			if(this.$indicators.length) {
				this.$indicators.find('.active').removeClass('active');
				var $nextIndicator = $(this.$indicators.children()[this.getItemIndex($next)]);
				$nextIndicator && $nextIndicator.addClass('active');
			}

			var slidEvent = $.Event('slide.bs.swipe', {
				relatedTarget: relatedTarget,
				direction: direction
			}); // yes, "slid"
			if($.support.transition && this.$element.hasClass('slide')) {
				$next.addClass(type);
				$next[0].offsetWidth; // force reflow
				$active.addClass(direction);
				$next.addClass(direction);
				$active
					.one('bsTransitionEnd', function() {
						$next.removeClass([type, direction].join(' ')).addClass('active');
						$active.removeClass(['active', direction].join(' '));
						that.sliding = false;
						setTimeout(function() {
							that.$element.trigger(slidEvent)
						}, 0)
					})
					.emulateTransitionEnd(Swipe.TRANSITION_DURATION);

			} else {
				$active.removeClass('active');
				$next.addClass('active');
				this.sliding = false;
				this.$element.trigger(slidEvent)
			}

			isCycling && this.cycle();

			return this
		};

		// swipe PLUGIN DEFINITION
		// ==========================

		function Plugin(option) {
			return this.each(function() {
				var $this = $(this);
				var data = $this.data('bs.swipe');
				var options = $.extend({}, Swipe.DEFAULTS, $this.data(), typeof option == 'object' && option);
				var action = typeof option == 'string' ? option : options.slide;

				if(!data) $this.data('bs.swipe', (data = new Swipe(this, options)));
				if(typeof option == 'number') data.to(option);
				else if(action) data[action]();
				else if(options.interval) data.pause().cycle();
			})
		}

		var old = $.fn.swipe;

		$.fn.swipe = Plugin;
		$.fn.swipe.Constructor = Swipe;

		// swipe NO CONFLICT
		// ====================

		$.fn.swipe.noConflict = function() {
			$.fn.swipe = old;
			return this;
		};

		// SWIPE DATA-API
		// =================

		var clickHandler = function(e) {
			var href;
			var $this = $(this);
			var $target = $($this.attr('data-target') || (href = $this.attr('href')) && href.replace(/.*(?=#[^\s]+$)/, '')); // strip for ie7
			if(!$target.hasClass('swipe')) return;
			var options = $.extend({}, $target.data(), $this.data());
			var slideIndex = $this.attr('data-slide-to');
			if(slideIndex) options.interval = false;

			Plugin.call($target, options);
			if(slideIndex) {
				$target.data('bs.swipe').to(slideIndex);
			}

			e.preventDefault()
		};

		$(document)
			.on('click.bs.swipe.data-api', '[data-slide]', clickHandler)
			.on('click.bs.swipe.data-api', '[data-slide-to]', clickHandler)
			.on('mouseenter.bs.swipe.data-api', '[data-slide-to]', clickHandler);

		$(window).on('load', function() {
			$('[data-ride="swipe"]').each(function() {
				var $swipe = $(this);
				Plugin.call($swipe, $swipe.data())
			})
		})

	}(jQuery);
});