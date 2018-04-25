/**
 * Created by huangjiajia on 2016/7/11.
 * Description: 图片延迟加载
 * 用法：
 * 1. 全部图片延迟加载 $('img').scrollLoading()
 * 2. 指定图片延迟加载 $('.async').scrollLoading()
 */
define(function(require, exports, module) {
	var a = require('jquery');
	(function(a) {

		a.fn.scrollLoading = function(b) {

			var c = {
				attr: "delayLoad",
				placeholder: "data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==",
				container: a(window),
				callback: a.noop
			};
			var d = a.extend({},
				c, b || {});
			d.cache = [];
			a(this).each(function() {
				var h = this.nodeName.toLowerCase(),
					g = a(this).attr(d.attr.toLowerCase());
				if(a(this).attr("src") === undefined || a(this).attr("src") === false) {
					if(a(this).is("img")) {
						a(this).attr("src", d.placeholder);
					}
				}
				var i = {
					obj: a(this),
					tag: h,
					url: g
				};
				d.cache.push(i)
			});
			var f = function(g) {
				if(a.isFunction(d.callback)) {
					d.callback.call(g.get(0))
				}
			};
			var e = function() {
				var g = d.container.height();
				if(d.container.get(0) === window) {
					contop = a(window).scrollTop()
				} else {
					contop = d.container.offset().top
				}
				a.each(d.cache,
					function(m, n) {
						var p = n.obj,
							j = n.tag,
							k = n.url,
							l, h;
						if(p) {
							l = p.offset().top - contop;
							h = l + p.height();
							if((l >= 0 && l < g) || (h > 0 && h <= g)) {
								if(k) {
									if(j === "img") {
										f(p.attr("src", k));
									} else {
										p.load(k, {},
											function() {
												f(p)
											})
									}
								} else {
									f(p)
								}
								n.obj = null
							}
						}
					})
			};
			e();
			d.container.bind("scroll", e)
		}
	})(jQuery);

})