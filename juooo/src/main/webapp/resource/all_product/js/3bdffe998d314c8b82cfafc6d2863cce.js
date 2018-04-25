window.light || function(a) {
	var e = a.document,
		i = a.location,
		h = Array.prototype,
		d, c;
	try {
		c = i.href
	} catch(b) {
		c = e.createElement("a"), c.href = "", c = c.href
	}
	d = /^([\w\+\.\-]+:)(?:\/\/([^\/?#:]*)(?::(\d+))?([^?#]*))?/.exec(c.toLowerCase()) || [];
	var j = {
			version: "0.9.0",
			timestamp: (new Date).getTime(),
			debug: !1,
			baseDomain: function() {
				var f = d[2].split(".");
				return f.slice(-Math.max(f.length - 1, 2)).join(".")
			}(),
			urlParts: d,
			toString: function() {
				var f = "Light JavaScript Library version " + j.version;
				j.debug && (f += ", debug enabled");
				return f + "."
			},
			toArray: function(f) {
				var a = [];
				if(!f.length) return a;
				for(var b = 0, g = f.length; b < g; b++) a[b] = f[b];
				return a
			},
			map: function(f, a, b) {
				if(h.map) return h.map.call(f, a, b);
				var g = [],
					e = f.length;
				if(!e) return g;
				for(var c = 0; c < e; c++) g[c] = a.call(b, f[c], c, f);
				return g
			},
			reduce: function(f, a, b) {
				if(h.reduce) return h.reduce.call(f, a, b);
				var g = 0,
					e = f.length;
				if(!e && void 0 == b) throw new TypeError("Reduce of empty array with no initial value");
				void 0 == b && (b = f[0], g = 1);
				for(; g < e;) b = a.call(void 0, b, f[g], g, f), g++;
				return b
			},
			register: function(f, b, e) {
				f = f.split("/");
				b = b || j;
				f[0] || (b = a, f.shift());
				for(var g, c = 0, h = f.length - 1; c < h; c++)
					if(g = f[c]) b = b[g] = b[g] || {};
				(g = f[c]) && (b = b[g] = void 0 === e ? {} : e);
				return b
			},
			extend: function(f) {
				var a = j.toArray(arguments);
				"boolean" !== typeof a[0] && a.unshift(f = !1);
				if(2 > a.length) return null;
				var b = 2,
					g = a[1];
				2 === a.length && (b = 1, g = j);
				for(var e = b, c = a.length; e < c; e++)
					if((b = a[e]) && "object" === typeof b)
						for(var h in b) {
							var d = b[h];
							d !== g && b.hasOwnProperty(h) && (j.isArray(d) ? g[h] = Array.prototype.concat.call(d) : f && d instanceof Object && !j.isFunction(d) && !d.nodeType ? g[h] = j.extend(!0, g[h] || {}, b[h]) : void 0 !== d && (g[h] = d))
						}
				return g
			},
			deriveFrom: function(f, a, b) {
				if(2 > arguments.length) return f;
				var g = a && a.init || function() {
					f.constructor.apply(this, arguments)
				};
				j.extend(!0, g.prototype, f.prototype, a);
				g.constructor = g;
				b && j.extend(!0, g, b);
				g.__super = f;
				return g
			},
			module: function(a, b) {
				var e = j.register(a, null, b);
				j.isFunction(b) && (e.constructor = b);
				return e
			},
			each: function(a, b) {
				if(!a) return a;
				var e = a.length;
				if(void 0 !== e && "reverse" in a)
					for(var g =
							0; g < e && !1 !== b.call(a[g], g, a[g], a);) g++;
				else
					for(g in a)
						if(!1 === b.call(a[g], g, a[g], a)) break;
				return a
			},
			isFunction: function(a) {
				return "function" === j.type(a)
			},
			isArray: Array.isArray || function(a) {
				return "array" === j.type(a)
			},
			isString: function(a) {
				return "string" === j.type(a)
			},
			isObject: function(a) {
				return "object" === j.type(a)
			},
			isNull: function(a) {
				return "null" === j.type(a)
			},
			isUndefined: function(a) {
				return void 0 === a
			},
			isWindow: function(a) {
				return a && "object" === typeof a && "setInterval" in a
			},
			type: function(a) {
				return null ===
					a || void 0 === a ? "" + a : k[Object.prototype.toString.call(a)] || "object"
			},
			has: function(b) {
				if(!b) return !1;
				var b = b.split("/"),
					e = j,
					c, g;
				b[0] || (e = a, b.shift());
				c = 0;
				for(g = b.length; c < g; c++)
					if(e = e[b[c]], void 0 === e) return !1;
				return !0
			},
			noop: function() {}
		},
		k = {};
	j.each("Boolean,Number,String,Function,Array,Date,RegExp,Object,Null".split(","), function(a, b) {
		k["[object " + b + "]"] = b.toLowerCase()
	});
	a.light = j
}(window);
light.extend({
	log: function() {
		return !light.debug || !window.console || !console.log ? function() {
			if(light.debug) try {
				window.console && console.log && console.log.apply(console, arguments)
			} catch(a) {}
		} : Function.prototype.bind ? function() {
			light.debug && Function.prototype.bind.call(console.log, console).apply(console, arguments)
		} : console.log.apply ? function() {
			light.debug && console.log.apply(console, arguments)
		} : light.debug ? console.log : light.noop
	}(),
	inspect: function(a) {
		var e = function(a) {
			if(!light.isObject(a)) return light.isString(a) ?
				'"' + (a + "").replace(/[\\"']/g, "\\$&").replace(/\u0000/g, "\\0") + '"' : a.toString();
			var d = [],
				c;
			for(c in a) light.isUndefined(a[c]) || (light.isNull(a[c]) ? d.push('"' + c + '":null') : light.isObject(a[c]) ? d.push('"' + c + '":{' + e(a[c]) + "}") : d.push('"' + c + '":' + e(a[c])));
			return d.join()
		};
		if(window.JSON && JSON.stringify) return JSON.stringify(a);
		if("object" === typeof a) {
			var i = "",
				i = e(a);
			return "{" + i + "}"
		}
		return "" + a
	},
	trackOn: !0,
	track: function() {
		var a = [],
			e = function(i) {
				window.Tracker ? Tracker.click(i) : (a.push(i), window.setTimeout(function() {
						e(a.shift())
					},
					100))
			};
		return function(a, h) {
			if(light.trackOn && a) {
				if(h) var d = light.client.info,
					c = d.browser.version,
					c = c ? c[0] : "na",
					a = a + ("-" + (d.browser.name || "na") + "-" + (d.engine.name || "na") + "-" + c);
				e(a)
			}
		}
	}(),
	trim: function(a) {
		return !a ? "" : String.prototype.trim ? String.prototype.trim.apply(a) : a.replace(/^\s+|\s+$/g, "")
	},
	substitute: function(a, e, i) {
		if(!a) return "";
		if(!e) return a;
		if("string" !== typeof a) throw "invalid template";
		return a.replace(RegExp("{\\w+}", "gmi"), function(a) {
			var a = a.substr(1, a.length - 2),
				d = e[a];
			return null !=
				d ? d.toString() : i ? "{" + a + "}" : ""
		})
	},
	encode: encodeURIComponent || escape,
	decode: decodeURIComponent || unescape,
	param: function(a, e, i) {
		var e = e || "=",
			h = [];
		light.each(a, function(d, c) {
			if(d && a.hasOwnProperty(d)) {
				var b = light.encode(d);
				null != c && (b += e + light.encode(c));
				h.push(b)
			}
		});
		return h.join(i || "&")
	},
	unparam: function(a, e, i) {
		var h = {};
		if(!a) return h;
		e = e || "=";
		light.each(a.split(i || "&"), function(a, c) {
			var b = c.split(e);
			2 < b.length && (b[1] = b.slice(1).join(e));
			b[0] && (h[light.decode(b[0])] = 1 < b.length ? light.decode(b[1]) : null)
		});
		return h
	},
	trimTag: function(a) {
		if(!a || !document.createElement) return "";
		var e = document.createElement("DIV");
		e.innerHTML = a;
		return e.textContent || e.innerText || ""
	},
	escapeHTML: function(a) {
		if(!a) return "";
		a = a.replace(/>/g, "&gt;");
		a = a.replace(/</g, "&lt;");
		a = a.replace(/&/g, "&amp;");
		a = a.replace(/"/g, "&quot;");
		return a = a.replace(/'/g, "&#039;")
	},
	unescapeHTML: function(a) {
		if(!a) return "";
		a = a.replace(/&gt;/g, ">");
		a = a.replace(/&lt;/g, "<");
		a = a.replace(/&amp;/g, "&");
		a = a.replace(/&quot;/g, '"');
		return a = a.replace(/&#039;/g,
			"'")
	},
	toJSON: function(a) {
		if("string" !== typeof a || !a) return null;
		a = light.trim(a);
		return window.JSON && JSON.parse ? JSON.parse(a) : (new Function("return " + a))()
	}
});
(function() {
	var a = function() {
		this.stack = [];
		var a = this,
			i = [].slice.call(arguments, 0);
		i && light.each(i, function(h) {
			a.add(h)
		})
	};
	a.prototype = {
		add: function(a) {
			this.stack.push(a)
		},
		clear: function() {
			this.stack = []
		},
		invoke: function() {
			var a = this,
				i = [].slice.call(arguments, 0);
			fn = this.stack.shift();
			this.next || (this.next = function() {
				a.stack.length && a.invoke.apply(a, i)
			});
			fn.apply(null, [this.next].concat(i))
		}
	};
	light.queue = a
})();
(function(a, e) {
	var i = a.document,
		h = a.navigator,
		d = h.userAgent ? h.userAgent.toLowerCase() : "",
		c = a.external,
		h = {
			device: {
				pc: "windows",
				ipad: "ipad",
				ipod: "ipod",
				iphone: "iphone",
				mac: "macintosh",
				android: "android",
				nokia: /nokia([^\/ ]+)/
			},
			os: {
				windows: /windows nt (\d+)\.(\d+)/,
				macos: /mac os x (\d+)[\._](\d+)(?:[\._](\d+))?/,
				ios: /cpu(?: iphone)? os (\d)_(\d)(?:_(\d))?/,
				android: /android (\d)\.(\d)/,
				chromeos: /cros i686 (\d+)\.(\d+)(?:\.(\d+))?/,
				linux: "linux",
				windowsce: 0 < d.indexOf("windows ce ") ? /windows ce (\d)\.(\d)/ : "windows ce",
				symbian: /symbianos\/(\d+)\.(\d+)/,
				blackberry: "blackberry"
			},
			engine: {
				trident: 0 < d.indexOf("msie ") ? /msie (\d+)\.(\d+)/ : /trident\/(\d+)\.(\d+)/,
				webkit: /applewebkit\/([\d\+]+)(?:\.(\d+))?/,
				gecko: /gecko\/(\d+)/,
				presto: /presto\/(\d+).(\d+)/
			},
			browser: {
				360: function() {
					if(!b.os.windows) return !1;
					if(c) try {
						return c.twGetVersion(c.twGetSecurityID(a)).split(".")
					} catch(e) {
						try {
							return -1 !== c.twGetRunPath.toLowerCase().indexOf("360se") || !!c.twGetSecurityID(a)
						} catch(d) {}
					}
					return /360(?:se|chrome)/
				},
				mx: function() {
					if(!b.os.windows) return !1;
					if(c) try {
						return(c.mxVersion || c.max_version).split(".")
					} catch(a) {}
					return -1 !== d.indexOf("maxthon ") ? /maxthon (\d)\.(\d)/ : "maxthon"
				},
				sg: / se (\d)\./,
				tw: function() {
					if(!b.os.windows) return !1;
					if(c) try {
						return -1 !== c.twGetRunPath.toLowerCase().indexOf("theworld")
					} catch(a) {}
					return "theworld"
				},
				qq: function() {
					return 0 < d.indexOf("qqbrowser/") ? /qqbrowser\/(\d+)\.(\d+)\.(\d+)(?:\.(\d+))?/ : /tencenttraveler (\d)\.(\d)/
				},
				ie: 0 < d.indexOf("trident/") ? /trident\/(\d+)\.(\d+)/ : /msie (\d+)\.(\d+)/,
				chrome: / (?:chrome|crios)\/(\d+)\.(\d+)/,
				safari: /version\/(\d+)\.(\d+)(?:\.([ab\d]+))?(?: mobile(?:\/[a-z0-9]+)?)? safari\//,
				firefox: /firefox\/(\d+)\.([ab\d]+)/,
				opera: /opera.+version\/(\d+)\.([ab\d]+)/
			},
			feature: {
				"64bitBrowser": "win64; x64;",
				"64bitOS": /win64|wow64/,
				security: / (i|u|s|sv1)[;\)]/,
				simulator: function() {
					return b.os.ios && 960 < screen.width
				}
			}
		},
		b = {};
	e.each(h, function(a, c) {
		b["has" + a.charAt(0).toUpperCase() + a.slice(1)] = function(e, c) {
			var g;
			a: if(!b[a] || !(g = b[a][e])) g = !1;
				else {
					if(c) {
						var f = c;
						"string" === typeof f ? f = f.split(".") : "number" === typeof f &&
							(f = [f]);
						for(var d, h, i = 0, k = Math.max(f.length, g.length); i < k; i++)
							if(d = parseInt(f[i], 10) || 0, h = parseInt(g[i], 10) || 0, d !== h) {
								g = d < h;
								break a
							}
					}
					g = !0
				}
			return g
		};
		var f = b[a] = {
			name: "n/a",
			version: [-1]
		};
		e.each(c, function(a, c) {
			var g = [0],
				h = e.isFunction(c) ? c.apply(b) : c;
			if(h)
				if(!0 === h) g = [-1];
				else if("string" === typeof h) g = [-1 !== d.indexOf(h) ? -1 : 0];
			else {
				var i = h;
				h.exec && (i = h.exec(d) || [], i.length && i.shift());
				for(h = 0; h < i.length; h++) g[h] = parseInt(i[h], 10) || 0
			}
			if(i = !!g[0]) f[a] = f.version = g, f.name = a;
			return !i
		})
	});
	!b.engine.name &&
		a.ActiveXObject instanceof Function ? (i.documentMode ? b.engine.trident = b.engine.version = [i.documentMode, 0] : b.engine.trident || (b.engine.trident = b.engine.version = [-1]), b.engine.name = "trident") : !b.os.windows && b.hasEngine("trident", 6) && (b.os.windows = b.os.version = [-1], b.os.name = "windows");
	b.browser.ie && 0 < d.indexOf("trident/") && (b.browser.ie[0] = b.browser.version[0] += 4);
	e.module("client/info", b)
})(window, light);
(function(a, e) {
	var i = a.document,
		h = a.navigator,
		d = !1,
		c = function() {
			d || (e.write('<input type="hidden" id="__ud" style="behavior:url("#default#userData")"/>'), d = !0);
			return e.get("__ud")
		},
		b = {
			cookie: null,
			defaultStorage: function() {
				var b = null;
				try {
					b = a.localStorage
				} catch(c) {}
				return b
			}(),
			set: function(a, f) {
				if(b.cookie && h.cookieEnabled) {
					var d = a + "=" + encodeURIComponent(f);
					if(b.cookie.days) var l = new Date((new Date).getTime() + 864E5 * b.cookie.days),
						d = d + ("; expires=" + l.toGMTString());
					b.cookie.domain && (d += "; domain=" +
						b.cookie.domain);
					d += "; path=" + (b.cookie.path || e.urlParts[4] || "/");
					i.cookie = d
				}
				if(j) b.defaultStorage.setItem(a, f);
				else if(d = c()) {
					d.setAttribute(a, f);
					try {
						d.save("__ud")
					} catch(g) {}
				}
			},
			get: function(a) {
				if(b.cookie) {
					if(h.cookieEnabled) {
						var f = i.cookie,
							d = f.indexOf(a + "=");
						return -1 != d ? (d += a.length + 1, a = f.indexOf(";", d), -1 == a && (a = f.length), e.decode(f.substring(d, a) || "")) : null
					}
					return ""
				}
				if(j) f = b.defaultStorage.getItem(a);
				else if(d = c()) {
					try {
						d.load("__ud")
					} catch(l) {}
					f = d.getAttribute(a)
				}
				return f || ""
			}
		},
		j = !!b.defaultStorage;
	e.module("client/storage", b)
})(window, light);
light.extend({
	get: function(a) {
		return !a ? null : "string" === typeof a ? !light.node || /^[\w-]+$/.test(a) ? document.getElementById(a) : light.node(a)[0] : a.getConfig ? a[0] || null : a
	},
	write: function(a) {
		if("complete" === document.readyState) {
			var f = document.createElement("span");
			f.innerHTML = a;
			document.body.appendChild(f)
		} else document.write(a)
	},
	isHTMLElement: function(a) {
		return a && (1 === a.nodeType || 9 === a.nodeType)
	},
	hasClass: function(a, f) {
		return a ? RegExp("(\\s|^)" + f + "(\\s|$)").test(a.className) : !1
	},
	setStyle: function(a, f) {
		if("string" ===
			light.type(f) && 2 == arguments.length) {
			var e = {};
			e[arguments[0]] = arguments[1];
			f = e
		}
		for(var b in f) e = f[b], "number" === typeof e && (e += "px"), "opacity" == b ? 1 > e && 0 < e && (isIE && 9 > light.client.info.browser.version[0] ? a.style.filter = "alpha(opacity=" + 100 * e + ")" : a.style.opacity = 1.0E-5 > e ? 0 : e) : a.style["float" == b || "cssFloat" == b ? void 0 === typeof a.style.styleFloat ? "cssFloat" : "styleFloat" : b] = e;
		return this
	},
	getStyle: function(a, f) {
		var e = a.currentStyle ? a.currentStyle[f] : document.defaultView.getComputedStyle(a, null)[f];
		"string" ===
		typeof e && "px" === e.slice(-2) && (e = parseInt(e, 10));
		return e
	},
	exists: function(a) {
		a = light.get(a);
		if(!a) return !1;
		for(; a = a.parentNode;)
			if(a == document) return !0;
		return !1
	}
});
(function(a, f) {
	var e = function(a, b) {
			if(!a._fixed) {
				a._fixed = !0;
				a.target || (a.target = a.srcElement || f);
				a.data = b || {};
				3 === a.target.nodeType && (a.target = a.target.parentNode);
				!a.relatedTarget && a.fromElement && (a.relatedTarget = a.fromElement === a.target ? a.toElement : a.fromElement);
				if(void 0 === a.pageX && void 0 !== a.clientX) {
					var c = a.target.ownerDocument || f,
						d = c.documentElement,
						c = c.body;
					a.pageX = a.clientX + (d && d.scrollLeft || c && c.scrollLeft || 0) - (d && d.clientLeft || c && c.clientLeft || 0);
					a.pageY = a.clientY + (d && d.scrollTop || c &&
						c.scrollTop || 0) - (d && d.clientTop || c && c.clientTop || 0)
				}
				if(!a.which && (a.charCode || a.keyCode)) a.which = a.charCode || a.keyCode;
				!a.metaKey && a.ctrlKey && (a.metaKey = a.ctrlKey);
				!a.which && void 0 !== a.button && (a.which = a.button & 1 ? 1 : a.button & 2 ? 3 : a.button & 4 ? 2 : 0);
				a.cancel = function() {
					if(a.preventDefault) a.preventDefault();
					else {
						a.returnValue = false;
						a.defaultPrevented = true
					}
				};
				a.stop = function() {
					a.stopPropagation ? a.stopPropagation() : a.cancelBubble = true
				}
			}
		},
		b = /\s+/,
		c = {},
		d = {
			data: null,
			capturing: !1,
			timeout: 0
		};
	a.extend({
		on: function(l,
			g, f, i) {
			var h = "string" === typeof l ? a.get(l) : l;
			if(h && g && "string" === typeof g)
				if(b.test(g)) a.each(g.split(b), function(c, b) {
					a.on(l, b, f, i)
				});
				else {
					var n = a.extend({}, d, i),
						k = function(b) {
							e(b, n.extraData);
							var c;
							n.timeout ? (a.log("timeout event: %d", n.timeout), setTimeout(function() {
								f.call(h, b)
							}, n.timeout)) : c = f.call(h, b);
							return !1 !== c && !b.defaultPrevented
						};
					h.addEventListener ? h.addEventListener(g, k, n.capturing ? !0 : !1) : h.attachEvent && (n.capturing && ("focus" === g ? g = "focusin" : "blur" === g && (g = "focusout")), h.attachEvent("on" +
						g, k));
					(c[g] = c[g] || []).push([h, f, k])
				}
		},
		listen: function(c, d, e) {
			var i = f,
				h = c,
				c = c.split(b, 2);
			2 === c.length && (i = a.get(c[0].substr(1)), h = c[1]);
			var c = a.client.info.engine,
				n = function(c) {
					for(var b = c.target; b;) {
						if(h.charAt(0) === ".") {
							if(a.hasClass(b, h.substr(1))) break
						} else if(b.tagName === h.toUpperCase()) break;
						else if(b === i) {
							b = null;
							break
						}
						b = b.parentNode
					}
					b && e.call(b, c)
				};
			if("change" === d && c.trident && 9 > c.trident[0]) c = a.toArray(i.getElementsByTagName("input")), c.concat(i.getElementsByTagName("select")), c.concat(i.getElementsByTagName("textarea")),
				a.log("%d fields captured", c.length), a.each(c, function() {
					a.on(this, d, n)
				});
			else a.on(i, d, n, {
				capturing: !0
			})
		},
		removeEvent: function(b, d, e) {
			var f = a.get(b);
			if(f) {
				var h = e,
					n = -1;
				c[d] && a.each(c[d], function(a, c) {
					if(c[0] === f && c[1] === e) return h = c[2], n = a, !1
				});
				0 <= n && c[d].splice(n, 1);
				f.removeEventListener ? f.removeEventListener(d, h, !1) : f.detachEvent("on" + d, h)
			}
		},
		fire: function(c, b, d) {
			var e = a.get(c);
			if(!e || !b) return !1;
			if(f.createEvent) return c = f.createEvent("HTMLEvents"), d && a.extend(c, d), c.initEvent(b, !0, !0), !e.dispatchEvent(c);
			c = f.createEventObject();
			d && a.extend(c, d);
			return e.fireEvent("on" + b, b)
		},
		cancelEvent: function(a) {
			a.cancel && a.cancel()
		}
	})
})(window.light, window.document);
(function(a) {
	var f = {
			method: "GET",
			success: a.noop,
			failure: a.noop,
			finish: a.noop,
			timeoutHandler: a.noop,
			format: "json",
			force: !0,
			async: !0,
			timeout: -1,
			contentType: "application/x-www-form-urlencoded; charset=UTF-8"
		},
		e = {
			text: {
				parser: a.trim
			},
			json: {
				parser: a.toJSON,
				handler: function(a) {
					return a && "ok" === a.stat
				},
				redirector: function(a) {
					a && a.redirectUrl && (window[a.target || "self"].location.href = a.redirectUrl)
				}
			}
		},
		b = 0,
		c = function(c, l, g) {
			if("JSONP" == g.method || "jsonp" == g.format) {
				l = l || {};
				b++;
				a.request._callbacks["callback" +
					b] = g.success || a.noop;
				l[g.hook || "_callback"] = "light.request._callbacks.callback" + b;
				g = document.createElement("script");
				g.setAttribute("type", "text/javascript");
				g.setAttribute("charset", "utf-8");
				var j = c.indexOf("?"); - 1 < j && (a.extend(l, a.unparam(c.slice(j + 1))), c = c.slice(0, j));
				g.setAttribute("src", c + "?" + a.param(l));
				document.getElementsByTagName("head")[0].appendChild(g);
				return null
			}
			var l = "string" === typeof l ? l : a.param(l),
				i = a.extend({}, f, g);
			i.method = i.method ? i.method.toUpperCase() : f.method;
			var g = "GET" ===
				i.method,
				h = null;
			i.fail && (i.failure = i.fail);
			g && i.force && (l += (l ? "&" : "") + "t=" + (new Date).getTime().toString(36));
			window.XMLHttpRequest ? h = new XMLHttpRequest : window.ActiveXObject instanceof Function && (h = new ActiveXObject("Microsoft.XMLHTTP"));
			g && l && (c += (0 < c.indexOf("?") ? "&" : "?") + l);
			h.open(i.method, c, i.async);
			g || h.setRequestHeader("Content-type", i.contentType);
			h.onreadystatechange = function() {
				if(h.readyState == 4) {
					a.log("Get response with code %d.", h.status);
					var c = {},
						b = true,
						d = i.failure;
					if(h.status == 200) {
						c =
							e[i.format].parser(h.responseText);
						(b = e[i.format].redirector) && b(c);
						b = e[i.format].handler;
						if(b = !b || b(c) !== false) d = i.success
					}
					d.call(h, c);
					i.finish.call(h, c, b)
				}
			};
			a.log("Send ajax %s request to %s.", i.format, c);
			h.send(g ? null : l);
			return h
		};
	c.config = e;
	a.request = c;
	a.request._callbacks = {}
})(window.light);
(function(a) {
	var f = null,
		e = 0,
		b = function() {
			var c = a.client.info,
				b = document.documentMode;
			return c.hasEngine("trident", 6) || c.hasEngine("trident", 7) || b && 7 >= b ? 1948 - (e + 10).toString().length : 3400 - (e + 10).toString().length
		},
		c = function(c, b, d) {
			var b = b || "=",
				e = [];
			a.each(c, function(d, f) {
				d && c.hasOwnProperty(d) && ("dataContent" == d ? e.push(a.encode(d) + b + f) : e.push(a.encode(d) + b + a.encode(f)))
			});
			return e.join(d || "&")
		},
		d = function(b, d, e, f) {
			a.packetRequest._packetCallbacks["callback" + d] = f || a.noop;
			b = b + "?" + c(e);
			d = document.createElement("script");
			d.setAttribute("type", "text/javascript");
			d.setAttribute("charset", "utf-8");
			d.setAttribute("src", b);
			document.getElementsByTagName("head")[0].appendChild(d);
			a.log("Send ajax request to %s.", b)
		};
	a.packetRequest = function(c, g, j, i) {
		function h(b, e) {
			var g = b.info;
			"fail" == g.packet ? (g = n[e], 1 < g.packet.sendCount && (g.packet.sendCount--, d(c, g.count, g.packet, function(a) {
				h(a, e)
			}), a.log("%d: packet request sent again.", e))) : "success" == g.packet ? (g = n[++e], d(c, g.count, g.packet, function(a) {
				h(a, e)
			}), a.log("%d: packet request sent.",
				e)) : "all" == g.packet && (f && clearTimeout(f), i.success(b), a.log("all packet request sent successfully."))
		}
		var n = [],
			k = {
				packet: {
					sendCount: 3,
					dataId: (new Date).getTime(),
					dataSize: 0,
					dataIndex: 0,
					dataContent: "",
					_callback: "light.packetRequest._packetCallbacks.callback"
				}
			};
		k.packet = a.extend(k.packet, g);
		for(var j = a.encode(a.inspect(j)), t = b() - (c + "?" + a.param(k.packet)).length, I = k.packet.dataSize = Math.ceil(j.length / t), E = 0; E < I; E++) {
			var g = a.extend(!0, {}, k),
				m = g.packet;
			m.dataIndex = E;
			m.dataContent = j.slice(0, t);
			m._callback =
				"light.packetRequest._packetCallbacks.callback" + e;
			g.count = e++;
			j = j.slice(t);
			n.push(g)
		}
		d(c, n[0].count, n[0].packet, function(a) {
			h(a, 0)
		});
		a.log("0: packet request sent.");
		f = setTimeout(function() {
			i.abort("\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u91cd\u65b0\u64cd\u4f5c")
		}, 1E4)
	};
	a.packetRequest._packetCallbacks = {}
})(window.light);
(function(a, f) {
	var e = "complete" === document.readyState || "loaded" === document.readyState,
		b = !!document.addEventListener,
		c = a.lightReady = a.lightReady || [],
		d = function() {
			for(e = !0; c.length;) c.shift().call(a, f, f.node, f.page)
		};
	f.on(document, b ? "DOMContentLoaded" : "readystatechange", b ? d : function() {
		("loaded" == document.readyState || "complete" == document.readyState) && d()
	});
	!b && a == a.top && a.setTimeout(function() {
			try {
				e || document.documentElement.doScroll("left"), setTimeout(d, 0)
			} catch(a) {
				setTimeout(arguments.callee, 20)
			}
		},
		20);
	var l = function() {
		/in/.test(document.readyState) ? setTimeout(l, 9) : d()
	};
	f.ready = function(b) {
		e ? b.call(a, f, f.node, f.page) : (c.push(b), l())
	}
})(window, light);
(function(a) {
	var f = a.client.info.engine.trident,
		e = a.client.info.engine.presto,
		b = function(a) {
			return /^(?:body|html)$/i.test(a.tagName)
		};
	a.extend({
		getViewportHeight: function(c) {
			c = a.get(c) || window;
			if(c == window || c == document || b(c)) {
				var c = self.innerHeight,
					d = document.compatMode;
				if((d || f) && !e) c = "CSS1Compat" == d ? document.documentElement.clientHeight : document.body.clientHeight;
				return c
			}
			return c.offsetHeight
		},
		getViewportWidth: function(c) {
			c = a.get(c) || window;
			if(c == window || c == document || b(c)) {
				var c = self.innerWidth,
					d = document.compatMode;
				if(d || f) c = "CSS1Compat" == d ? Math.max(document.documentElement.clientWidth, document.body.scrollWidth, document.documentElement.scrollWidth, document.body.offsetWidth, document.documentElement.offsetWidth) : document.body.clientWidth;
				return c
			}
			return c.offsetWidth
		},
		getScroll: function(c) {
			c = a.get(c) || window;
			return c == window || c == document || b(c) ? {
				left: Math.max(document.documentElement.scrollLeft, document.body.scrollLeft),
				top: Math.max(document.documentElement.scrollTop, document.body.scrollTop)
			} : {
				left: c.scrollLeft,
				top: c.scrollTop
			}
		},
		viewport: function() {
			return {
				width: this.getViewportWidth(),
				height: this.getViewportHeight()
			}
		},
		scroll: function(a) {
			a = this.getScroll(a);
			return {
				x: a.left,
				y: a.top
			}
		},
		xy: function(a) {
			a = this.getOffsets(a);
			return {
				x: a.left,
				y: a.top
			}
		},
		size: function(a) {
			return {
				width: this.getViewportWidth(a),
				height: this.getViewportHeight(a)
			}
		},
		getOffsets: function(b) {
			b = a.get(b);
			if("getBoundingClientRect" in document.documentElement) {
				try {
					var d = b.getBoundingClientRect()
				} catch(e) {}
				var f = b && b.ownerDocument ||
					document,
					b = f.body,
					j = f.documentElement,
					f = (window.pageYOffset || j.scrollTop || b.scrollTop) - (j.clientTop || b.clientTop || 0),
					b = (window.pageXOffset || j.scrollLeft || b.scrollLeft) - (j.clientLeft || b.clientLeft || 0);
				d && (f += d.top, b += d.left);
				return {
					top: f,
					left: b
				}
			}
			d = function(a) {
				var b;
				b = window.getComputedStyle ? getComputedStyle(a, null).position : a.currentStyle ? a.currentStyle.position : a.style.position;
				return "absolute" == b || "fixed" == b ? a.offsetParent : a.parentNode
			};
			if("undefined" != typeof b.offsetParent) {
				for(var f = b, i = j = 0; b; b =
					b.offsetParent) j += b.offsetLeft, i += b.offsetTop;
				if(!f.parentNode || !f.style || "undefined" == typeof f.scrollTop) return {
					left: j,
					top: i
				};
				for(b = d(f); b && b != document.body && b != document.documentElement;) j -= b.scrollLeft, i -= b.scrollTop, b = d(b);
				return {
					left: j,
					top: i
				}
			}
			return {
				left: b.x,
				top: b.y
			}
		},
		region: function(b) {
			var d = a.getOffsets(b);
			return {
				left: d.left,
				top: d.top,
				width: a.getViewportWidth(b),
				height: a.getViewportHeight(b)
			}
		}
	})
})(window.light);
(function(a) {
	var f = {
			arale: {
				exists: function() {
					return !!window.arale
				},
				dialog: function() {
					var b = {
						page: "IframeXbox",
						string: "StringXbox",
						dom: "DomXbox"
					};
					return function(c) {
						var d = b[c.type];
						if(!d) throw "Invalid dialog type: " + c.type;
						var l, f = a.extend({}, c);
						f.isOld = !0;
						c.trigger && (f.el = c.trigger);
						if("string" == c.type)
							if(e.dialog.template) c.content = a.substitute(e.dialog.template, c);
							else if("string" != typeof c.content) {
							var j = document.createElement("div"),
								i = c.content.cloneNode(!0);
							j.appendChild(i);
							c.content = j.innerHTML
						}
						f.value =
							function() {
								return c.content
							};
						Loader.use(["aralex.xbox"], function() {
							l = new aralex.xbox[d](f);
							c.trigger || l.show()
						});
						return this.page.dialog = l
					}
				}(),
				closeDialog: function(a) {
					(a = a || this.page.dialog) && a.hide()
				},
				tooltip: function(b) {
					var c, d = b.trigger,
						e = {
							targets: d
						};
					a.isHTMLElement(d) && (e.targets = [d]);
					b.content && (e.getValue = function() {
						return b.content
					});
					Loader.use(["aralex.apop"], function() {
						c = new aralex.apop.Tip(e);
						b.trigger || c.show()
					})
				}
			},
			alipay: {
				exists: function() {
					return !!window.AP
				},
				dialog: function() {
					var b = {
						autoShow: !0,
						type: "dom",
						modal: !0
					};
					return function(c) {
						var d, f = a.extend({}, b, c);
						c.trigger && (f.el = c.trigger);
						if("page" == f.type) f.type = "iframe";
						else if("dom" != f.type && "string" == f.type) {
							if(e.dialog.template) c.content = a.substitute(e.dialog.template, c);
							else if("string" != typeof c.content) {
								d = document.createElement("div");
								var g = c.content.cloneNode(!0);
								d.appendChild(g);
								c.content = d.innerHTML
							}
							f.title = ""
						}
						f.value = function() {
							return c.content
						};
						d = this.page.dialog = new AP.widget.xBox(f);
						f.autoShow && d.show();
						return d
					}
				}(),
				closeDialog: function() {
					a.page.dialog =
						null;
					AP.widget.xBox.hide()
				},
				tooltip: function(b) {
					var c = b.trigger,
						d = {
							width: "auto"
						};
					a.isHTMLElement(c) && (c = [el]);
					b.content && (d.message = b.content);
					return new AP.widget.popNotice(c, d)
				}
			},
			arale2: {
				exists: function() {
					return !!window.seajs
				},
				dialog: function() {
					return function(b) {
						seajs.use("alipay/xbox/1.0.2/xbox", function() {});
						var c, d = a.extend({
							isOld: !0
						}, b);
						"page" == d.type && (d.type = "iframe");
						if("string" == b.type)
							if(e.dialog.template) b.content = a.substitute(e.dialog.template, b);
							else if("string" != typeof b.content) {
							var f =
								document.createElement("div"),
								g = b.content.cloneNode(!0);
							f.appendChild(g);
							b.content = f.innerHTML
						}
						var j = this;
						seajs.use("alipay/xbox/1.0.2/xbox", function(a) {
							c = j.page.dialog = new a(d);
							b.autoShow && c.show();
							return c
						})
					}
				}(),
				closeDialog: function(a) {
					(a = a || this.page.dialog) && a.hide()
				},
				tooltip: function() {},
				closed: function() {
					var a = instance || this.page.dialog;
					a && a.hide()
				}
			},
			"default": {
				exists: function() {
					return !0
				},
				dialog: function(a) {
					a && a.title && alert(a.title)
				},
				closeDialog: function() {},
				tooltip: function(a) {
					a && a.content &&
						alert(a.content)
				}
			}
		},
		e = a.module("page/ui", {
			detect: function() {
				var b;
				a.each(f, function(a, d) {
					if(d.exists()) return b = d, !1
				});
				return b
			}
		});
	a.each(["dialog", "tooltip"], function(b, c) {
		e[c] = function(b) {
			var f = e.detect();
			f && f[c].call(a, b)
		}
	});
	e.closeDialog = function() {
		var b = e.detect();
		b && b.closeDialog.call(a)
	}
})(window.light);
(function(a, f) {
	var e = function(b, c) {
		if(!this.getConfig) return new e(b, c);
		if(!arguments.length || !b) return this;
		if(b.getConfig) return b;
		if(a.isHTMLElement(b)) return b._light_node || this.add(b);
		if("string" !== typeof b && b.length) return this.add(b);
		if("string" === typeof b) {
			var d = e.getSizzle(),
				f = a.get(c) || document;
			if(d) d = d(b, f);
			else if(document.querySelectorAll) d = f.querySelectorAll(b);
			else throw "method not supported";
			d.length && this.add(d)
		}
		return this
	};
	e.getSizzle = function() {
		var b;
		return function() {
			if(b) return b;
			a.Sizzle ? b = a.Sizzle : window.YAHOO ? b = YAHOO.util.Dom.query : window.arale && arale.dom && arale.dom.sizzle && (b = arale.dom.sizzle);
			return b || window.Sizzle
		}
	}();
	e.prototype = {
		length: 0,
		each: function(a) {
			for(var c = 0; c < this.length && !1 !== a.call(this[c], c, this[c]);) c++;
			return this
		},
		map: function(b) {
			return a.map(this, b)
		},
		reduce: function(b, c) {
			return a.reduce(this, b, c)
		},
		toArray: function() {
			return a.toArray(this)
		},
		add: function(b) {
			var c;
			if("string" === typeof b) c = a.get(b);
			else if("object" === typeof b)
				if(!b.nodeType && b.length &&
					b[0])
					for(var d = 0, f = b.length; d < f; d++) {
						var g = b[d];
						if(a.isHTMLElement(g)) {
							this[this.length] = g;
							this.length++;
							var j = new e;
							j[0] = g;
							j.length = 1;
							g._light_node = j
						}
					} else c = b;
			a.isHTMLElement(c) && (this[this.length] = c, this.length++);
			return this
		},
		clear: function() {
			for(var a = 0; a < this.length; delete this[a++]);
			this.length = 0;
			return this
		},
		clone: function() {
			for(var a = new e, c = a.length = this.length; c--;) a[c] = this[c];
			return a
		},
		on: function(b, c, d) {
			return this.each(function() {
				a.on(this, b, c, d)
			})
		},
		show: function() {
			return this.each(function() {
				this.style.display =
					""
			})
		},
		hide: function() {
			return this.each(function() {
				this.style.display = "none"
			})
		},
		toggle: function(b) {
			var c, d = !1;
			b !== f && (a.isFunction(b) ? d = !0 : c = b ? "" : "none");
			return this.each(function() {
				var a = c;
				a === f && (a = d ? b.apply(this) ? "" : "none" : "none" === this.style.display ? "" : "none");
				this.style.display = a
			})
		},
		item: function(a) {
			var c = new e;
			this[a] && c.add(this[a]);
			return c
		},
		slice: function() {
			return new e(Array.prototype.slice.apply(this, arguments))
		}
	};
	a.each(["mouseover", "mouseout", "change"], function(a, c) {
		e.prototype[c] = function(a) {
			return this.on(c,
				a)
		}
	});
	a.each(["click", "submit", "focus", "blur"], function(a, c) {
		e.prototype[c] = function(a, b) {
			return a === f ? this.each(function() {
				this[c]()
			}) : this.on(c, a, b)
		}
	});
	a.node = e
})(window.light);
(function(a, f) {
	f.build = function() {
		var b = {
				td: ["<table><tbody><tr>", "</tr></tbody></table>", "table>tbody>tr"],
				tr: ["<table><tbody>", "</tbody></table>", "table>tbody"],
				option: ["<select>", "</select>", "select"],
				optgroup: ["<select>", "</select>", "select"]
			},
			c = /<(.+?)\b/;
		return function(d, e) {
			var h = a.createElement("div"),
				n;
			if(c.test(d)) {
				var k = d,
					t = k.match(c)[1].toLowerCase();
				(t = b[t]) && (k = t[0] + k + t[1]);
				h.innerHTML = k;
				return f((t ? t[2] : "") + ">*", h)
			}
			h = light.trim(d);
			n = a.createElement(h);
			light.each(e, function(a, b) {
				"className" ===
				a ? n[a] = b : ("boolean" === typeof b && (b = b ? a : ""), n.setAttribute(a, b))
			});
			return new f(n)
		}
	}();
	var e = function(a, b) {
			var c = f.getSizzle();
			if(!c || !c.filter) throw "method not supported";
			return c.filter(a, [b]).length
		},
		b = function(a, b, c) {
			var d = this[0],
				h = new f;
			if(!d) return h;
			for(; d = d[b];)
				if(1 === d.nodeType && (!a || e(a, d)))
					if(h.add(d), c) break;
			return h
		},
		c = function(a, b, c) {
			var d = b;
			if(d instanceof f) d = d[0];
			else if(!light.isHTMLElement(d)) return !1;
			return this.each(function() {
				c ? d[a](this) : this[a](d)
			})
		},
		d = function(a, b) {
			var c = [];
			if("string" === typeof a) {
				var d = f.getSizzle();
				if(!d || !d.filter) throw "method not supported";
				c = d.filter(a, this, !1, b)
			} else this.each(function(b) {
				a.call(this, b, this) && c.push(this)
			});
			return this.clear().add(c)
		};
	light.extend(f.prototype, {
		find: function(a) {
			return new f(a, this)
		},
		filter: function(a) {
			return d.call(this, a, !1)
		},
		remove: function(a) {
			return d.call(this, a, !0)
		},
		del: function() {
			return this.each(function() {
				this.parentNode && this.parentNode.removeChild(this)
			}).clear()
		},
		append: function(a) {
			return c.call(this,
				"appendChild", a)
		},
		appendTo: function(a) {
			return c.call(this, "appendChild", a, !0)
		},
		after: function(a) {
			var b = this[0],
				a = light.get(a);
			if(!b || !a) return this;
			var c = f(a).next();
			c.length ? a.parentNode.insertBefore(b, c[0]) : a.parentNode.appendChild(b);
			return this
		},
		text: function(b) {
			var c = "innerText" in a.createElement("div") ? "innerText" : "textContent";
			if(void 0 === b) {
				var d = this[0];
				return !d ? "" : light.trim(d[c])
			}
			return this.each(function() {
				this[c] = b
			})
		},
		html: function(a) {
			if(void 0 === a) {
				var b = this[0];
				return !b ? "" : light.trim(b.innerHTML)
			}
			return this.each(function() {
				this.innerHTML =
					a
			})
		},
		outerHTML: function(a) {
			return void 0 === a ? (a = this[0], !a ? "" : light.trim(a.outerHTML || (new XMLSerializer).serializeToString(a))) : this.each(function() {})
		},
		next: function(a) {
			return b.call(this, a, "nextSibling", !0)
		},
		nextAll: function(a) {
			return b.call(this, a, "nextSibling", !1)
		},
		prev: function(a) {
			return b.call(this, a, "previousSibling", !0)
		},
		prevAll: function(a) {
			return b.call(this, a, "previousSibling", !1)
		},
		siblings: function(a) {
			return b.call(this, a, "previousSibling", !1).add(b.call(this, a, "nextSibling", !1))
		},
		parent: function(a) {
			return b.call(this,
				a, "parentNode", !0)
		},
		children: function(a) {
			var b = this[0],
				c = new f;
			if(!b || !b.firstChild) return c;
			b = b.firstChild;
			do 1 === b.nodeType && (!a || e(a, b)) && c.add(b); while (b = b.nextSibling);
			return c
		},
		style: function(a) {
			if(void 0 === a) return this;
			if("string" === typeof a) {
				var b = this[0];
				return !b ? "" : light.getStyle(b, a)
			}
			return this.each(function() {
				light.setStyle(this, a)
			})
		}
	})
})(window.document, light.node);
light.extend(light.node.prototype, {
	attr: function(a, f) {
		if(void 0 === f) {
			var e = this[0];
			return !e ? "" : "undefined" !== typeof e.getAttribute && "boolean" !== typeof e[a] ? e.getAttribute(a) : e[a]
		}
		return this.each(function() {
			"undefined" !== typeof this.setAttribute ? !1 === f ? (this.setAttribute(a, ""), this.removeAttribute(a), a in this && (this[a] = !1)) : (this.setAttribute(a, !0 === f ? a : f), "src" !== a && a in this && (this[a] = f)) : a in this && (this[a] = f)
		})
	},
	getConfig: function(a, f) {
		var e = this.attr(a || "data-config"),
			b = {};
		e && (b = light.unparam(e),
			f && light.each(b, f));
		return b
	},
	updateConfig: function(a, f) {
		var e, b;
		2 > arguments.length && light.isObject(a) ? (e = "data-config", b = a) : (e = a || "data-config", b = f);
		return this.each(function() {
			var a = light.node(this);
			a.attr(e, light.param(light.extend(a.getConfig(e), b)))
		})
	},
	hasClass: function(a) {
		var f = this[0];
		return !f || !f.className ? !1 : RegExp("(?:^|\\s)" + a + "(?:\\s|$)").test(f.className)
	},
	addClass: function(a) {
		if(!a) return this;
		var f = RegExp("(?:^|\\s)" + a + "(?:\\s|$)");
		return this.each(function() {
			var e = this.className;
			e ?
				f.test(e) || (this.className += " " + a) : this.className = a
		})
	},
	removeClass: function(a) {
		if(!a) return this;
		var f = RegExp("(?:^|\\s)" + a + "(\\s|$)");
		return this.each(function() {
			var a = this.className;
			a && f.test(a) && (this.className = a.replace(f, "$1"))
		})
	},
	toggleClass: function(a, f) {
		return void 0 === f ? this.each(function() {
			var f = light.node(this);
			f[f.hasClass(a) ? "removeClass" : "addClass"](a)
		}) : this[f ? "addClass" : "removeClass"](a)
	}
});
light.extend(light.node.prototype, {
	val: function(a) {
		if(void 0 === a) {
			var f = this[0];
			if(!f) return "";
			(f = f.value || "") && (f = light.unescapeHTML(light.trim(f)));
			return f
		}
		return this.each(function() {
			if("SELECT" === this.tagName) {
				var f = this;
				light.node(this).find("option").each(function(b, c) {
					if(c.value !== a) return !0;
					f.selectedIndex = b;
					return !1
				})
			} else this.value = a
		})
	},
	field: function(a, f) {
		if(void 0 === f) {
			if(!a) return "";
			var e = this[0];
			if(!e) return "";
			var b;
			e.elements ? b = e.elements[a] : e.item && (b = e.item(a));
			return !b || !b.value ?
				"" : light.unescapeHTML(light.trim(b.value))
		}
		return this.each(function() {
			var b;
			this.elements ? b = this.elements[a] : this.item && (b = this.item(a));
			b || (b = light.node("[name=" + a + "]", this)[0]);
			b && (b.value = f)
		})
	},
	serialize: function() {
		var a = this[0];
		if(!a) return "";
		var f = [];
		light.node(":input[name]", a).each(function(a, b) {
			var c = b.value;
			b.disabled || ("radio" == b.type || "checkbox" == b.type) && !b.checked || f.push(light.encode(b.name) + "=" + light.encode(c))
		});
		return f.join("&")
	}
});
(function(a) {
	a.prototype.captcha = function(a) {
		var e = "string" === typeof a ? light.get(a) : a;
		if(!e) return this;
		e.length && (e = e[0]);
		var b = this[0];
		if(!b) return this;
		light.on(a, "click", function(a) {
			a.cancel();
			var a = b.src.split("?"),
				d = light.unparam(a[1] || "");
			d.t = (new Date).getTime();
			b.src = a[0] + "?" + light.param(d)
		});
		return this
	}
})(light.node);
(function(a, f, e) {
	var b = {
			types: {
				email: [/^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/, "\u90ae\u4ef6\u5730\u5740"],
				phone: [/^(\d{3,4}-)\d{7,8}(-\d{1,6})?$/, "\u7535\u8bdd\u53f7\u7801"],
				mobile: [/^1\d{10}$/, "\u624b\u673a\u53f7\u7801"],
				date: [/^\d{4}\-[01]?\d\-[0-3]?\d$|^[01]\d\/[0-3]\d\/\d{4}$/, "\u65e5\u671f"],
				integer: [/^[1-9][0-9]*$/, "\u6570\u5b57"],
				number: [/^[+-]?[1-9][0-9]*(\.[0-9]+)?([eE][+-][1-9][0-9]*)?$|^[+-]?0?\.[0-9]+([eE][+-][1-9][0-9]*)?$/, "\u6570\u503c"],
				money: [/^\d+(\.\d{0,2})?$/,
					"\u91d1\u989d"
				],
				cnID: [/^\d{15}$|^\d{17}[0-9a-zA-Z]$/, "\u8eab\u4efd\u8bc1\u53f7"],
				chinese: [/^[\u2E80-\uFE4F]+$/, "\u6c49\u5b57"],
				zip: [/^[0-9]{6}$/, "\u90ae\u653f\u7f16\u7801"],
				bankname: /^[a-zA-Z0-9\u4e00-\u9fa5]+$/,
				name: /^([\u4e00-\u9fa5|A-Z|\s]|\u3007)+([\.\uff0e\u00b7\u30fb]?|\u3007?)+([\u4e00-\u9fa5|A-Z|\s]|\u3007)+$/,
				realName: /^([\u4e00-\u9fa5|a-zA-Z|\s]|\u3007)+([\.\uff0e\u00b7\u30fb]?|\u3007?)+([\u4e00-\u9fa5|a-zA-Z|\s]|\u3007)+$/
			},
			options: {
				enabled: !0,
				required: !1,
				autoTrim: !0,
				checkOnBlur: !1,
				visibleOnly: !1,
				skipReadOnly: !0,
				skipDisabled: !0,
				stopOnError: !1,
				autoFocus: !0,
				containerSelector: e,
				labelHandler: e,
				errorClass: "fm-error",
				tipSelector: e,
				tipTemplate: '<div class="fm-explain">{text}</div>',
				message: "{label}\u586b\u5199\u4e0d\u6b63\u786e"
			},
			messages: {
				1: "",
				2: "\u8bf7\u586b\u5199{label}",
				3: "\u586b\u5199\u7684{label}\u4e0d\u80fd\u88ab\u8bc6\u522b\u4e3a{type}",
				4: "{label}\u7684\u957f\u5ea6\u4e0d\u80fd\u5c0f\u4e8e{minLength}",
				5: "{label}\u7684\u957f\u5ea6\u4e0d\u80fd\u5927\u4e8e{maxLength}",
				6: "\u4e24\u6b21\u8f93\u5165{label}\u4e0d\u5339\u914d",
				7: "\u8f93\u5165\u7684\u6570\u503c\u4e0d\u5728\u6b63\u786e\u7684\u8303\u56f4\u5185"
			},
			ruleOptions: {
				maxLength: e,
				minLength: e,
				sameWith: e,
				type: e,
				message: e,
				label: e
			}
		},
		c = function() {
			var b = a.toArray(arguments),
				c = b.shift();
			"string" === typeof c && (c = eval(c));
			return c.apply(this, b)
		};
	validator = function(c, f) {
		this.form = a.get(c.form);
		if(!this.form) throw "form not found";
		this.rules = f || {};
		this.options = a.extend({}, b.options, c);
		this.result = {};
		this.init();
		var e = this;
		"FORM" === this.form.tagName && a.on(this.form, "submit", function(a) {
			e.validate() ||
				a.cancel()
		})
	};
	b.rules = {
		minLength: function(a, b, c) {
			if(b.length < c) return 4
		},
		maxLength: function(a, b, c) {
			if(b.length > c) return 5
		},
		sameWith: function(b, c, f) {
			b = this.form.field(f);
			b = b.length ? b[0] : a.get(f);
			return !b ? !1 : c === b.value ? 0 : 6
		},
		range: function(a, b, c) {
			a = c.split("|");
			b = parseInt(b, 10);
			if(2 !== a.length) return 0;
			c = a[0].length ? parseInt(a[0], 10) : Number.MIN_VALUE;
			num2 = a[1].length ? parseInt(a[1], 10) : Number.MAX_VALUE;
			return isNaN(c) || isNaN(num2) ? 0 : !isNaN(b) && b >= c && b <= num2 ? 0 : 7
		},
		regexp: function(a, b, c) {
			return !b || !c ? 0 :
				RegExp(c).test(b) ? 0 : 1
		},
		expression: function(b, c, f) {
			if(!f) return 0;
			b = a.decode(f);
			b = -1 === b.indexOf("#") ? c + " " + b : b.replace(/#/g, c);
			a.log("evaluating %s", b);
			try {
				return eval(b) ? 0 : 1
			} catch(e) {
				return 1
			}
		},
		type: function(c, f, e) {
			var j = !1;
			a.each(e.split("|"), function(c, d) {
				if(!d) return 0;
				var e = b.types[d];
				if(!e) return 0;
				a.isArray(e) && (e = e[0]);
				return j = e.test(f)
			});
			return j ? 0 : 1
		}
	};
	validator.prototype = function() {
		var d = {
				focus: "onfocusin",
				blur: "onfocusout"
			},
			l = 0,
			g = /^(INPUT|SELECT|TEXTAREA)$/,
			j = function(a, b) {
				var c = this,
					f = d[a],
					e = function(a) {
						a = a.target || a.srcElement;
						g.test(a.tagName) && b.call(c, a)
					};
				f in this.form ? this.form.attachEvent(f, e) : this.form.addEventListener(a, e, !0)
			},
			i = function(a, b, c) {
				b = b[a];
				return b === e ? c[a] : b
			},
			h = function(a) {
				var b = "";
				switch(a.tagName) {
					case "SELECT":
						b = a.multiple ? f("option:selected", a).map(function(a) {
							return a.value
						}).join() : a.value;
						break;
					case "INPUT":
						if(b = a.type.toLowerCase(), "radio" === b || "checkbox" === b) {
							b = f(a).parent("form").find('[name="' + a.name + '"]:checked').map(function(a) {
								return a.value
							}).join();
							break
						}
					default:
						b = a.value
				}
				return b
			},
			n = function(a, b, c) {
				"false" === b && (c[a] = !1)
			},
			k = function(d) {
				var g = this.options,
					m = d.getAttribute("data-validate"),
					j = d.name,
					k = f(d);
				if(!a.exists(d) || !g.required && !m) return 0;
				j || (j = "_lv" + l++);
				m = this.rules[j] = a.extend({}, b.ruleOptions, k.getConfig("data-validate", n));
				if(d.readOnly && i("skipReadOnly", m, g) || d.disabled && i("skipDisabled", m, g) || !i("enabled", m, g) || !i("checkOnBlur", m, g) && !this.submitting || this.submitting && k.prev(".validating").length || i("visibleOnly", m, g) && !d.offsetHeight) return 0;
				var x, o = 0,
					u = "default",
					z = m.message;
				m.before && (x = h(d), i("autoTrim", m, g) && (x = a.trim(x)), o = c.call(this, m.before, d, x), o = !1 === o ? 10 : 0);
				if(!o) {
					x = h(d);
					i("autoTrim", m, g) && (x = a.trim(x));
					var w = i("required", m, g);
					a.isFunction(w) && (w = w.call(this, d));
					x ? (a.each(m, function(a, c) {
						if(c === e || !b.rules[a]) return true;
						(o = b.rules[a].call(this, d, x, c)) && a === "type" && (u = c);
						return !o
					}), !o && m.after && (o = c.call(this, m.after, d, x), "string" === typeof o && o ? (z = o, o = 10) : o = !1 === o ? 10 : 0)) : w && (o = 2)
				}
				if(o) {
					var w = b.messages[o],
						A = {
							value: x
						};
					2 != o &&
						z && (w = z);
					w || (u && b.types[u] && b.types[u][1] ? (A.type = b.types[u][1], w = b.messages[3]) : w = g.message);
					k = k.addClass("validating").parent(g.containerSelector);
					g.tipSelector && (k = f(g.tipSelector, k));
					k.addClass(g.errorClass);
					z = m.label;
					!z && g.labelHandler && (z = g.labelHandler.call(this, d));
					A.label = (z || "\u6b64\u9879").replace(/[\uff1a:]/g, "");
					w = a.substitute(w, a.extend({}, m, A));
					a.log("error found in %s: %s (%d)", j, w, o);
					m = d.parentNode;
					m._tip && a.exists(m._tip) && m._tip.del();
					m._tip = f.build(a.substitute(g.tipTemplate, {
						text: w
					})).appendTo(g.tipSelector ?
						k : m);
					try {
						visible && g.autoFocus && this.submitting && !this.focused && d.focus(), this.focused = !0
					} catch(J) {
						this.focused = !1
					}
					this.result[j] = {
						code: o,
						message: w
					}
				} else this.result[j] && delete this.result[j], t.call(this, d, !0);
				return o
			},
			t = function(a, b) {
				if(b || !this.submitting && this.options.enabled && (this.options.required || a.getAttribute("data-validate"))) {
					var c = this.options;
					f(a).removeClass("validating").parent(c.containerSelector).removeClass(c.errorClass);
					(c = a.parentNode._tip) && c.del()
				}
			};
		return {
			init: function() {
				j.call(this,
					"blur", k);
				j.call(this, "focus", t)
			},
			addRule: function(b, c) {
				var d = this.rules;
				d[b] || (d[b] = {});
				a.extend(d[b], c)
			},
			checkItem: function() {
				var b = this,
					c = this.form;
				a.each(a.toArray(arguments), function() {
					var d = a.isString(this) ? f('[name="' + this + '"]', c)[0] : a.get(this);
					d && k.call(b, d)
				})
			},
			resetItem: function() {
				var b = this,
					c = this.form;
				a.each(a.toArray(arguments), function() {
					var d = a.isString(this) ? f('[name="' + this + '"]', c)[0] : a.get(this);
					d && t.call(b, d, !0)
				})
			},
			resetForm: function() {
				var a = this.options,
					b = this;
				a.before && c.call(this,
					a.before);
				f("input, select, textarea", this.form).each(function() {
					t.call(b, this, !0)
				});
				a.after && c.call(this, a.after, !0)
			},
			validate: function() {
				var b = this,
					d = this.options,
					e = 0,
					g = d.stopOnError,
					i = d.enabled;
				if(!a.exists(this.form)) return !0;
				this.result = {};
				a.isFunction(i) && (i = !!i.call(this));
				if(!i) return !0;
				if(this.submitting) return !1;
				this.submitting = !0;
				if(d.before) {
					if(i = !1 === c.call(this, d.before) ? 10 : 0) this.result._before = {
						code: i
					};
					e += i
				}
				this.focused = !1;
				g && e || f("input, select, textarea", this.form).each(function() {
					e +=
						k.call(b, this) || 0;
					return !g || !e
				});
				if(d.after) {
					if(i = !1 === c.call(this, d.after, !e) ? 11 : 0) this.result._after = {
						code: i
					};
					e += i
				}
				setTimeout(function() {
					b.submitting = !1
				}, 100);
				return !e
			}
		}
	}();
	a.validator = a.extend(validator, b)
})(light, light.node);
(function(a) {
	function f(a, b, c) {
		a = c.createElement(a);
		if(null === b) return a;
		for(p in b)
			if("class" == p || "className" == p) a.className = b[p];
			else if("style" == p)
			for(s in b[p]) a.style[s] = b[p][s];
		else "innerHTML" === p ? a.innerHTML = b[p] : "appendTo" === p ? b[p].appendChild(a) : "append" === p ? a.appendChild(b[p]) : a.setAttribute([p], b[p]);
		return a
	}
	a.dialog = function(e) {
		if(a.page._dialog) return a.page._dialog;
		this.config = a.extend({}, {
			targetFrame: document,
			title: "\u5b89\u5168\u63a7\u4ef6\u63d0\u793a",
			bodyId: "light-dialog",
			bodyClass: "light-dialog",
			iframeId: "light-dialog-iframe",
			overlayId: "light-dialog-shadow",
			overlayClass: "light-dialog-shadow",
			loadingId: "light-load",
			loadClass: "light-load",
			loadingSrc: "https://i.alipayobjects.com/e/201310/1Lb7eeFa4r.gif",
			iframeSrc: "https://securitycenter.alipay.com/sc/aliedit/xbox.htm",
			timeout: 2E4
		}, e);
		var b = this.config.targetFrame;
		this.body = b.getElementById(this.config.bodyId);
		this.overlay = b.getElementById(this.config.overlayId);
		this.load = b.getElementById(this.config.loadingId);
		var c = function() {
				var c = "",
					d = "",
					f = b.compatMode,
					e = a.client.info;
				if(f || e.engine.trident) "CSS1Compat" == f ? (c = b.documentElement.clientWidth, d = b.documentElement.clientHeight) : (c = b.body.clientWidth, d = b.body.clientHeight);
				document.all ? (f = document.body.scrollTop, e = document.body.scrollLeft) : (f = window.pageYOffset, e = window.pageXOffset);
				return {
					maxWidth: Math.max(b.documentElement.clientWidth, b.body.scrollWidth, b.documentElement.scrollWidth, b.body.offsetWidth, b.documentElement.offsetWidth),
					maxHeight: Math.max(b.documentElement.clientHeight, b.body.scrollHeight,
						b.documentElement.scrollHeight, b.body.offsetHeight, b.documentElement.offsetHeight),
					clientWidth: c,
					clientHeight: d,
					scrollTop: f,
					scrollLeft: e
				}
			},
			d = this;
		a.page._dialog = d;
		a.ready(function() {
			if(!d.iframe) {
				d.body ? d.iframe = b.getElementById(d.config.iframeId) : (d.body = f("div", {
						id: d.config.bodyId,
						"class": d.config.bodyClass,
						style: {
							left: Math.max((c().clientWidth - 620) / 2 + c().scrollLeft, 0) + "px",
							top: Math.max((c().clientHeight - 400) / 2 + c().scrollTop, 0) + "px"
						},
						appendTo: b.body
					}, b), d.body.innerHTML = '<div class="light-dialog-top"><div class="light-dialog-title"><h2>' +
					d.config.title + '</h2><a href="#" id="light-dialog-close"><s></s><em>\u5173\u95ed</em></a></div></div>', d.iframe = f("iframe", {
						id: d.config.iframeId,
						frameBorder: "no",
						scrolling: "no",
						src: "",
						appendTo: d.body
					}, b));
				var e = function() {
					d.body.style.left = Math.max((c().clientWidth - 620) / 2 + c().scrollLeft, 0) + "px";
					d.body.style.top = Math.max((c().clientHeight - 400) / 2 + c().scrollTop, 0) + "px"
				};
				a.on(window, "resize", e);
				a.on(window, "scroll", e)
			}
			d.overlay = b.getElementById(d.config.overlayId);
			d.overlay || (d.overlay = f("div", {
				id: d.config.overlayId,
				"class": d.config.overlayClass,
				innerHTML: "<iframe src=\"javascript:''\"></iframe>",
				style: {
					width: c().maxWidth + "px",
					height: c().maxHeight + "px"
				},
				appendTo: b.body
			}, b), a.on(window, "resize", function() {
				d.overlay.style.width = c().maxWidth + "px";
				d.overlay.style.height = c().maxHeight + "px"
			}));
			d.load = b.getElementById(d.config.loadingId);
			d.load || (d.load = f("div", {
				id: d.config.loadingId,
				"class": d.config.loadClass,
				innerHTML: '<img src="' + d.config.loadingSrc + '">',
				style: {
					left: (c().clientWidth - 208) / 2 + "px",
					top: (c().clientHeight -
						50) / 2 + "px"
				},
				appendTo: b.body
			}, b))
		})
	};
	a.dialog.prototype = {
		show: function() {
			var f = this;
			this.load.style.visibility = "visible";
			this.overlay.style.visibility = "visible";
			a.on(this.iframe, "load", function() {
				f.body.style.visibility = "visible";
				f.load.style.visibility = "hidden";
				var b = f.config.targetFrame.getElementById("light-dialog-close") || {};
				a.on(b, "click", function() {
					f.hide()
				});
				a.on(f.config.targetFrame, "keydown", function(a) {
					27 == a.which && (f.hide(), a.cancel())
				})
			});
			this.iframe.src = this.config.iframeSrc
		},
		hide: function() {
			this.body.style.visibility =
				"hidden";
			this.overlay.style.visibility = "hidden";
			this.config.onHide && this.config.onHide()
		},
		dispose: function() {
			targetFrame.body.removeChild(this.load);
			targetFrame.body.removeChild(this.body);
			targetFrame.body.removeChild(this.overlay)
		},
		onShow: a.noop
	};
	a.dialog.prototype.constructor = a.dialog
})(window.light);
(function(a) {
	a.pop = function(f) {
		this.options = a.extend({}, {
			targets: [],
			id: "",
			className: "",
			width: 280,
			height: null,
			type: "message",
			event: "mouseover",
			direction: "up"
		}, f);
		this.pop = null;
		this.init()
	};
	a.pop.position = {
		up: function(a, e, b, c, d) {
			d.direction = a;
			e.height + e.top - b.top - b.height < c.height + d.height ? d.direction = "down" : b.top - e.top < c.height + d.height && (d.direction = "up");
			"up" == d.direction ? (c.top = b.top + b.height + d.height, d.top = 1 - d.height) : (c.top = b.top - d.height - c.height, d.top = c.innerHeight - 1);
			c.left = b.left < e.left + parseInt(c.width /
				2) - b.width ? e.left : b.left > e.left + e.width - parseInt(c.width / 2) ? e.left + e.width - c.width : b.left + parseInt(b.width / 2) - parseInt(c.width / 2);
			d.left = b.left < c.left ? 0 : b.left > c.left + c.width ? c.width - d.width : b.width < c.width ? b.left + parseInt((b.width - d.width) / 2) - c.left : parseInt(c.width / 2);
			return {
				rect: c,
				arrow: d
			}
		},
		left: function() {}
	};
	a.pop.position.down = a.pop.position.up;
	a.pop.position.left = a.pop.position.right;
	a.pop.prototype = {
		init: function() {
			var f = this;
			this.initDom();
			a.each(this.options.targets, function(e, b) {
				b = a.node(b);
				b.mouseover(function() {
					f.show(b)
				}).mouseout(function() {
					f.hide(b)
				})
			})
		},
		initDom: function() {
			this.wrap = a.node.build(a.substitute('<div id="{id}" class="{className}"><div class="ui-tiptext-container ui-tiptext-container-{type}"><span class="ui-tiptext-arrow ui-tiptext-arrowup"></span><span class="ui-tiptext-icon"></span><div class="ui-tiptext-content"></div></div></div>', {
				id: this.options.id,
				className: this.options.className,
				type: this.options.type
			})).appendTo(document.body).hide();
			this.pop = a.node(".ui-tiptext-container",
				this.wrap);
			this.arrow = a.node(".ui-tiptext-arrow", this.pop);
			this.content = a.node(".ui-tiptext-content", this.pop)
		},
		show: function(a) {
			this.content.html(a.attr("data-content"));
			this.setSize();
			this.wrap.show();
			this.setPosition(a[0])
		},
		hide: function() {
			this.wrap.hide()
		},
		setSize: function() {
			this.options.width && (this.pop[0].style.width = this.options.width + "px");
			this.options.height && (this.pop[0].style.height = this.options.height + "px")
		},
		setPosition: function(f) {
			var e;
			e = a.getScroll();
			var f = a.region(f),
				b = a.region(this.pop[0]),
				c = a.region(this.arrow[0]);
			b.innerHeight = this.pop[0].clientHeight;
			e.width = a.getViewportWidth();
			e.height = a.getViewportHeight();
			e = a.pop.position[this.options.direction](this.options.direction, e, f, b, c);
			a.setStyle(this.pop[0], {
				position: "absolute",
				zIndex: "9999",
				left: e.rect.left + "px",
				top: e.rect.top + "px"
			});
			a.setStyle(this.arrow[0], {
				left: e.arrow.left + "px",
				top: e.arrow.top + "px"
			});
			this.arrow[0].className = "ui-tiptext-arrow ui-tiptext-arrow" + e.arrow.direction
		}
	}
})(window.light);
(function(a, f) {
	function e(a, b, c, f) {
		var e, B, g, i, j = l++,
			h = 0,
			k = b.length;
		"string" === typeof c && !t.test(c) && (i = c = c.toLowerCase());
		for(; h < k; h++)
			if(e = b[h]) {
				B = !1;
				for(e = e[a]; e;) {
					if(e[d] === j) {
						B = b[e.sizset];
						break
					}
					if((g = 1 === e.nodeType) && !f) e[d] = j, e.sizset = h;
					if(i) {
						if(e.nodeName.toLowerCase() === c) {
							B = e;
							break
						}
					} else if(g)
						if("string" !== typeof c) {
							if(e === c) {
								B = !0;
								break
							}
						} else if(0 < q.filter(c, [e]).length) {
						B = e;
						break
					}
					e = e[a]
				}
				b[h] = B
			}
	}
	var b = a.document,
		c = b.documentElement,
		d = "sizcache" + (Math.random() + "").replace(".", ""),
		l = 0,
		g = Object.prototype.toString,
		j = !1,
		i = !0,
		h = /^#([\w\-]+$)|^(\w+$)|^\.([\w\-]+$)/,
		n = /((?:\((?:\([^()]+\)|[^()]+)+\)|\[(?:\[[^\[\]]*\]|['"][^'"]*['"]|[^\[\]'"]+)+\]|\\.|[^ >+~,(\[\\]+)+|[>+~])(\s*,\s*)?((?:.|\r|\n)*)/g,
		k = /\\/g,
		t = /\W/,
		I = /^\w/,
		E = /\D/,
		m = /(-?)(\d*)(?:n([+\-]?\d*))?/,
		O = /^\+|\s*/g,
		P = /h\d/i,
		x = /input|select|textarea|button/i,
		o = /[\t\n\f\r]/g,
		u = {
			ID: /#((?:[-\w]|[^\x00-\xa0]|\\.)+)/,
			CLASS: /\.((?:[-\w]|[^\x00-\xa0]|\\.)+)/,
			NAME: /\[name=['"]*((?:[-\w]|[^\x00-\xa0]|\\.)+)['"]*\]/,
			TAG: RegExp("^(" + "(?:[-\\w]|[^\\x00-\\xa0]|\\\\.)".replace("[-",
				"[-\\*") + "+)"),
			ATTR: RegExp("\\[\\s*((?:[-\\w]|[^\\x00-\\xa0]|\\\\.)+)\\s*(?:(\\S?=)\\s*(?:(['\"])(.*?)\\3|(#?(?:[-\\w]|[^\\x00-\\xa0]|\\\\.)*)|)|)\\s*\\]"),
			PSEUDO: /:((?:[-\w]|[^\x00-\xa0]|\\.)+)(?:\((['"]?)((?:\([^\)]+\)|[^\(\)]*)+)\2\))?/,
			CHILD: /:(only|nth|last|first)-child(?:\(\s*(even|odd|(?:[+\-]?\d+|(?:[+\-]?\d*)?n\s*(?:[+\-]\s*\d+)?))\s*\))?/,
			POS: /:(nth|eq|gt|lt|first|last|even|odd)(?:\((\d*)\))?(?=[^\-]|$)/
		},
		z = u.POS,
		w = function() {
			var a, b = function(a, b) {
					return "\\" + (b - 0 + 1)
				},
				c = {};
			for(a in u) u[a] =
				RegExp(u[a].source + /(?![^\[]*\])(?![^\(]*\))/.source), c[a] = RegExp(/(^(?:.|\r|\n)*?)/.source + u[a].source.replace(/\\(\d+)/g, b));
			u.globalPOS = z;
			return c
		}(),
		A = function(a) {
			var c = !1,
				d = b.createElement("div");
			try {
				c = a(d)
			} catch(f) {}
			return c
		},
		J = A(function(a) {
			var d = !0,
				f = "script" + (new Date).getTime();
			a.innerHTML = "<a name ='" + f + "'/>";
			c.insertBefore(a, c.firstChild);
			b.getElementById(f) && (d = !1);
			c.removeChild(a);
			return d
		}),
		Q = A(function(a) {
			a.appendChild(b.createComment(""));
			return 0 === a.getElementsByTagName("*").length
		}),
		R = A(function(a) {
			a.innerHTML = "<a href='#'></a>";
			return a.firstChild && "undefined" !== typeof a.firstChild.getAttribute && "#" === a.firstChild.getAttribute("href")
		}),
		L = A(function(a) {
			a.innerHTML = "<div class='test e'></div><div class='test'></div>";
			if(!a.getElementsByClassName || 0 === a.getElementsByClassName("e").length) return !1;
			a.lastChild.className = "e";
			return 1 !== a.getElementsByClassName("e").length
		});
	[0, 0].sort(function() {
		i = !1;
		return 0
	});
	var q = function(a, c, d) {
			var d = d || [],
				c = c || b,
				e, C, B, g = c.nodeType;
			if(1 !== g &&
				9 !== g) return [];
			if(!a || "string" !== typeof a) return d;
			B = G(c);
			if(!B && (e = h.exec(a)))
				if(e[1])
					if(9 === g)
						if((C = c.getElementById(e[1])) && C.parentNode) {
							if(C.id === e[1]) return y([C], d)
						} else return y([], d);
			else {
				if(c.ownerDocument && (C = c.ownerDocument.getElementById(e[1])) && M(c, C) && C.id === e[1]) return y([C], d)
			} else {
				if(e[2]) return "body" === a && c.body ? y([c.body], d) : y(c.getElementsByTagName(a), d);
				if(L && e[3] && c.getElementsByClassName) return y(c.getElementsByClassName(e[3]), d)
			}
			return D(a, c, d, f, B)
		},
		D = function(a, b, c, d, e) {
			var f,
				i, h, j, k, l = b,
				m = !0,
				r = [],
				o = a;
			do
				if(n.exec(""), f = n.exec(o))
					if(o = f[3], r.push(f[1]), f[2]) {
						j = f[3];
						break
					}
			while(f);
			if(1 < r.length && z.exec(a))
				if(2 === r.length && v.relative[r[0]]) i = N(r[0] + r[1], b, d, e);
				else
					for(i = v.relative[r[0]] ? [b] : q(r.shift(), b); r.length;) a = r.shift(), v.relative[a] && (a += r.shift()), i = N(a, i, d, e);
			else if(!d && 1 < r.length && 9 === b.nodeType && !e && u.ID.test(r[0]) && !u.ID.test(r[r.length - 1]) && (f = q.find(r.shift(), b, e), b = f.expr ? q.filter(f.expr, f.set)[0] : f.set[0]), b) {
				f = d ? {
					expr: r.pop(),
					set: y(d)
				} : q.find(r.pop(),
					1 <= r.length && ("~" === r[0] || "+" === r[0]) && b.parentNode || b, e);
				i = f.expr ? q.filter(f.expr, f.set) : f.set;
				for(0 < r.length ? h = y(i) : m = !1; r.length;) f = k = r.pop(), v.relative[k] ? f = r.pop() : k = "", null == f && (f = b), v.relative[k](h, f, e)
			} else h = [];
			h || (h = i);
			h || q.error(k || a);
			if("[object Array]" === g.call(h))
				if(m)
					if(b && 1 === b.nodeType)
						for(a = 0; null != h[a]; a++) h[a] && (!0 === h[a] || 1 === h[a].nodeType && M(b, h[a])) && c.push(i[a]);
					else
						for(a = 0; null != h[a]; a++) h[a] && 1 === h[a].nodeType && c.push(i[a]);
			else c.push.apply(c, h);
			else y(h, c);
			j && (D(j, l, c,
				d, e), S(c));
			return c
		},
		G = q.isXML = function(a) {
			return(a = (a ? a.ownerDocument || a : 0).documentElement) ? "HTML" !== a.nodeName : !1
		},
		y = function(a, b) {
			var b = b || [],
				c = 0,
				d = a.length;
			if("number" === typeof d)
				for(; c < d; c++) b.push(a[c]);
			else
				for(; a[c]; c++) b.push(a[c]);
			return b
		},
		S = q.uniqueSort = function(a) {
			if(H && (j = i, a.sort(H), j))
				for(var b = 1; b < a.length; b++) a[b] === a[b - 1] && a.splice(b--, 1);
			return a
		},
		M = q.contains = c.compareDocumentPosition ? function(a, b) {
			return !!(a.compareDocumentPosition(b) & 16)
		} : c.contains ? function(a, b) {
			return a !==
				b && (a.contains ? a.contains(b) : !1)
		} : function(a, b) {
			for(; b = b.parentNode;)
				if(b === a) return !0;
			return !1
		};
	q.matches = function(a, c) {
		return D(a, b, [], c, G(b))
	};
	q.matchesSelector = function(a, c) {
		return 0 < D(c, b, [], [a], G(b)).length
	};
	q.find = function(a, b, c) {
		var d, f, e, g, i, h;
		if(!a) return [];
		f = 0;
		for(e = v.order.length; f < e; f++)
			if(i = v.order[f], g = w[i].exec(a))
				if(h = g[1], g.splice(1, 1), "\\" !== h.substr(h.length - 1) && (g[1] = (g[1] || "").replace(k, ""), d = v.find[i](g, b, c), null != d)) {
					a = a.replace(u[i], "");
					break
				}
		d || (d = "undefined" !== typeof b.getElementsByTagName ?
			b.getElementsByTagName("*") : []);
		return {
			set: d,
			expr: a
		}
	};
	q.filter = function(a, b, c, d) {
		for(var e, g, i, h, j, k, l, m, r = a, n = [], o = b, t = b && b[0] && G(b[0]); a && b.length;) {
			for(i in v.filter)
				if(null != (e = w[i].exec(a)) && e[2])
					if(k = v.filter[i], j = e[1], g = !1, e.splice(1, 1), "\\" !== j.substr(j.length - 1)) {
						o === n && (n = []);
						if(v.preFilter[i])
							if(e = v.preFilter[i](e, o, c, n, d, t)) {
								if(!0 === e) continue
							} else g = h = !0;
						if(e)
							for(l = 0; null != (j = o[l]); l++) j && (h = k(j, e, l, o), m = d ^ h, c && null != h ? m ? g = !0 : o[l] = !1 : m && (n.push(j), g = !0));
						if(h !== f) {
							c || (o = n);
							a = a.replace(u[i],
								"");
							if(!g) return [];
							break
						}
					}
			if(a === r)
				if(null == g) q.error(a);
				else break;
			r = a
		}
		return o
	};
	q.error = function(a) {
		throw Error("Syntax error, unrecognized expression: " + a);
	};
	var K = q.getText = function(a) {
			var b, c;
			b = a.nodeType;
			var d = "";
			if(b)
				if(1 === b || 9 === b || 11 === b) {
					if("string" === typeof a.textContent) return a.textContent;
					for(a = a.firstChild; a; a = a.nextSibling) d += K(a)
				} else {
					if(3 === b || 4 === b) return a.nodeValue
				}
			else
				for(b = 0; c = a[b]; b++) 8 !== c.nodeType && (d += K(c));
			return d
		},
		v = q.selectors = {
			match: u,
			leftMatch: w,
			order: ["ID", "NAME",
				"TAG"
			],
			attrMap: {
				"class": "className",
				"for": "htmlFor"
			},
			attrHandle: {
				href: R ? function(a) {
					return a.getAttribute("href")
				} : function(a) {
					return a.getAttribute("href", 2)
				},
				type: function(a) {
					return a.getAttribute("type")
				}
			},
			relative: {
				"+": function(a, b) {
					var c = "string" === typeof b,
						d = c && !t.test(b),
						c = c && !d;
					d && (b = b.toLowerCase());
					for(var d = 0, f = a.length, e; d < f; d++)
						if(e = a[d]) {
							for(;
								(e = e.previousSibling) && 1 !== e.nodeType;);
							a[d] = c || e && e.nodeName.toLowerCase() === b ? e || !1 : e === b
						}
					c && q.filter(b, a, !0)
				},
				">": function(a, b) {
					var c, d = "string" ===
						typeof b,
						e = 0,
						f = a.length;
					if(d && !t.test(b))
						for(b = b.toLowerCase(); e < f; e++) {
							if(c = a[e]) c = c.parentNode, a[e] = c.nodeName.toLowerCase() === b ? c : !1
						} else {
							for(; e < f; e++)(c = a[e]) && (a[e] = d ? c.parentNode : c.parentNode === b);
							d && q.filter(b, a, !0)
						}
				},
				"": function(a, b, c) {
					e("parentNode", a, b, c)
				},
				"~": function(a, b, c) {
					e("previousSibling", a, b, c)
				}
			},
			find: {
				ID: J ? function(a, b, c) {
					if("undefined" !== typeof b.getElementById && !c) return(a = b.getElementById(a[1])) && a.parentNode ? [a] : []
				} : function(a, b, c) {
					if("undefined" !== typeof b.getElementById &&
						!c) return(b = b.getElementById(a[1])) ? b.id === a[1] || "undefined" !== typeof b.getAttributeNode && b.getAttributeNode("id").nodeValue === a[1] ? [b] : f : []
				},
				NAME: function(a, b) {
					if("undefined" !== typeof b.getElementsByName) {
						for(var c = [], d = b.getElementsByName(a[1]), e = 0, f = d.length; e < f; e++) d[e].getAttribute("name") === a[1] && c.push(d[e]);
						return 0 === c.length ? null : c
					}
				},
				TAG: Q ? function(a, b) {
					if("undefined" !== typeof b.getElementsByTagName) return b.getElementsByTagName(a[1])
				} : function(a, b) {
					var c = b.getElementsByTagName(a[1]);
					if("*" ===
						a[1]) {
						for(var d = [], e = 0; c[e]; e++) 1 === c[e].nodeType && d.push(c[e]);
						c = d
					}
					return c
				}
			},
			preFilter: {
				CLASS: function(a, b, c, d, e, f) {
					a = " " + a[1].replace(k, "") + " ";
					if(f) return a;
					for(var f = 0, g; null != (g = b[f]); f++) g && (e ^ (g.className && 0 <= (" " + g.className + " ").replace(o, " ").indexOf(a)) ? c || d.push(g) : c && (b[f] = !1));
					return !1
				},
				ID: function(a) {
					return a[1].replace(k, "")
				},
				TAG: function(a) {
					return a[1].replace(k, "").toLowerCase()
				},
				CHILD: function(a) {
					if("nth" === a[1]) {
						a[2] || q.error(a[0]);
						a[2] = a[2].replace(O, "");
						var b = m.exec("even" ===
							a[2] && "2n" || "odd" === a[2] && "2n+1" || !E.test(a[2]) && "0n+" + a[2] || a[2]);
						a[2] = b[1] + (b[2] || 1) - 0;
						a[3] = b[3] - 0
					} else a[2] && q.error(a[0]);
					a[0] = l++;
					return a
				},
				ATTR: function(a, b, c, d, e, f) {
					b = a[1] = a[1].replace(k, "");
					!f && v.attrMap[b] && (a[1] = v.attrMap[b]);
					a[4] = (a[4] || a[5] || "").replace(k, "");
					"~=" === a[2] && (a[4] = " " + a[4] + " ");
					return a
				},
				PSEUDO: function(a, c, d, e, f, g) {
					if("not" === a[1])
						if(1 < (n.exec(a[3]) || "").length || I.test(a[3])) a[3] = D(a[3], b, [], c, g);
						else return a = q.filter(a[3], c, d, !f), d || e.push.apply(e, a), !1;
					else if(u.POS.test(a[0]) ||
						u.CHILD.test(a[0])) return !0;
					return a
				},
				POS: function(a) {
					a.unshift(!0);
					return a
				}
			},
			filters: {
				enabled: function(a) {
					return !1 === a.disabled
				},
				disabled: function(a) {
					return !0 === a.disabled
				},
				checked: function(a) {
					var b = a.nodeName.toLowerCase();
					return "input" === b && !!a.checked || "option" === b && !!a.selected
				},
				selected: function(a) {
					a.parentNode && a.parentNode.selectedIndex;
					return !0 === a.selected
				},
				parent: function(a) {
					return !!a.firstChild
				},
				empty: function(a) {
					return !a.firstChild
				},
				has: function(a, b, c) {
					return !!q(c[3], a).length
				},
				header: function(a) {
					return P.test(a.nodeName)
				},
				text: function(a) {
					var b = a.getAttribute("type"),
						c = a.type;
					return "input" === a.nodeName.toLowerCase() && "text" === c && (null === b || b.toLowerCase() === c)
				},
				radio: function(a) {
					return "input" === a.nodeName.toLowerCase() && "radio" === a.type
				},
				checkbox: function(a) {
					return "input" === a.nodeName.toLowerCase() && "checkbox" === a.type
				},
				file: function(a) {
					return "input" === a.nodeName.toLowerCase() && "file" === a.type
				},
				password: function(a) {
					return "input" === a.nodeName.toLowerCase() && "password" === a.type
				},
				submit: function(a) {
					var b = a.nodeName.toLowerCase();
					return("input" === b || "button" === b) && "submit" === a.type
				},
				image: function(a) {
					return "input" === a.nodeName.toLowerCase() && "image" === a.type
				},
				reset: function(a) {
					var b = a.nodeName.toLowerCase();
					return("input" === b || "button" === b) && "reset" === a.type
				},
				button: function(a) {
					var b = a.nodeName.toLowerCase();
					return "input" === b && "button" === a.type || "button" === b
				},
				input: function(a) {
					return x.test(a.nodeName)
				},
				focus: function(a) {
					var b = a.ownerDocument;
					return a === b.activeElement && (!b.hasFocus || b.hasFocus()) && !(!a.type && !a.href)
				},
				active: function(a) {
					return a ===
						a.ownerDocument.activeElement
				},
				contains: function(a, b, c) {
					return 0 <= (a.textContent || a.innerText || K(a)).indexOf(c[3])
				}
			},
			setFilters: {
				first: function(a, b) {
					return 0 === b
				},
				last: function(a, b, c, d) {
					return b === d.length - 1
				},
				even: function(a, b) {
					return 0 === b % 2
				},
				odd: function(a, b) {
					return 1 === b % 2
				},
				lt: function(a, b, c) {
					return b < c[3] - 0
				},
				gt: function(a, b, c) {
					return b > c[3] - 0
				},
				nth: function(a, b, c) {
					return c[3] - 0 === b
				},
				eq: function(a, b, c) {
					return c[3] - 0 === b
				}
			},
			filter: {
				PSEUDO: function(a, b, c, d) {
					var e = b[1],
						f = v.filters[e];
					if(f) return f(a,
						c, b, d);
					if("not" === e) {
						b = b[3];
						c = 0;
						for(d = b.length; c < d; c++)
							if(b[c] === a) return !1;
						return !0
					}
					q.error(e)
				},
				CHILD: function(a, b) {
					var c, e, f, g, i, h;
					c = b[1];
					h = a;
					switch(c) {
						case "only":
						case "first":
							for(; h = h.previousSibling;)
								if(1 === h.nodeType) return !1;
							if("first" === c) return !0;
							h = a;
						case "last":
							for(; h = h.nextSibling;)
								if(1 === h.nodeType) return !1;
							return !0;
						case "nth":
							c = b[2];
							e = b[3];
							if(1 === c && 0 === e) return !0;
							f = b[0];
							if((g = a.parentNode) && (g[d] !== f || !a.nodeIndex)) {
								i = 0;
								for(h = g.firstChild; h; h = h.nextSibling) 1 === h.nodeType && (h.nodeIndex =
									++i);
								g[d] = f
							}
							h = a.nodeIndex - e;
							return 0 === c ? 0 === h : 0 === h % c && 0 <= h / c
					}
				},
				ID: J ? function(a, b) {
					return 1 === a.nodeType && a.getAttribute("id") === b
				} : function(a, b) {
					var c = "undefined" !== typeof a.getAttributeNode && a.getAttributeNode("id");
					return 1 === a.nodeType && c && c.nodeValue === b
				},
				TAG: function(a, b) {
					return "*" === b && 1 === a.nodeType || !!a.nodeName && a.nodeName.toLowerCase() === b
				},
				CLASS: function(a, b) {
					return -1 < (" " + (a.className || a.getAttribute("class")) + " ").indexOf(b)
				},
				ATTR: function(a, b) {
					var c = b[1],
						c = q.attr ? q.attr(a, c) : v.attrHandle[c] ?
						v.attrHandle[c](a) : null != a[c] ? a[c] : a.getAttribute(c),
						d = c + "",
						e = b[2],
						f = b[4];
					return null == c ? "!=" === e : !e && q.attr ? null != c : "=" === e ? d === f : "*=" === e ? 0 <= d.indexOf(f) : "~=" === e ? 0 <= (" " + d + " ").indexOf(f) : !f ? d && !1 !== c : "!=" === e ? d !== f : "^=" === e ? 0 === d.indexOf(f) : "$=" === e ? d.substr(d.length - f.length) === f : "|=" === e ? d === f || d.substr(0, f.length + 1) === f + "-" : !1
				},
				POS: function(a, b, c, d) {
					var e = v.setFilters[b[2]];
					if(e) return e(a, c, b, d)
				}
			}
		};
	L && (v.order.splice(1, 0, "CLASS"), v.find.CLASS = function(a, b, c) {
		if("undefined" !== typeof b.getElementsByClassName &&
			!c) return b.getElementsByClassName(a[1])
	});
	var H, F;
	c.compareDocumentPosition ? H = function(a, b) {
		if(a === b) {
			j = true;
			return 0
		}
		return !a.compareDocumentPosition || !b.compareDocumentPosition ? a.compareDocumentPosition ? -1 : 1 : a.compareDocumentPosition(b) & 4 ? -1 : 1
	} : (H = function(a, b) {
		if(a === b) {
			j = true;
			return 0
		}
		if(a.sourceIndex && b.sourceIndex) return a.sourceIndex - b.sourceIndex;
		var c, d, e = [],
			f = [];
		c = a.parentNode;
		d = b.parentNode;
		var g = c;
		if(c === d) return F(a, b);
		if(c) {
			if(!d) return 1
		} else return -1;
		for(; g;) {
			e.unshift(g);
			g = g.parentNode
		}
		for(g =
			d; g;) {
			f.unshift(g);
			g = g.parentNode
		}
		c = e.length;
		d = f.length;
		for(g = 0; g < c && g < d; g++)
			if(e[g] !== f[g]) return F(e[g], f[g]);
		return g === c ? F(a, f[g], -1) : F(e[g], b, 1)
	}, F = function(a, b, c) {
		if(a === b) return c;
		for(a = a.nextSibling; a;) {
			if(a === b) return -1;
			a = a.nextSibling
		}
		return 1
	});
	b.querySelectorAll && function() {
		var a = D,
			b = /^\s*[+~]/,
			c = /'/g,
			d = [];
		A(function(a) {
			a.innerHTML = "<select><option selected></option></select>";
			a.querySelectorAll("[selected]").length || d.push("\\[[\\x20\\t\\n\\r\\f]*(?:checked|disabled|ismap|multiple|readonly|selected|value)");
			a.querySelectorAll(":checked").length || d.push(":checked")
		});
		A(function(a) {
			a.innerHTML = "<p class=''></p>";
			a.querySelectorAll("[class^='']").length && d.push("[*^$]=[\\x20\\t\\n\\r\\f]*(?:\"\"|'')");
			a.innerHTML = "<input type='hidden'>";
			a.querySelectorAll(":enabled").length || d.push(":enabled", ":disabled")
		});
		d = d.length && RegExp(d.join("|"));
		D = function(e, f, g, h, i) {
			if(!h && !i && (!d || !d.test(e)))
				if(f.nodeType === 9) try {
					return y(f.querySelectorAll(e), g)
				} catch(j) {} else if(f.nodeType === 1 && f.nodeName.toLowerCase() !==
					"object") {
					var k = f,
						l = f.getAttribute("id"),
						m = l || "__sizzle__",
						n = f.parentNode,
						o = b.test(e);
					l ? m = m.replace(c, "\\$&") : f.setAttribute("id", m);
					o && n && (f = n);
					try {
						if(!o || n) return y(f.querySelectorAll("[id='" + m + "'] " + e), g)
					} catch(q) {} finally {
						l || k.removeAttribute("id")
					}
				}
			return a(e, f, g, h, i)
		}
	}();
	var N = function(a, b, c, d) {
		for(var e = [], f = "", g = b.nodeType ? [b] : b, h = 0, i = g.length; b = u.PSEUDO.exec(a);) {
			f = f + b[0];
			a = a.replace(u.PSEUDO, "")
		}
		for(v.relative[a] && (a = a + "*"); h < i; h++) D(a, g[h], e, c, d);
		return q.filter(f, e)
	};
	light.Sizzle = q
})(window);
light.extend(light.Sizzle.selectors.filters, {
	checkable: function(a) {
		return "input" === a.nodeName.toLowerCase() && "undefined" !== typeof a.type
	},
	hasValue: function(a) {
		a = a.value;
		return "string" === typeof a && "" !== a
	},
	filled: function(a) {
		return !a.readOnly && !!light.trim(a.value)
	}
});
light.node.getSizzle = function() {
	return light.Sizzle
};
light.has("/alipay/security/base") || function(e) {
	var h = e.client.info,
		i = 0,
		j = [],
		f = function(a) {
			if(a !== j) throw "invalid constructor, use create() instead.";
		},
		k = function(a, d) {
			return a && d && 1 === a.nodeType && "undefined" !== typeof a[d]
		};
	e.register("alipay/security/base", window, f);
	var g = alipay.security;
	g.downloadServer = g.downloadServer || "//download." + e.baseDomain;
	g.securityCenterServer = g.securityCenterServer || "//securitycenter." + e.baseDomain;
	f.defaults = {
		id: "",
		container: null,
		msgMode: "quiet",
		msgTitle: "",
		msgNormalAttribute: "data-explain",
		msgFormItemContainer: null,
		msgClass: "fm-explain",
		msgErrorClass: "fm-error",
		msgHandler: null
	};
	f.Name = "base";
	f.properties = {
		element: null,
		_readyList: []
	};
	g.monitor = function(a, d) {
		window.monitor && monitor.log("sc", a || "unknown", d);
		e.track("sc-" + a + "-" + d)
	};
	g.create = f.create = function(a, d) {
		if(!a) throw "invalid param";
		var b = new a(j);
		b.__type = a;
		var c = f.defaults;
		a.defaults && (a.defaults = c = e.extend({}, f.defaults, a.defaults));
		c = b.options = e.extend({}, c, d);
		c.id ? (c.dataId = c.id + (new Date).getTime() + Math.floor(1E3 * Math.random()),
			e.node("[id=" + c.id + "]:not([data-id]):first").attr("data-id", c.dataId), c.uniqElement = e.node("[data-id=" + c.dataId + "]:first")[0]) : (i++, c.id = "_secprd_" + i);
		!e.get(c.id) && "string" === typeof c.container && (c.container = e.get(c.container));
		e.extend(b, f.properties, a.properties);
		a.prototype.postInit && a.prototype.postInit.call(b);
		return b
	};
	g.activeXEnabled = f.activeXEnabled = function() {
		if(!(window.ActiveXObject instanceof Function) && !window.ActiveXObject) return !1;
		var a = window.external;
		try {
			if(a && "undefined" != typeof a.msActiveXFilteringEnabled &&
				a.msActiveXFilteringEnabled()) return !1
		} catch(d) {}
		return !0
	}();
	g.refreshStatus = f.refreshStatus = function(a) {
		var d = a.installed = !1,
			b = h.engine.trident ? a.info.activex : a.info.plugin;
		if(!b) return !1;
		if(h.engine.trident) {
			if(!g.activeXEnabled) return !1;
			var c;
			try {
				c = new ActiveXObject(b), d = !!c
			} catch(e) {} finally {}
		} else h.engine.presto && (b = b.replace(/,/, "")), d = !(!navigator.plugins || !navigator.plugins[b]);
		return a.installed = d
	};
	f.prototype = {
		toString: function() {
			return this.__type.Name + " (" + this.options.id + ")"
		},
		ready: !1,
		onready: function(a) {
			this.ready ? a.apply(this) : this._readyList.push(a)
		},
		hasAPI: function(a) {
			return k(this.element, a)
		},
		dispose: function() {
			this.element && (this.element.parentNode.removeChild(this.element), this.element = null);
			this.ready = !1;
			this._readyList.length = 0
		},
		api: function(a, d) {
			if(!this.hasAPI(a)) throw "Property is not available: " + a;
			try {
				return void 0 === d ? this.element[a] : this.element[a] = d
			} catch(b) {
				this.catchError.call(this, a, b)
			}
			return null
		},
		render: function() {
			var a = !1,
				d = function() {
					var c = this,
						b = e.get(this.options.id);
					if(k(b, this.__type.defaultMethod)) {
						this.element = b;
						this.ready = !0;
						this.__type.renderHandler && (a = !1 === this.__type.renderHandler.call(this, !1));
						for(b = this._readyList; b.length;) b.shift().apply(this)
					} else a || setTimeout(function() {
						d.call(c)
					}, 0)
				},
				b = function(a, b, c) {
					this.__type.renderingHandler && this.__type.renderingHandler.call(this, !0);
					e.isFunction(b) && this._readyList.push(b);
					c || (b = this.options.container || document.body, b.childNodes.length ? (c = document.createElement("span"), c.innerHTML = a, b.appendChild(c)) :
						b.innerHTML = a);
					d.call(this)
				},
				c = function() {
					var a = this,
						b = this.__type;
					g.refreshStatus(b);
					b.installed ? (e.log("Plugin just installed."), b.installedHandler && b.installedHandler.call(this)) : setTimeout(function() {
						c.call(a)
					}, 10)
				};
			return function(a, d) {
				if(!this.alive) {
					this.alive = !0;
					var f = e.extend({}, this.__type.info, this.options),
						g = this;
					this.__type.installed || c.call(this);
					e.ready(function() {
						b.call(g, e.substitute(g.__type.template, f), a, d)
					})
				}
			}
		}(),
		getMessage: function(a) {
			var d, b = this.__type;
			e.each(b.message, function(b,
				e) {
				if(-1 !== b.indexOf("-")) {
					var g = b.split("-", 2),
						f = parseInt(g[0], 10) || Number.MIN_VALUE,
						g = parseInt(g[1], 10) || Number.MAX_VALUE;
					found = a >= f && a <= g
				} else found = b == a;
				found && (d = e);
				return !found
			});
			d || (d = b.message[0]);
			return d
		},
		showMessage: function(a) {
			var d = 0,
				b = "",
				c = this.options.msgMode;
			"string" === typeof a ? b = a : "object" === typeof a && (void 0 !== a.status ? (d = a.status, b = a.msg) : void 0 !== a.number && (d = a.number, b = a.description));
			b || (b = "\u672a\u77e5\u9519\u8bef", e.log("Cannot determine message %s.", a));
			a = {
				title: "\u8fd0\u884c\u8fc7\u7a0b\u4e2d\u53d1\u751f\u9519\u8bef",
				type: "string",
				content: b,
				code: d,
				show: !0
			};
			switch(c) {
				case "dialog":
				case "tooltip":
					e.page.ui[c](a);
					break;
				case "form":
					break;
				case "custom":
					e.log("Handler not found.");
					break;
				default:
					e.log("%d, %s", a.code, a.content)
			}
		},
		catchError: function(a, d, b) {
			var c = this.__type,
				f = d.status || d.number || 0;
			0 > f && (f = (4294967295 + f + 1).toString(16));
			e.log("Caught error %s from %s in action %s.", f, c.Name, a);
			g.monitor(c.Name, f);
			b || this.showMessage(d)
		}
	}
}(window.light);
(function() {
	var b = {
		id: "lapoiohkeidniicbalnfmakkbnpejgbi",
		setExtensionId: function(a) {
			this.id = a || this.id
		},
		url: "https://chrome.google.com/webstore/detail/",
		webStoreLinkAdded: !1,
		handlers: {},
		checkExtension: function(a) {
			"object" === typeof chrome && "object" === typeof chrome.runtime && "function" === typeof chrome.runtime.sendMessage ? chrome.runtime.sendMessage(b.id, {
				command: "version"
			}, function(c) {
				a(void 0 !== c)
			}) : setTimeout(function() {
				a(!1)
			}, 25)
		},
		checkControl: function(a, c, d) {
			"object" === typeof chrome && "object" === typeof chrome.runtime &&
				"function" === typeof chrome.runtime.sendMessage ? chrome.runtime.sendMessage(b.id, {
					command: "check_" + (c || "aliedit")
				}, function(c) {
					"object" === typeof c && c.existence ? d ? b.checkControlVersion(d, function(c) {
						a(!c)
					}) : a(!0) : a(!1)
				}) : setTimeout(function() {
					a(!1)
				}, 25)
		},
		checkControlVersion: function(a, c) {
			var d = a.split("-"),
				e = d[0].split("."),
				f = d[1].split(".");
			b.execute({
				command: "version"
			}, function(a) {
				if(a && a.version) {
					a: {
						for(var a = a.version.split("."), b = 0; 4 > b && !(parseInt(a[b]) > parseInt(e[b])); b++)
							if(parseInt(a[b]) < parseInt(e[b])) {
								a = !1;
								break a
							}
						for(b = 0; 4 > b && !(parseInt(a[b]) < parseInt(f[b])); b++)
							if(parseInt(a[b]) > parseInt(f[b])) {
								a = !1;
								break a
							}
						a = !0
					}
					c(a)
				}
				else c(!0)
			})
		},
		execute: function(a, c) {
			try {
				chrome.runtime.sendMessage(b.id, a, c)
			} catch(d) {
				c({
					error: "Extension.execute error: " + d.message
				})
			}
		},
		executeCmd: function(a, c) {
			var d = null;
			if(a)
				if("object" === typeof a ? (d = a.service, a = light.param(a)) : d = light.unparam(a).service, d) {
					light.log("Calling %s: %s.", d, a);
					try {
						chrome.runtime.sendMessage(b.id, {
							command: "cert",
							input: a
						}, function(a) {
							var b = a && a.cert ?
								light.unparam(a.cert) : {};
							b.rawData = a && a.cert || "";
							b.api = d;
							var e = b.status = parseInt(b.status, 10);
							isNaN(e) && (e = -1);
							light.log("Result from %s: (%d) %s.", d, e, a);
							if(e) {
								if(e) {
									a = alipay.security.utils.chromeExtension;
									e = a.handlers[e] || a.handlers["*"] || null
								} else e = null;
								e && e.call(this, b)
							} else c && c.call(this, b)
						})
					} catch(e) {
						c({
							error: "Extension.execute error: " + e.message
						})
					}
				} else {
					if(light.debug) throw "Invalid command passed";
				}
			else if(light.debug) throw "Empty command passed";
		},
		install: function(a, c, d) {
			var e = b.url + b.id;
			try {
				b.addWebStoreLink(), window.top.chrome.webstore.install(e, a, c)
			} catch(f) {
				d(f)
			}
		},
		addWebStoreLink: function() {
			if(!b.webStoreLinkAdded) {
				var a = window.top.document,
					c = a.createElement("link");
				c.setAttribute("rel", "chrome-webstore-item");
				c.setAttribute("href", b.url + b.id);
				a.getElementsByTagName("head")[0].appendChild(c);
				b.webStoreLinkAdded = !0
			}
		},
		pollTimeInterval: 1E3,
		timer: {},
		callbacks: {},
		pollCheckControll: function(a, c, d) {
			function e() {
				b.checkControl(function(a) {
					if(a) {
						b.timer[c] = !1;
						for(var a = b.callbacks[c],
								d; d = a.shift();) d()
					} else setTimeout(e, b.pollTimeInterval)
				}, c, d)
			}
			c = c || "aliedit";
			b.timer[c] ? b.callbacks.push(a) : (b.timer[c] = !0, b.callbacks[c] || (b.callbacks[c] = []), b.callbacks[c].push(a), e())
		}
	};
	(function(a) {
		for(var a = a.split("."), b = window, d = 0, e = a.length; d < e; d++) void 0 === b[a[d]] && (b[a[d]] = {}), b = b[a[d]];
		return b
	})("alipay.security.utils").chromeExtension = b
})();
/*
 <a href="http://kjur.github.io/jsrsasign/license/">MIT License</a>
*/
var ODE3ZDc5Yg = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/",
	NjJkYzE0YWY = [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1],
	MjllMzhmZGI = function(e) {
		var a, c,
			g, j, i, n;
		g = e.length;
		c = 0;
		for(a = ""; c < g;) {
			j = e.charCodeAt(c++) & 255;
			if(c == g) {
				a += ODE3ZDc5Yg.charAt(j >> 2);
				a += ODE3ZDc5Yg.charAt((j & 3) << 4);
				a += "==";
				break
			}
			i = e.charCodeAt(c++);
			if(c == g) {
				a += ODE3ZDc5Yg.charAt(j >> 2);
				a += ODE3ZDc5Yg.charAt((j & 3) << 4 | (i & 240) >> 4);
				a += ODE3ZDc5Yg.charAt((i & 15) << 2);
				a += "=";
				break
			}
			n = e.charCodeAt(c++);
			a += ODE3ZDc5Yg.charAt(j >> 2);
			a += ODE3ZDc5Yg.charAt((j & 3) << 4 | (i & 240) >> 4);
			a += ODE3ZDc5Yg.charAt((i & 15) << 2 | (n & 192) >> 6);
			a += ODE3ZDc5Yg.charAt(n & 63)
		}
		return a
	},
	NjIxNjRlYzQ = function(e) {
		var a, c, g, j, i;
		j = e.length;
		g = 0;
		for(i = ""; g < j;) {
			do a = NjJkYzE0YWY[e.charCodeAt(g++) & 255]; while (g < j && -1 == a);
			if(-1 == a) break;
			do c = NjJkYzE0YWY[e.charCodeAt(g++) & 255]; while (g < j && -1 == c);
			if(-1 == c) break;
			i += String.fromCharCode(a << 2 | (c & 48) >> 4);
			do {
				a = e.charCodeAt(g++) & 255;
				if(61 == a) return i;
				a = NjJkYzE0YWY[a]
			} while (g < j && -1 == a);
			if(-1 == a) break;
			i += String.fromCharCode((c & 15) << 4 | (a & 60) >> 2);
			do {
				c = e.charCodeAt(g++) & 255;
				if(61 == c) return i;
				c = NjJkYzE0YWY[c]
			} while (g < j && -1 == c);
			if(-1 == c) break;
			i += String.fromCharCode((a & 3) << 6 | c)
		}
		return i
	},
	YTJjNzJmYg = function(e) {
		for(var a,
				c = [], g = 0, j = 0; j < e.length; j++) a = e.charCodeAt(j), c[g++] = a & 255;
		return c
	},
	NmUzZDU1Njc = function(e) {
		for(var a = "", c = 0; c < e.length; c++) a += String.fromCharCode(e[c]);
		return a
	},
	NWIxYWI3Yw = function(e) {
		return YTJjNzJmYg(NjIxNjRlYzQ(e))
	},
	NGE1YTk3NDg = function(e) {
		NjRhYmIyNDY = "";
		if("string" === typeof e) return eval(e);
		for(var a = 0; a < e.length; a++) NjRhYmIyNDY += String.fromCharCode(e[a]);
		return NjBkNDM5NA = eval(NjRhYmIyNDY)
	},
	NDUzOWYxOWQ = [119, 105, 110, 100, 111, 119],
	NmE4Zjg5NmE = NGE1YTk3NDg(NDUzOWYxOWQ),
	NzJmMDQ1OGE = [101, 110, 99,
		111, 100, 101, 85, 82, 73, 67, 111, 109, 112, 111, 110, 101, 110, 116
	],
	NDE1MWQzYzE = function(e, a) {
		e < a && (e ^= a, a ^= e, e ^= a);
		for(; 0 != a;) var c = e % a,
			e = a,
			a = c;
		return e & 255
	},
	MmEyYzAxZTQ = function(e) {
		return(126 ^ e & 255) & 255
	},
	MzQxMDlhNWI = function(e) {
		return e + 35 & 255
	},
	MTA4NjUxNDA = function(e) {
		return e + 22 & 255
	},
	MTA0NTc4YzA = function(e) {
		for(var a = 0; a < e.length; a++) e[a] = (e[a] >> 4 & 15 | e[a] << 4) & 255;
		return e
	},
	OGMwOTI1Yw = MTA0NTc4YzA,
	MmQ1MjgwNDE = function(e) {
		for(var a = NmUzZDU1Njc(ZTVjYTQ4MQ(NWIxYWI3Yw("7YH12arJu9Ki1vCX4w=="))), c = 0; c < e.length; c++) e[c] ^=
			a.charCodeAt(c % a.length) & 255, e[c] &= 255;
		return e
	},
	M2YyMTYyZjI = MmQ1MjgwNDE,
	M2Y0ODk3ZGQ = [0, MmEyYzAxZTQ(127), MzQxMDlhNWI(-32), MzQxMDlhNWI(-28), 15, MTA4NjUxNDA(9), MmEyYzAxZTQ(65), MzQxMDlhNWI(92), 255],
	ZmYwYWVkNA = function(e) {
		for(var a = 54, c = 0; c < e.length; c++) e[c] ^= a, e[c] &= 255, a = a * c % 256;
		return e
	},
	NWY0ZmU2NTI = ZmYwYWVkNA,
	ZTUxM2FlMw = function(e) {
		for(var a = 102, c = 0, g = 0; g < e.length; g++) c = e[g], e[g] ^= a, a = c, e[g] &= 255;
		return e
	},
	NDcxOGY1Y2Y = function(e) {
		for(var a = 201, c = 0; c < e.length; c++) a = (a << 4 ^ a) & 240 | a >> 4 & 15, e[c] = (e[c] ^ a) &
			255;
		return e
	},
	NTNmNGM1ZA = NDcxOGY1Y2Y,
	NmZkNDUyNmE = function(e) {
		for(var a = 0; a < e.length; a++) e[a] ^= (e[a] ^ 234) >> 4 & 15, e[a] &= 255;
		return e
	},
	NGNkYTlhNjU = NmZkNDUyNmE,
	ZTVjYTQ4MQ = function(e) {
		for(var a = 203, c = 0, g = 0; g < e.length; g++) c = e[g], e[g] = (e[g] ^ a) & 255, a = c;
		return e
	},
	M2IzYTg0MWU = function(e) {
		for(var a = 212, c = 0, g = 0, j = 0; j < e.length; j++) {
			for(var i = c = 0; 8 > i; i++) c |= a & 1 << i, g = (a & 32) << 2 ^ (a & 4) << 5, a = g | a >> 1 & 127;
			e[j] = (e[j] ^ c) & 255
		}
		return e
	},
	OWQxYzdlNA = M2IzYTg0MWU,
	M2VhMmYwNDY = function(e) {
		for(var a = 0, c = 0; c < e.length; c++) a = e[c] & 240 |
			(e[c] >> 4 & 15 ^ e[c]) & 15, e[c] = (a >> 1 & 85 | a << 1 & 170) & 255;
		return e
	},
	Mjc2MmE5ZTI = M2VhMmYwNDY,
	NmRkYTJjOTg = function(e) {
		for(var a = NmUzZDU1Njc(NzdhMTk4Zjg(NWIxYWI3Yw("KGZ/InhpeWN7fyhtfw=="))), c = 0; c < e.length; c++) e[c] ^= a.charCodeAt((c + 1) % a.length) & 255, e[c] &= 255;
		return e
	},
	Mjc0ZmU5YTQ = NmRkYTJjOTg,
	NTFjMGY2M2Q = function(e) {
		for(var a = NmUzZDU1Njc(N2IyYWJmODI(NWIxYWI3Yw("692qh/uf0rrLuJ/HvA=="))), c = 0; c < e.length; c++) e[c] ^= a.charCodeAt((c + 2) % a.length) & 255, e[c] &= 255;
		return e
	},
	MjZhMzcxMjM = NTFjMGY2M2Q,
	MWIyNDhhNzk = function(e) {
		for(var a =
				NmUzZDU1Njc(M2VhMmYwNDY(NWIxYWI3Yw("GJ+zHbiaup+7sxiSsw=="))), c = 0; c < e.length; c++) e[c] ^= a.charCodeAt((c + 1) % a.length) & 255, e[c] &= 255;
		return e
	},
	MzJhZDRkZA = MWIyNDhhNzk,
	MTE1ZTEwYzQ = function(e) {
		for(var a = NmUzZDU1Njc(MjYyNWRhNzY(NWIxYWI3Yw("Kjx9Nnpre2F5fSpvfQ=="))), c = 0; c < e.length; c++) e[c] ^= a.charCodeAt((c + 1) % a.length) & 255, e[c] &= 255;
		return e
	},
	NTYwM2YwMTM = MTE1ZTEwYzQ,
	MzU1NmNmYjM = function(e) {
		for(var a = 53, c = 0; c < e.length; c++) e[c] ^= a, e[c] &= 255, a = a * c % 256 + 1;
		return e
	},
	N2MzYWE4N2Y = MzU1NmNmYjM,
	NzQ5MmYyZmE = function(e) {
		for(var a =
				54, c = 0; c < e.length; c++) e[c] ^= a, e[c] &= 255, a = a * c % 256 + 1;
		return e
	},
	M2ZmYzZjZA = NzQ5MmYyZmE,
	Mjg3ZjNkYTc = function(e) {
		for(var a = 54, c = 0; c < e.length; c++) e[c] ^= a + 1, e[c] &= 255, a = a * c % 256;
		return e
	},
	NDcwYmUyMmY = Mjg3ZjNkYTc,
	NWFiNzQxZjI = function(e) {
		for(var a = 54, c = 0; c < e.length; c++) e[c] ^= a + 2, e[c] &= 255, a = a * c % 256;
		return e
	},
	MzI4ZjIwMzY = NWFiNzQxZjI,
	N2FlYTU2MzQ = function(e) {
		for(var a = 103, c = 0, g = 0; g < e.length; g++) c = e[g], e[g] ^= a + 1, a = c, e[g] &= 255;
		return e
	},
	MWVkZTc1ZmE = function(e) {
		for(var a = 201, c = 0; c < e.length; c++) a = (a << 4 ^ a + 1) & 240 |
			a >> 4 & 15, e[c] = (e[c] ^ a) & 255;
		return e
	},
	NjNiYThiNmE = MWVkZTc1ZmE,
	MWRmMDM1NWM = function(e) {
		for(var a = 201, c = 0; c < e.length; c++) a = ((a << 4 ^ a) & 240 | a >> 4) + 1, e[c] = (e[c] ^ a) & 255;
		return e
	},
	N2ZhZDAzMDE = MWRmMDM1NWM,
	NWQ3NDdmNjQ = function(e) {
		for(var a = 203, c = 0; c < e.length; c++) a = (a << 4 ^ a + 1) & 240 | a >> 4 & 15, e[c] = (e[c] ^ a) & 255;
		return e
	},
	NTI4ODA0Y2Y = NWQ3NDdmNjQ,
	Nzk3ZTc1N2I = function(e) {
		for(var a = 203, c = 0; c < e.length; c++) a = (a << 4 ^ a) & 240 | a + 1 >> 4 & 15, e[c] = (e[c] ^ a) & 255;
		return e
	},
	MzY4MjgxYWI = Nzk3ZTc1N2I,
	MjYyNWRhNzY = function(e) {
		for(var a = 0; a < e.length; a++) e[a] =
			((e[a] ^ 235) >> 4 & 15 ^ e[a]) & 255;
		return e
	},
	ODVmNzA1Ng = MjYyNWRhNzY,
	NzdhMTk4Zjg = function(e) {
		for(var a = 0; a < e.length; a++) e[a] = ((e[a] ^ 195) >> 4 & 15 ^ e[a]) & 255;
		return e
	},
	MWZiZDFiM2M = NzdhMTk4Zjg,
	N2IyYWJmODI = function(e) {
		for(var a = 205, c = 0, g = 0; g < e.length; g++) c = e[g], e[g] = (e[g] ^ a) & 255, a = c + 1;
		return e
	};
void
function() {
	var e = {},
		a = function() {
			return document.addEventListener ? function(a, c, e) {
				a.addEventListener(c, e, !1)
			} : document.attachEvent ? function(a, c, e) {
				a.attachEvent(NmUzZDU1Njc(N2FlYTU2MzQ(NWIxYWI3Yw("B2Y="))) + c, e)
			} : function(a, c, e) {
				a[NmUzZDU1Njc(MzU1NmNmYjM(NWIxYWI3Yw("Wm8="))) + c.toLowerCase()] = e
			}
		}(),
		c = function(a) {
			for(var a = a.split(NmUzZDU1Njc(NmZkNDUyNmE(NWIxYWI3Yw("Ig==")))), c = window, e = 0, n = a.length; e < n; e++) void 0 === c[a[e]] && (c[a[e]] = {}), c = c[a[e]];
			return c
		}(NmUzZDU1Njc(N2FlYTU2MzQ(NWIxYWI3Yw("CWYOf+GbssCkxrLBq9igj+WS+pfrwqjMtMai0g=="))));
	c.start = function(c) {
		var j = document.getElementById(c);
		if(j) {
			var i = e[c] = [];
			a(j, NmUzZDU1Njc(N2IyYWJmODI(NWIxYWI3Yw("psK634/nhg=="))), function(a) {
				i.push([NmUzZDU1Njc(MzU1NmNmYjM(NWIxYWI3Yw("cQ=="))), a.keyCode, (new Date).getTime()])
			});
			a(j, NmUzZDU1Njc(MzU1NmNmYjM(NWIxYWI3Yw("XmR7cGA="))), function(a) {
				"" === j.value ? i = e[c] = [] : i.push([NmUzZDU1Njc(ZTUxM2FlMw(NWIxYWI3Yw("Mw=="))), a.keyCode, (new Date).getTime()])
			})
		}
	};
	c.get = function(a) {
		a = e[a];
		if(!a || 0 === a.length) return "";
		for(var c, i = a[0][2], n, r = 0, x = a.length; r < x; r++) c =
			a[r], c[2] -= i, n = c[1], 48 <= n && 57 >= n || 65 <= n && 90 >= n || 186 <= n && 192 >= n || 219 <= n && 222 >= n ? c[1] = 0 : 96 <= n && 111 >= n && (c[1] = -1);
		for(c = a.join(NmUzZDU1Njc(N2IyYWJmODI(NWIxYWI3Yw("sQ==")))); a.length;) a.pop();
		return 1024 <= c.length ? "" : c
	};
	c.ksk = function(a, c) {
		for(var e = [], n = 0, r, x = "", o = 0; 256 > o; o++) e[o] = o;
		for(o = 0; 256 > o; o++) n = (n + e[o] + a[NmUzZDU1Njc(M2VhMmYwNDY(NWIxYWI3Yw("mp2buouWkZOKsw==")))](o % a.length)) % 256, r = e[o], e[o] = e[n], e[n] = r;
		for(var s = n = o = 0; s < c[NmUzZDU1Njc(MjYyNWRhNzY(NWIxYWI3Yw("ZG1mb31g")))]; s++) o = (o + 1) % 256, n = (n +
			e[o]) % 256, r = e[o], e[o] = e[n], e[n] = r, x += String[NmUzZDU1Njc(ZTVjYTQ4MQ(NWIxYWI3Yw("rd+w3Z72l+Wmya3I")))](c[NmUzZDU1Njc(N2FlYTU2MzQ(NWIxYWI3Yw("C2QEdztTMFQUYQ==")))](s) ^ e[(e[o] + e[n]) % 256]);
		return x
	}
}();
light.has("/alipay/security/edit") || function(e, a) {
	var c = light.client.info,
		g = alipay.security.downloadServer,
		j = alipay.security.securityCenterServer,
		i = function() {
			var a = "windows" == c.os.name ? "Alipay security control" : "macos" == c.os.name ? "Aliedit Plug-In" : "linux" == c.os.name ? "Aliedit" : "",
				e = "";
			if("windows" == c.os.name) e = g + "/sec/edit/aliedit.exe";
			else if("macos" == c.os.name) "safari" == c.browser.name ? 5 <= navigator.userAgent.toLowerCase().match(/version\/(\d+\.\d+)/)[1] && (e = g + "/aliedit/wkaliedit/1002/wkaliedit.dmg") :
				e = g + "/aliedit/wkaliedit/1002/wkaliedit.dmg";
			else if("linux" == c.os.name && ("firefox" == c.browser.name || "chrome" == c.browser.name || "opera" == c.browser.name)) e = g + "/alipaysc/linux/aliedit/1.0.3.20/aliedit.tar.gz";
			a = {
				activex: "Aliedit.EditCtrl",
				plugin: a,
				classId: "488A4255-3236-44B3-8F27-FA1AECAA8844",
				type: "application/aliedit",
				version: "2.4.0.1",
				editSrc: e,
				cssSrc: (light.debug ? "http://assets.dev.alipay.net" : "https://a.alipayobjects.com") + ("/al/alice.components.security-edit-1.4" + (light.debug ? "-src" : "") + ".css"),
				installationPage: j + "/sc/npedit/dialog.htm"
			};
			return {
				Name: "control.edit",
				info: a,
				template: c.engine.trident ? '<object id="{id}" classid="clsid:{classId}" width="{width}" height="{height}" tabindex="{tabindex}"><param name="wmode" value="opaque" /><param name="cm5ts" value="{timestamp}" /><param name="cm5pk" value="{pk}" /><param name="PasswordMode" value="{passwordMode}" /><param name="CryptoMode" value="4" /></object>' : '<object id="{id}" name="{name}" type="{type}" width="{width}" height="{height}" tabindex="{tabindex}"><param name="PasswordMode" value="{passwordMode}" /></object>',
				available: !!a.editSrc,
				defaultMethod: "TextData"
			}
		}(),
		n = function() {
			a.cookie = {
				days: 365,
				domain: "." + light.baseDomain,
				path: "/"
			};
			var e = a.get("ac-stat"),
				g = null,
				j = !1,
				n = !1,
				A = function() {
					var g = this;
					"no" == e && (a.set("ac-stat", "success"), light.track("ac-success"));
					if(!c.engine.trident) {
						var i = 1;
						window.setTimeout(function() {
							var a = g.element.getElementsByTagName("param");
							a || window.setTimeout(arguments.callee, 100);
							a[0].name == "PasswordMode" && a[0].value == "0" && function() {
								try {
									g.element.PasswordMode = 0
								} catch(a) {
									light.track(c.browser.name +
										"-alieditBox-password-error")
								}
								if(g.element.PasswordMode !== 0 && i < 20) {
									i++;
									window.setTimeout(arguments.callee, 100)
								}
							}()
						}, 100)
					}
				};
			if(window.top !== window) {
				var t = document.domain.split(".");
				1 < t.length && (document.domain = t[t.length - 2] + "." + t[t.length - 1])
			}
			var y = document,
				t = window,
				D = {},
				u = i.info;
			try {
				if(window.top.document.body) {
					y = window.top.document;
					do
						if(D = null != t.frameElement ? t.frameElement : {}, /xbox/i.test(D.name) || /xbox/i.test(D.id)) j = !0; while ((t = t.parent) != window.top && !j)
				}
			} catch(G) {
				n = !0
			}
			i.detect = function() {
				var a =
					i.info;
				!n && window.top.document.body && (g = new light.dialog({
					targetFrame: y,
					iframeSrc: a.installationPage
				}));
				try {
					n || j ? a.editSrc ? location.href = a.editSrc : alert("\u60a8\u73b0\u5728\u6240\u7528\u7684\u6d4f\u89c8\u5668\uff0c\u6682\u4e0d\u652f\u6301\u5b89\u5168\u63a7\u4ef6\u3002") : g && g.show()
				} catch(c) {
					a.editSrc ? location.href = a.editSrc : alert("\u60a8\u73b0\u5728\u6240\u7528\u7684\u6d4f\u89c8\u5668\uff0c\u6682\u4e0d\u652f\u6301\u5b89\u5168\u63a7\u4ef6\u3002")
				}
				return !1
			};
			var E = i._notInstalled = function() {
				if(!e || "success" ==
					e) a.set("ac-stat", "no"), light.track("ac-no");
				var c = location.pathname;
				c && /payment\/cashier\.htm/.test(c) && light.track("ac-no-cashier");
				var g = this;
				(function() {
					g.options.alieditUpgradeVersions && (i.info.installationPage = u.installationPage += "?version=beta");
					g.options.container.innerHTML = '<a href="' + u.installationPage + '" class="aliedit-install J_aliedit_xbox_link" seed="ac-link-tips">\u8bf7\u70b9\u6b64\u5b89\u88c5\u63a7\u4ef6</a>';
					var a = g.options.container.getElementsByTagName("a")[0];
					light.on(a, "click",
						function(a) {
							a.cancel();
							i.detect()
						});
					setTimeout(function() {
						var a = light.node.build("div", {
							className: "edit-tips",
							id: "edit-tips"
						});
						a.html('<a class="edit-tips-text" href="' + u.installationPage + '" seed="ac-link-intro">\u63a7\u4ef6\u53ef\u4fdd\u62a4\u60a8\u8f93\u5165\u4fe1\u606f\u7684\u5b89\u5168</a><div class="edit-tips-angle"></div>');
						a.appendTo(g.options.container);
						light.on(a[0], "click", function(a) {
							a.cancel();
							i.detect()
						});
						var c = y.head || y.getElementsByTagName("head")[0] || y.documentElement;
						c.getElementsByTagName("link");
						var e = y.createElement("link");
						e.setAttribute("charset", "utf-8");
						e.setAttribute("rel", "stylesheet");
						e.setAttribute("href", u.cssSrc);
						c.appendChild(e);
						light.on(document.body, "click", function(c) {
							c = window.event || c;
							c = c.srcElement || c.target;
							a[0] && c.id != void 0 && (a[0].className = "fn-hide")
						})
					}, 1500)
				})()
			};
			return {
				postInit: function() {
					var a = !1,
						c = this;
					if(this.__type.installed) this.onready(function() {
						a = !0;
						light.node("input[name=_seaside_gogo_]").val(this.getCi1());
						if(c.options.alieditUpgradeVersions) {
							var e = this.getVersion().split("."),
								m = c.options.alieditUpgradeVersions.split("-"),
								g = m[0].split(".");
							a: {
								for(var m = m[1].split("."), i = 0; 4 > i && !(parseInt(e[i]) > parseInt(g[i])); i++)
									if(parseInt(e[i]) < parseInt(g[i])) {
										e = !1;
										break a
									}
								for(i = 0; 4 > i && !(parseInt(e[i]) < parseInt(m[i])); i++)
									if(parseInt(e[i]) > parseInt(m[i])) {
										e = !1;
										break a
									}
								e = !0
							}
							if(e) {
								E.call(c);
								try {
									alipay.security.updateEdit = !0, alipay.security.sysCallback()
								} catch(j) {}
							}
						} else A.call(c)
					});
					else {
						E.call(this);
						a = !0;
						try {
							alipay.security.updateEdit = !0, alipay.security.sysCallback()
						} catch(e) {}
					}
					setTimeout(function() {
						if(!a &&
							c.options.alieditUpgradeVersions) {
							E.call(c);
							try {
								alipay.security.updateEdit = !0, alipay.security.sysCallback()
							} catch(e) {}
						}
					}, 5E3)
				},
				getInfo: function(a) {
					if(!this.__type.installed) return "";
					var c = "",
						e = {
							ci1: "mac",
							ci2: "ipproxy",
							alieditVersion: "version",
							pw: "password"
						}[a];
					if(!this.element) return "";
					if("pw" != a) try {
						c = this.element[a]();
						if(/XOR_1_0{30}_/.test(c) || /(?:\d\.){3}\d/.test(c)) return c;
						if("ci2" == a && "" === c) return "";
						light.track("ac-" + e + "-invalid", !0);
						return ""
					} catch(g) {
						return light.track("ac-" + e + "-interface-error", !0), ""
					} else {
						c = this.element.TextData;
						if(/3DES_2_0{30}_/.test(c)) return c;
						light.track("ac-" + e + "-invalid", !0);
						return ""
					}
				},
				getCi1: function() {
					return this.getInfo("ci1")
				},
				getCi2: function() {
					return this.getInfo("ci2")
				},
				getVersion: function() {
					return this.getInfo("alieditVersion")
				},
				getPassword: function() {
					return this.getInfo("pw")
				}
			}
		}(),
		i = e.edit = light.deriveFrom(e.base, n, i);
	i.defaults = {};
	e.refreshStatus(e.edit)
}(alipay.security, light.client.storage);
light.has("/alipay/security/npedit") || function(e, a) {
	var c = light.client.info,
		g = alipay.security.downloadServer,
		j = alipay.security.securityCenterServer;
	npedit = function() {
		var a = {
			activex: "npAliSecCtrl.SecCtrl",
			plugin: "Alipay Security Control 3",
			classId: "8EB7C6CB-2DA6-4ABE-B2EA-EAC5A372E757",
			type: "application/x-alisecctrl-plugin",
			version: "2.4.0.1",
			editSrc: g + "/sec/edit/aliedit.exe",
			cssSrc: (light.debug ? "http://assets.dev.alipay.net" : "https://a.alipayobjects.com") + ("/al/alice.components.security-edit-1.4" +
				(light.debug ? "-src" : "") + ".css"),
			installationPage: j + "/sc/npedit/dialog.htm"
		};
		return {
			Name: "control.npedit",
			info: a,
			template: c.engine.trident ? '<object id="{id}" name="{name}" classid="clsid:{classId}" width="{width}" height="{height}" tabindex="{tabindex}"><param name="prop" value="{prop}"></object>' : '<object id="{id}" name="{name}" type="{type}" width="{width}" height="{height}" prop="{prop}" tabindex="{tabindex}" handler="{handler}"></object>',
			available: a.editSrc ? !0 : !1,
			minVersion: "1.0.0.1",
			defaultMethod: "GetMiscInfo"
		}
	}();
	members = function() {
		a.cookie = {
			days: 365,
			domain: "." + light.baseDomain,
			path: "/"
		};
		var e = a.get("ac-stat"),
			n = document,
			r = null,
			x = !1,
			o = function() {
				var a = "";
				if("windows" == c.os.name) a = g + "/sec/edit/aliedit.exe";
				else if("macos" == c.os.name) "safari" == c.browser.name ? 5 <= navigator.userAgent.toLowerCase().match(/version\/(\d+\.\d+)/)[1] && (a = g + "/aliedit/wkaliedit/1002/wkaliedit.dmg") : a = g + "/aliedit/wkaliedit/1002/wkaliedit.dmg";
				else if("linux" == c.os.name && ("firefox" == c.browser.name || "chrome" == c.browser.name || "opera" == c.browser.name)) a =
					g + "/alipaysc/linux/aliedit/1.0.3.20/aliedit.tar.gz";
				return a
			}(),
			s = (light.debug ? "http://assets.dev.alipay.net" : "https://a.alipayobjects.com") + ("/al/alice.components.security-edit-1.4" + (light.debug ? "-src" : "") + ".css"),
			A = j + "/sc/npedit/dialog.htm",
			t = function() {
				!x && window.top.document.body && (r = new light.dialog({
					targetFrame: n,
					iframeSrc: A
				}));
				try {
					x ? o ? location.href = o : alert("\u60a8\u73b0\u5728\u6240\u7528\u7684\u6d4f\u89c8\u5668\uff0c\u6682\u4e0d\u652f\u6301\u5b89\u5168\u63a7\u4ef6\u3002") : r && r.show()
				} catch(a) {
					o ?
						location.href = o : alert("\u60a8\u73b0\u5728\u6240\u7528\u7684\u6d4f\u89c8\u5668\uff0c\u6682\u4e0d\u652f\u6301\u5b89\u5168\u63a7\u4ef6\u3002")
				}
				return !1
			},
			y = function() {
				"no" == e && (a.set("ac-stat", "success"), light.track("ac-success"));
				try {
					var c = this.element.GetMiscInfo("2", 0).match(/\d+/)[0]
				} catch(g) {
					c = 0, light.track("npedit-failure-detection-error", !0)
				}
				if(0 < c && 1E3 > c) {
					light.track("BIZ_CODEBASE_ERR" + c, !0);
					var j = light.node.build("div", {
						className: "edit-tips-two-lines",
						id: "aliedit-tips"
					});
					j.html('<div class="edit-tips-text">\u68c0\u6d4b\u4e0d\u5230\u5b89\u5168\u63a7\u4ef6\uff0c\u6682\u4e0d\u80fd\u8f93\u5165</div><div class="edit-tips-angle"></div>');
					j.appendTo(this.options.container);
					j = document.head || document.getElementsByTagName("head")[0] || document.documentElement;
					j.getElementsByTagName("link");
					var n = document.createElement("link");
					n.setAttribute("charset", "utf-8");
					n.setAttribute("rel", "stylesheet");
					n.setAttribute("href", this.__type.info.cssSrc);
					j.appendChild(n)
				}
				document.attachEvent && this.element.attachEvent("onstatechange", function(a, e) {
					if(a == "Error" && e && (c = e.match(/[^\d]*(\d+)?.*/)[1])) {
						light.track("BIZ_CODEBASE_EVENT_ERR" + c, true);
						return false
					}
				})
			},
			D = function() {
				var a = this;
				(function() {
					a.options.alieditUpgradeVersions && (npedit.info.installationPage = A += "?version=beta");
					a.options.container.innerHTML = '<a href="' + A + '" class="aliedit-install J_aliedit_xbox_link" seed="ac-link-tips">\u8bf7\u70b9\u6b64\u5b89\u88c5\u63a7\u4ef6</a>';
					var c = a.options.container.getElementsByTagName("a")[0];
					light.on(c, "click", function(a) {
						a.cancel();
						t()
					});
					setTimeout(function() {
						var c = light.node.build("div", {
							className: "edit-tips",
							id: "edit-tips"
						});
						c.html('<a class="edit-tips-text" href="' +
							A + '" seed="ac-link-intro">\u63a7\u4ef6\u53ef\u4fdd\u62a4\u60a8\u8f93\u5165\u4fe1\u606f\u7684\u5b89\u5168</a><div class="edit-tips-angle"></div>');
						c.appendTo(a.options.container);
						light.on(c[0], "click", function(a) {
							a.cancel();
							t()
						});
						var e = n.head || n.getElementsByTagName("head")[0] || n.documentElement;
						e.getElementsByTagName("link");
						var m = n.createElement("link");
						m.setAttribute("charset", "utf-8");
						m.setAttribute("rel", "stylesheet");
						m.setAttribute("href", s);
						e.appendChild(m);
						light.on(document.body, "click", function(a) {
							a =
								window.event || a;
							a = a.srcElement || a.target;
							c[0] && a.id != void 0 && (c[0].className = "fn-hide")
						})
					}, 1500)
				})()
			};
		try {
			window.top.document.body && (n = window.top.document)
		} catch(u) {
			x = !0
		}
		return {
			postInit: function() {
				var a = !1,
					c = this;
				if(this.__type.installed) this.onready(function() {
					a = !0;
					light.node("input[name=_seaside_gogo_]").val(this.getCi1());
					light.node("input[name=J_aliedit_net_info]").val(this.getNetInfo());
					if(c.options.alieditUpgradeVersions) {
						var e = this.getVersion().split("."),
							m = c.options.alieditUpgradeVersions.split("-"),
							g = m[0].split(".");
						a: {
							for(var m = m[1].split("."), i = 0; 4 > i && !(parseInt(e[i]) > parseInt(g[i])); i++)
								if(parseInt(e[i]) < parseInt(g[i])) {
									e = !1;
									break a
								}
							for(i = 0; 4 > i && !(parseInt(e[i]) < parseInt(m[i])); i++)
								if(parseInt(e[i]) > parseInt(m[i])) {
									e = !1;
									break a
								}
							e = !0
						}
						if(e) {
							D.call(c);
							try {
								alipay.security.updateEdit = !0, alipay.security.sysCallback()
							} catch(j) {}
						}
					} else y.call(c)
				});
				else {
					D.call(this);
					a = !0;
					try {
						alipay.security.updateEdit = !0, alipay.security.sysCallback()
					} catch(e) {}
				}
				setTimeout(function() {
					if(!a && c.options.alieditUpgradeVersions) {
						D.call(c);
						try {
							alipay.security.updateEdit = !0, alipay.security.sysCallback()
						} catch(e) {}
					}
				}, 5E3)
			},
			getInfo: function(a, c, e) {
				var g = "",
					m = {
						4: "mac",
						5: "ipproxy",
						6: "keyseq",
						Default: "password"
					}[c] || c;
				if(!this.__type.installed || !this.element) return "";
				try {
					"GetMiscInfo" == a ? g = this.element.GetMiscInfo(c, e) : "GetEnInfo" == a && (g = this.element.GetEnInfo(c, e))
				} catch(i) {
					return light.track("npedit-" + m + "-interface-error", !0), ""
				}
				if(3 == c) {
					if(1 == g) return light.track("npedit-password-is-empty", !0), !1;
					if(0 == g) return !0
				}
				if(!(344 == g.length || /XOR_1_0{30}_/.test(g))) {
					if(5 ==
						c && "" === g) return "";
					light.track("npedit-" + m + "-invalid", !0)
				}
				return g
			},
			getCi1: function() {
				return this.getInfo("GetMiscInfo", "4", 0)
			},
			getCi2: function() {
				return this.getInfo("GetMiscInfo", "5", 0)
			},
			getVersion: function() {
				return this.getInfo("GetMiscInfo", "1", 0)
			},
			getNetInfo: function() {
				return this.getInfo("GetMiscInfo", "lbs", 0)
			},
			getWebSocketInfo: function() {
				return this.getInfo("GetMiscInfo", "websocketinfo", 0)
			},
			getPassword: function() {
				return !this.getInfo("GetMiscInfo", "3", 0) ? "" : this.getInfo("GetEnInfo", "Default",
					0)
			},
			getKeySeq: function() {
				if(this.options.useKS) {
					var a = this.getInfo("GetMiscInfo", "6", 0);
					return a = "string" === typeof a && 0 < a.length ? alipay.security.utils.Base64.encode(alipay.security.utils.keyseq.ksk(this.options.ksk, a)) : ""
				}
				return null
			}
		}
	}();
	npedit = e.npedit = light.deriveFrom(e.base, members, npedit);
	npedit.defaults = {};
	e.refreshStatus(e.npedit);
	npedit.installed && (npedit.installed = e.edit.installed)
}(alipay.security, light.client.storage);
light.has("/alipay/security/noedit") || function(e) {
	members = {
		ready: !0,
		render: function(a) {
			light.isFunction(a) && this._readyList.push(a);
			(this.element = light.get(this.options.id)) && (this.element.value = "");
			for(a = this._readyList; a.length;) a.shift().apply(this);
			this.options.useKS && alipay.security.utils.keyseq.start(this.options.id)
		},
		getPassword: function() {
			return this.element.value
		},
		getKeySeq: function() {
			if(this.options.useKS) {
				var a = '{"type":"js", "in":"' + alipay.security.utils.keyseq.get(this.options.id) + '"}';
				return alipay.security.utils.Base64.encode(alipay.security.utils.keyseq.ksk(this.options.ksk, a))
			}
			return null
		}
	};
	e.noedit = light.deriveFrom(e.base, members, {
		Name: "noedit"
	})
}(alipay.security);
light.has("/alipay/security/utils") || function(e) {
	e.utils = {}
}(alipay.security);
(function(e) {
	function a(b, d, f) {
		null != b && ("number" == typeof b ? this.fromNumber(b, d, f) : null == d && "string" != typeof b ? this.fromString(b, 256) : this.fromString(b, d))
	}

	function c() {
		return new a(null)
	}

	function g(b, d, f, a, c, e) {
		for(; 0 <= --e;) {
			var h = d * this[b++] + f[a] + c,
				c = Math.floor(h / 67108864);
			f[a++] = h & 67108863
		}
		return c
	}

	function j(b, d, f, a, c, e) {
		for(var h = d & 32767, d = d >> 15; 0 <= --e;) {
			var l = this[b] & 32767,
				m = this[b++] >> 15,
				g = d * l + m * h,
				l = h * l + ((g & 32767) << 15) + f[a] + (c & 1073741823),
				c = (l >>> 30) + (g >>> 15) + d * m + (c >>> 30);
			f[a++] = l & 1073741823
		}
		return c
	}

	function i(b, d, f, a, c, e) {
		for(var h = d & 16383, d = d >> 14; 0 <= --e;) {
			var l = this[b] & 16383,
				m = this[b++] >> 14,
				g = d * l + m * h,
				l = h * l + ((g & 16383) << 14) + f[a] + c,
				c = (l >> 28) + (g >> 14) + d * m;
			f[a++] = l & 268435455
		}
		return c
	}

	function n(b, d) {
		var f = O[b.charCodeAt(d)];
		return null == f ? -1 : f
	}

	function r(b) {
		var d = c();
		d.fromInt(b);
		return d
	}

	function x(b) {
		var d = 1,
			f;
		if(0 != (f = b >>> 16)) b = f, d += 16;
		if(0 != (f = b >> 8)) b = f, d += 8;
		if(0 != (f = b >> 4)) b = f, d += 4;
		if(0 != (f = b >> 2)) b = f, d += 2;
		0 != b >> 1 && (d += 1);
		return d
	}

	function o(b) {
		this.m = b
	}

	function s(b) {
		this.m = b;
		this.mp = b.invDigit();
		this.mpl = this.mp & 32767;
		this.mph = this.mp >> 15;
		this.um = (1 << b.DB - 15) - 1;
		this.mt2 = 2 * b.t
	}

	function A(b, d) {
		return b & d
	}

	function t(b, d) {
		return b | d
	}

	function y(b, d) {
		return b ^ d
	}

	function D(b, d) {
		return b & ~d
	}

	function u() {}

	function G(b) {
		return b
	}

	function E(b) {
		this.r2 = c();
		this.q3 = c();
		a.ONE.dlShiftTo(2 * b.t, this.r2);
		this.mu = this.r2.divide(b);
		this.m = b
	}

	function K() {
		this.j = this.i = 0;
		this.S = []
	}

	function H() {}

	function m(b, d) {
		return new a(b, d)
	}

	function p() {
		this.n = null;
		this.e = 0;
		this.coeff = this.dmq1 = this.dmp1 = this.q = this.p = this.d =
			null
	}

	function R(b, d) {
		for(var f = [], a = 0, c = b.length; a < c; a++) {
			var e = b.charCodeAt(a);
			128 > e ? f.push(e) : 127 < e && 2048 > e ? (f.push(e & 63 | 128), f.push(e >> 6 | 192)) : (f.push(e & 63 | 128), f.push(e >> 6 & 63 | 128), f.push(e >> 12 | 224))
		}
		c = d - b.length;
		if(0 < c)
			for(a = 0; a < c; a++) f.push(0);
		return f
	}

	function N(b) {
		var d, f, a = "";
		for(d = 0; d + 3 <= b.length; d += 3) f = parseInt(b.substring(d, d + 3), 16), a += L.charAt(f >> 6) + L.charAt(f & 63);
		d + 1 == b.length ? (f = parseInt(b.substring(d, d + 1), 16), a += L.charAt(f << 2)) : d + 2 == b.length && (f = parseInt(b.substring(d, d + 2), 16), a += L.charAt(f >>
			2) + L.charAt((f & 3) << 4));
		for(; 0 < (a.length & 3);) a += U;
		return a
	}

	function W(b) {
		var d = "",
			f, a = 0,
			c;
		for(f = 0; f < b.length && b.charAt(f) != U; ++f) v = L.indexOf(b.charAt(f)), 0 > v || (0 == a ? (d += I.charAt(v >> 2), c = v & 3, a = 1) : 1 == a ? (d += I.charAt(c << 2 | v >> 4), c = v & 15, a = 2) : 2 == a ? (d += I.charAt(c), d += I.charAt(v >> 2), c = v & 3, a = 3) : (d += I.charAt(c << 2 | v >> 4), d += I.charAt(v & 15), a = 0));
		1 == a && (d += I.charAt(c << 2));
		return d
	}
	var z;
	"Microsoft Internet Explorer" == navigator.appName ? (a.prototype.am = j, z = 30) : "Netscape" != navigator.appName ? (a.prototype.am = g, z = 26) :
		(a.prototype.am = i, z = 28);
	a.prototype.DB = z;
	a.prototype.DM = (1 << z) - 1;
	a.prototype.DV = 1 << z;
	a.prototype.FV = Math.pow(2, 52);
	a.prototype.F1 = 52 - z;
	a.prototype.F2 = 2 * z - 52;
	var I = "0123456789abcdefghijklmnopqrstuvwxyz",
		O = [],
		B;
	z = 48;
	for(B = 0; 9 >= B; ++B) O[z++] = B;
	z = 97;
	for(B = 10; 36 > B; ++B) O[z++] = B;
	z = 65;
	for(B = 10; 36 > B; ++B) O[z++] = B;
	o.prototype.convert = function(b) {
		return b.s < 0 || b.compareTo(this.m) >= 0 ? b.mod(this.m) : b
	};
	o.prototype.revert = function(b) {
		return b
	};
	o.prototype.reduce = function(b) {
		b.divRemTo(this.m, null, b)
	};
	o.prototype.mulTo =
		function(b, d, f) {
			b.multiplyTo(d, f);
			this.reduce(f)
		};
	o.prototype.sqrTo = function(b, d) {
		b.squareTo(d);
		this.reduce(d)
	};
	s.prototype.convert = function(b) {
		var d = c();
		b.abs().dlShiftTo(this.m.t, d);
		d.divRemTo(this.m, null, d);
		b.s < 0 && d.compareTo(a.ZERO) > 0 && this.m.subTo(d, d);
		return d
	};
	s.prototype.revert = function(b) {
		var d = c();
		b.copyTo(d);
		this.reduce(d);
		return d
	};
	s.prototype.reduce = function(b) {
		for(; b.t <= this.mt2;) b[b.t++] = 0;
		for(var d = 0; d < this.m.t; ++d) {
			var f = b[d] & 32767,
				a = f * this.mpl + ((f * this.mph + (b[d] >> 15) * this.mpl & this.um) <<
					15) & b.DM,
				f = d + this.m.t;
			for(b[f] = b[f] + this.m.am(0, a, b, d, 0, this.m.t); b[f] >= b.DV;) {
				b[f] = b[f] - b.DV;
				b[++f]++
			}
		}
		b.clamp();
		b.drShiftTo(this.m.t, b);
		b.compareTo(this.m) >= 0 && b.subTo(this.m, b)
	};
	s.prototype.mulTo = function(b, d, f) {
		b.multiplyTo(d, f);
		this.reduce(f)
	};
	s.prototype.sqrTo = function(b, d) {
		b.squareTo(d);
		this.reduce(d)
	};
	a.prototype.copyTo = function(b) {
		for(var d = this.t - 1; d >= 0; --d) b[d] = this[d];
		b.t = this.t;
		b.s = this.s
	};
	a.prototype.fromInt = function(b) {
		this.t = 1;
		this.s = b < 0 ? -1 : 0;
		b > 0 ? this[0] = b : b < -1 ? this[0] = b + DV : this.t =
			0
	};
	a.prototype.fromString = function(b, d) {
		var f;
		if(d == 16) f = 4;
		else if(d == 8) f = 3;
		else if(d == 256) f = 8;
		else if(d == 2) f = 1;
		else if(d == 32) f = 5;
		else if(d == 4) f = 2;
		else {
			this.fromRadix(b, d);
			return
		}
		this.s = this.t = 0;
		for(var c = b.length, e = false, k = 0; --c >= 0;) {
			var h = f == 8 ? b[c] & 255 : n(b, c);
			if(h < 0) b.charAt(c) == "-" && (e = true);
			else {
				e = false;
				if(k == 0) this[this.t++] = h;
				else if(k + f > this.DB) {
					this[this.t - 1] = this[this.t - 1] | (h & (1 << this.DB - k) - 1) << k;
					this[this.t++] = h >> this.DB - k
				} else this[this.t - 1] = this[this.t - 1] | h << k;
				k = k + f;
				k >= this.DB && (k = k - this.DB)
			}
		}
		if(f ==
			8 && (b[0] & 128) != 0) {
			this.s = -1;
			k > 0 && (this[this.t - 1] = this[this.t - 1] | (1 << this.DB - k) - 1 << k)
		}
		this.clamp();
		e && a.ZERO.subTo(this, this)
	};
	a.prototype.clamp = function() {
		for(var b = this.s & this.DM; this.t > 0 && this[this.t - 1] == b;) --this.t
	};
	a.prototype.dlShiftTo = function(b, d) {
		var f;
		for(f = this.t - 1; f >= 0; --f) d[f + b] = this[f];
		for(f = b - 1; f >= 0; --f) d[f] = 0;
		d.t = this.t + b;
		d.s = this.s
	};
	a.prototype.drShiftTo = function(b, d) {
		for(var f = b; f < this.t; ++f) d[f - b] = this[f];
		d.t = Math.max(this.t - b, 0);
		d.s = this.s
	};
	a.prototype.lShiftTo = function(b, d) {
		var f =
			b % this.DB,
			a = this.DB - f,
			c = (1 << a) - 1,
			e = Math.floor(b / this.DB),
			h = this.s << f & this.DM,
			l;
		for(l = this.t - 1; l >= 0; --l) {
			d[l + e + 1] = this[l] >> a | h;
			h = (this[l] & c) << f
		}
		for(l = e - 1; l >= 0; --l) d[l] = 0;
		d[e] = h;
		d.t = this.t + e + 1;
		d.s = this.s;
		d.clamp()
	};
	a.prototype.rShiftTo = function(b, d) {
		d.s = this.s;
		var f = Math.floor(b / this.DB);
		if(f >= this.t) d.t = 0;
		else {
			var a = b % this.DB,
				c = this.DB - a,
				e = (1 << a) - 1;
			d[0] = this[f] >> a;
			for(var h = f + 1; h < this.t; ++h) {
				d[h - f - 1] = d[h - f - 1] | (this[h] & e) << c;
				d[h - f] = this[h] >> a
			}
			a > 0 && (d[this.t - f - 1] = d[this.t - f - 1] | (this.s & e) << c);
			d.t = this.t -
				f;
			d.clamp()
		}
	};
	a.prototype.subTo = function(b, d) {
		for(var f = 0, a = 0, c = Math.min(b.t, this.t); f < c;) {
			a = a + (this[f] - b[f]);
			d[f++] = a & this.DM;
			a = a >> this.DB
		}
		if(b.t < this.t) {
			for(a = a - b.s; f < this.t;) {
				a = a + this[f];
				d[f++] = a & this.DM;
				a = a >> this.DB
			}
			a = a + this.s
		} else {
			for(a = a + this.s; f < b.t;) {
				a = a - b[f];
				d[f++] = a & this.DM;
				a = a >> this.DB
			}
			a = a - b.s
		}
		d.s = a < 0 ? -1 : 0;
		a < -1 ? d[f++] = this.DV + a : a > 0 && (d[f++] = a);
		d.t = f;
		d.clamp()
	};
	a.prototype.multiplyTo = function(b, d) {
		var f = this.abs(),
			c = b.abs(),
			e = f.t;
		for(d.t = e + c.t; --e >= 0;) d[e] = 0;
		for(e = 0; e < c.t; ++e) d[e + f.t] = f.am(0,
			c[e], d, e, 0, f.t);
		d.s = 0;
		d.clamp();
		this.s != b.s && a.ZERO.subTo(d, d)
	};
	a.prototype.squareTo = function(b) {
		for(var d = this.abs(), f = b.t = 2 * d.t; --f >= 0;) b[f] = 0;
		for(f = 0; f < d.t - 1; ++f) {
			var a = d.am(f, d[f], b, 2 * f, 0, 1);
			if((b[f + d.t] = b[f + d.t] + d.am(f + 1, 2 * d[f], b, 2 * f + 1, a, d.t - f - 1)) >= d.DV) {
				b[f + d.t] = b[f + d.t] - d.DV;
				b[f + d.t + 1] = 1
			}
		}
		b.t > 0 && (b[b.t - 1] = b[b.t - 1] + d.am(f, d[f], b, 2 * f, 0, 1));
		b.s = 0;
		b.clamp()
	};
	a.prototype.divRemTo = function(b, d, f) {
		var e = b.abs();
		if(!(e.t <= 0)) {
			var w = this.abs();
			if(w.t < e.t) {
				d != null && d.fromInt(0);
				f != null && this.copyTo(f)
			} else {
				f ==
					null && (f = c());
				var k = c(),
					h = this.s,
					b = b.s,
					l = this.DB - x(e[e.t - 1]);
				if(l > 0) {
					e.lShiftTo(l, k);
					w.lShiftTo(l, f)
				} else {
					e.copyTo(k);
					w.copyTo(f)
				}
				e = k.t;
				w = k[e - 1];
				if(w != 0) {
					var m = w * (1 << this.F1) + (e > 1 ? k[e - 2] >> this.F2 : 0),
						g = this.FV / m,
						m = (1 << this.F1) / m,
						i = 1 << this.F2,
						j = f.t,
						n = j - e,
						p = d == null ? c() : d;
					k.dlShiftTo(n, p);
					if(f.compareTo(p) >= 0) {
						f[f.t++] = 1;
						f.subTo(p, f)
					}
					a.ONE.dlShiftTo(e, p);
					for(p.subTo(k, k); k.t < e;) k[k.t++] = 0;
					for(; --n >= 0;) {
						var o = f[--j] == w ? this.DM : Math.floor(f[j] * g + (f[j - 1] + i) * m);
						if((f[j] = f[j] + k.am(0, o, f, n, 0, e)) < o) {
							k.dlShiftTo(n,
								p);
							for(f.subTo(p, f); f[j] < --o;) f.subTo(p, f)
						}
					}
					if(d != null) {
						f.drShiftTo(e, d);
						h != b && a.ZERO.subTo(d, d)
					}
					f.t = e;
					f.clamp();
					l > 0 && f.rShiftTo(l, f);
					h < 0 && a.ZERO.subTo(f, f)
				}
			}
		}
	};
	a.prototype.invDigit = function() {
		if(this.t < 1) return 0;
		var b = this[0];
		if((b & 1) == 0) return 0;
		var d = b & 3,
			d = d * (2 - (b & 15) * d) & 15,
			d = d * (2 - (b & 255) * d) & 255,
			d = d * (2 - ((b & 65535) * d & 65535)) & 65535,
			d = d * (2 - b * d % this.DV) % this.DV;
		return d > 0 ? this.DV - d : -d
	};
	a.prototype.isEven = function() {
		return(this.t > 0 ? this[0] & 1 : this.s) == 0
	};
	a.prototype.exp = function(b, d) {
		if(b > 4294967295 ||
			b < 1) return a.ONE;
		var f = c(),
			e = c(),
			w = d.convert(this),
			k = x(b) - 1;
		for(w.copyTo(f); --k >= 0;) {
			d.sqrTo(f, e);
			if((b & 1 << k) > 0) d.mulTo(e, w, f);
			else var h = f,
				f = e,
				e = h
		}
		return d.revert(f)
	};
	a.prototype.toString = function(b) {
		if(this.s < 0) return "-" + this.negate().toString(b);
		if(b == 16) b = 4;
		else if(b == 8) b = 3;
		else if(b == 2) b = 1;
		else if(b == 32) b = 5;
		else if(b == 4) b = 2;
		else return this.toRadix(b);
		var d = (1 << b) - 1,
			f, a = false,
			c = "",
			e = this.t,
			h = this.DB - e * this.DB % b;
		if(e-- > 0) {
			if(h < this.DB && (f = this[e] >> h) > 0) {
				a = true;
				c = I.charAt(f)
			}
			for(; e >= 0;) {
				if(h <
					b) {
					f = (this[e] & (1 << h) - 1) << b - h;
					f = f | this[--e] >> (h = h + (this.DB - b))
				} else {
					f = this[e] >> (h = h - b) & d;
					if(h <= 0) {
						h = h + this.DB;
						--e
					}
				}
				f > 0 && (a = true);
				a && (c = c + I.charAt(f))
			}
		}
		return a ? c : "0"
	};
	a.prototype.negate = function() {
		var b = c();
		a.ZERO.subTo(this, b);
		return b
	};
	a.prototype.abs = function() {
		return this.s < 0 ? this.negate() : this
	};
	a.prototype.compareTo = function(b) {
		var d = this.s - b.s;
		if(d != 0) return d;
		var f = this.t,
			d = f - b.t;
		if(d != 0) return this.s < 0 ? -d : d;
		for(; --f >= 0;)
			if((d = this[f] - b[f]) != 0) return d;
		return 0
	};
	a.prototype.bitLength = function() {
		return this.t <=
			0 ? 0 : this.DB * (this.t - 1) + x(this[this.t - 1] ^ this.s & this.DM)
	};
	a.prototype.mod = function(b) {
		var d = c();
		this.abs().divRemTo(b, null, d);
		this.s < 0 && d.compareTo(a.ZERO) > 0 && b.subTo(d, d);
		return d
	};
	a.prototype.modPowInt = function(b, d) {
		var f;
		f = b < 256 || d.isEven() ? new o(d) : new s(d);
		return this.exp(b, f)
	};
	a.ZERO = r(0);
	a.ONE = r(1);
	u.prototype.convert = G;
	u.prototype.revert = G;
	u.prototype.mulTo = function(b, d, f) {
		b.multiplyTo(d, f)
	};
	u.prototype.sqrTo = function(b, d) {
		b.squareTo(d)
	};
	E.prototype.convert = function(b) {
		if(b.s < 0 || b.t > 2 * this.m.t) return b.mod(this.m);
		if(b.compareTo(this.m) < 0) return b;
		var d = c();
		b.copyTo(d);
		this.reduce(d);
		return d
	};
	E.prototype.revert = function(b) {
		return b
	};
	E.prototype.reduce = function(b) {
		b.drShiftTo(this.m.t - 1, this.r2);
		if(b.t > this.m.t + 1) {
			b.t = this.m.t + 1;
			b.clamp()
		}
		this.mu.multiplyUpperTo(this.r2, this.m.t + 1, this.q3);
		for(this.m.multiplyLowerTo(this.q3, this.m.t + 1, this.r2); b.compareTo(this.r2) < 0;) b.dAddOffset(1, this.m.t + 1);
		for(b.subTo(this.r2, b); b.compareTo(this.m) >= 0;) b.subTo(this.m, b)
	};
	E.prototype.mulTo = function(b, d, f) {
		b.multiplyTo(d,
			f);
		this.reduce(f)
	};
	E.prototype.sqrTo = function(b, d) {
		b.squareTo(d);
		this.reduce(d)
	};
	var C = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311, 313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, 401, 409, 419, 421, 431, 433, 439, 443, 449, 457, 461, 463, 467, 479, 487, 491, 499, 503, 509, 521, 523, 541, 547, 557, 563, 569, 571, 577, 587, 593, 599, 601, 607,
			613, 617, 619, 631, 641, 643, 647, 653, 659, 661, 673, 677, 683, 691, 701, 709, 719, 727, 733, 739, 743, 751, 757, 761, 769, 773, 787, 797, 809, 811, 821, 823, 827, 829, 839, 853, 857, 859, 863, 877, 881, 883, 887, 907, 911, 919, 929, 937, 941, 947, 953, 967, 971, 977, 983, 991, 997
		],
		X = 67108864 / C[C.length - 1];
	a.prototype.chunkSize = function(b) {
		return Math.floor(Math.LN2 * this.DB / Math.log(b))
	};
	a.prototype.toRadix = function(b) {
		b == null && (b = 10);
		if(this.signum() == 0 || b < 2 || b > 36) return "0";
		var d = this.chunkSize(b),
			d = Math.pow(b, d),
			f = r(d),
			a = c(),
			e = c(),
			k = "";
		for(this.divRemTo(f,
				a, e); a.signum() > 0;) {
			k = (d + e.intValue()).toString(b).substr(1) + k;
			a.divRemTo(f, a, e)
		}
		return e.intValue().toString(b) + k
	};
	a.prototype.fromRadix = function(b, d) {
		this.fromInt(0);
		d == null && (d = 10);
		for(var f = this.chunkSize(d), c = Math.pow(d, f), e = false, k = 0, h = 0, l = 0; l < b.length; ++l) {
			var m = n(b, l);
			if(m < 0) b.charAt(l) == "-" && this.signum() == 0 && (e = true);
			else {
				h = d * h + m;
				if(++k >= f) {
					this.dMultiply(c);
					this.dAddOffset(h, 0);
					h = k = 0
				}
			}
		}
		if(k > 0) {
			this.dMultiply(Math.pow(d, k));
			this.dAddOffset(h, 0)
		}
		e && a.ZERO.subTo(this, this)
	};
	a.prototype.fromNumber =
		function(b, d, f) {
			if("number" == typeof d)
				if(b < 2) this.fromInt(1);
				else {
					this.fromNumber(b, f);
					this.testBit(b - 1) || this.bitwiseTo(a.ONE.shiftLeft(b - 1), t, this);
					for(this.isEven() && this.dAddOffset(1, 0); !this.isProbablePrime(d);) {
						this.dAddOffset(2, 0);
						this.bitLength() > b && this.subTo(a.ONE.shiftLeft(b - 1), this)
					}
				}
			else {
				var f = [],
					c = b & 7;
				f.length = (b >> 3) + 1;
				d.nextBytes(f);
				f[0] = c > 0 ? f[0] & (1 << c) - 1 : 0;
				this.fromString(f, 256)
			}
		};
	a.prototype.bitwiseTo = function(b, d, f) {
		var a, c, e = Math.min(b.t, this.t);
		for(a = 0; a < e; ++a) f[a] = d(this[a], b[a]);
		if(b.t < this.t) {
			c = b.s & this.DM;
			for(a = e; a < this.t; ++a) f[a] = d(this[a], c);
			f.t = this.t
		} else {
			c = this.s & this.DM;
			for(a = e; a < b.t; ++a) f[a] = d(c, b[a]);
			f.t = b.t
		}
		f.s = d(this.s, b.s);
		f.clamp()
	};
	a.prototype.changeBit = function(b, d) {
		var f = a.ONE.shiftLeft(b);
		this.bitwiseTo(f, d, f);
		return f
	};
	a.prototype.addTo = function(b, d) {
		for(var f = 0, a = 0, c = Math.min(b.t, this.t); f < c;) {
			a = a + (this[f] + b[f]);
			d[f++] = a & this.DM;
			a = a >> this.DB
		}
		if(b.t < this.t) {
			for(a = a + b.s; f < this.t;) {
				a = a + this[f];
				d[f++] = a & this.DM;
				a = a >> this.DB
			}
			a = a + this.s
		} else {
			for(a = a + this.s; f <
				b.t;) {
				a = a + b[f];
				d[f++] = a & this.DM;
				a = a >> this.DB
			}
			a = a + b.s
		}
		d.s = a < 0 ? -1 : 0;
		a > 0 ? d[f++] = a : a < -1 && (d[f++] = this.DV + a);
		d.t = f;
		d.clamp()
	};
	a.prototype.dMultiply = function(b) {
		this[this.t] = this.am(0, b - 1, this, 0, 0, this.t);
		++this.t;
		this.clamp()
	};
	a.prototype.dAddOffset = function(b, d) {
		if(b != 0) {
			for(; this.t <= d;) this[this.t++] = 0;
			for(this[d] = this[d] + b; this[d] >= this.DV;) {
				this[d] = this[d] - this.DV;
				++d >= this.t && (this[this.t++] = 0);
				++this[d]
			}
		}
	};
	a.prototype.multiplyLowerTo = function(b, d, f) {
		var a = Math.min(this.t + b.t, d);
		f.s = 0;
		for(f.t = a; a >
			0;) f[--a] = 0;
		var c;
		for(c = f.t - this.t; a < c; ++a) f[a + this.t] = this.am(0, b[a], f, a, 0, this.t);
		for(c = Math.min(b.t, d); a < c; ++a) this.am(0, b[a], f, a, 0, d - a);
		f.clamp()
	};
	a.prototype.multiplyUpperTo = function(b, d, f) {
		--d;
		var a = f.t = this.t + b.t - d;
		for(f.s = 0; --a >= 0;) f[a] = 0;
		for(a = Math.max(d - this.t, 0); a < b.t; ++a) f[this.t + a - d] = this.am(d - a, b[a], f, 0, 0, this.t + a - d);
		f.clamp();
		f.drShiftTo(1, f)
	};
	a.prototype.modInt = function(b) {
		if(b <= 0) return 0;
		var d = this.DV % b,
			f = this.s < 0 ? b - 1 : 0;
		if(this.t > 0)
			if(d == 0) f = this[0] % b;
			else
				for(var a = this.t - 1; a >=
					0; --a) f = (d * f + this[a]) % b;
		return f
	};
	a.prototype.millerRabin = function(b) {
		var d = this.subtract(a.ONE),
			f = d.getLowestSetBit();
		if(f <= 0) return false;
		var e = d.shiftRight(f),
			b = b + 1 >> 1;
		if(b > C.length) b = C.length;
		for(var w = c(), k = 0; k < b; ++k) {
			w.fromInt(C[Math.floor(Math.random() * C.length)]);
			var h = w.modPow(e, this);
			if(h.compareTo(a.ONE) != 0 && h.compareTo(d) != 0) {
				for(var l = 1; l++ < f && h.compareTo(d) != 0;) {
					h = h.modPowInt(2, this);
					if(h.compareTo(a.ONE) == 0) return false
				}
				if(h.compareTo(d) != 0) return false
			}
		}
		return true
	};
	a.prototype.clone =
		function() {
			var b = c();
			this.copyTo(b);
			return b
		};
	a.prototype.intValue = function() {
		if(this.s < 0) {
			if(this.t == 1) return this[0] - this.DV;
			if(this.t == 0) return -1
		} else {
			if(this.t == 1) return this[0];
			if(this.t == 0) return 0
		}
		return(this[1] & (1 << 32 - this.DB) - 1) << this.DB | this[0]
	};
	a.prototype.byteValue = function() {
		return this.t == 0 ? this.s : this[0] << 24 >> 24
	};
	a.prototype.shortValue = function() {
		return this.t == 0 ? this.s : this[0] << 16 >> 16
	};
	a.prototype.signum = function() {
		return this.s < 0 ? -1 : this.t <= 0 || this.t == 1 && this[0] <= 0 ? 0 : 1
	};
	a.prototype.toByteArray =
		function() {
			var b = this.t,
				d = [];
			d[0] = this.s;
			var f = this.DB - b * this.DB % 8,
				a, c = 0;
			if(b-- > 0) {
				if(f < this.DB && (a = this[b] >> f) != (this.s & this.DM) >> f) d[c++] = a | this.s << this.DB - f;
				for(; b >= 0;) {
					if(f < 8) {
						a = (this[b] & (1 << f) - 1) << 8 - f;
						a = a | this[--b] >> (f = f + (this.DB - 8))
					} else {
						a = this[b] >> (f = f - 8) & 255;
						if(f <= 0) {
							f = f + this.DB;
							--b
						}
					}(a & 128) != 0 && (a = a | -256);
					c == 0 && (this.s & 128) != (a & 128) && ++c;
					if(c > 0 || a != this.s) d[c++] = a
				}
			}
			return d
		};
	a.prototype.equals = function(b) {
		return this.compareTo(b) == 0
	};
	a.prototype.min = function(b) {
		return this.compareTo(b) <
			0 ? this : b
	};
	a.prototype.max = function(b) {
		return this.compareTo(b) > 0 ? this : b
	};
	a.prototype.and = function(b) {
		var d = c();
		this.bitwiseTo(b, A, d);
		return d
	};
	a.prototype.or = function(b) {
		var d = c();
		this.bitwiseTo(b, t, d);
		return d
	};
	a.prototype.xor = function(b) {
		var d = c();
		this.bitwiseTo(b, y, d);
		return d
	};
	a.prototype.andNot = function(b) {
		var d = c();
		this.bitwiseTo(b, D, d);
		return d
	};
	a.prototype.not = function() {
		for(var b = c(), d = 0; d < this.t; ++d) b[d] = this.DM & ~this[d];
		b.t = this.t;
		b.s = ~this.s;
		return b
	};
	a.prototype.shiftLeft = function(b) {
		var d =
			c();
		b < 0 ? this.rShiftTo(-b, d) : this.lShiftTo(b, d);
		return d
	};
	a.prototype.shiftRight = function(b) {
		var d = c();
		b < 0 ? this.lShiftTo(-b, d) : this.rShiftTo(b, d);
		return d
	};
	a.prototype.getLowestSetBit = function() {
		for(var b = 0; b < this.t; ++b)
			if(this[b] != 0) {
				var d = b * this.DB;
				b = this[b];
				if(b == 0) b = -1;
				else {
					var f = 0;
					if((b & 65535) == 0) {
						b = b >> 16;
						f = f + 16
					}
					if((b & 255) == 0) {
						b = b >> 8;
						f = f + 8
					}
					if((b & 15) == 0) {
						b = b >> 4;
						f = f + 4
					}
					if((b & 3) == 0) {
						b = b >> 2;
						f = f + 2
					}(b & 1) == 0 && ++f;
					b = f
				}
				return d + b
			}
		return this.s < 0 ? this.t * this.DB : -1
	};
	a.prototype.bitCount = function() {
		for(var b =
				0, d = this.s & this.DM, f = 0; f < this.t; ++f) {
			for(var a = this[f] ^ d, c = 0; a != 0;) {
				a = a & a - 1;
				++c
			}
			b = b + c
		}
		return b
	};
	a.prototype.testBit = function(b) {
		var d = Math.floor(b / this.DB);
		return d >= this.t ? this.s != 0 : (this[d] & 1 << b % this.DB) != 0
	};
	a.prototype.setBit = function(b) {
		return this.changeBit(b, t)
	};
	a.prototype.clearBit = function(b) {
		return this.changeBit(b, D)
	};
	a.prototype.flipBit = function(b) {
		return this.changeBit(b, y)
	};
	a.prototype.add = function(b) {
		var d = c();
		this.addTo(b, d);
		return d
	};
	a.prototype.subtract = function(b) {
		var d = c();
		this.subTo(b,
			d);
		return d
	};
	a.prototype.multiply = function(b) {
		var d = c();
		this.multiplyTo(b, d);
		return d
	};
	a.prototype.divide = function(b) {
		var d = c();
		this.divRemTo(b, d, null);
		return d
	};
	a.prototype.remainder = function(b) {
		var d = c();
		this.divRemTo(b, null, d);
		return d
	};
	a.prototype.divideAndRemainder = function(b) {
		var d = c(),
			f = c();
		this.divRemTo(b, d, f);
		return [d, f]
	};
	a.prototype.modPow = function(b, d) {
		var f = b.bitLength(),
			a, e = r(1),
			k;
		if(f <= 0) return e;
		a = f < 18 ? 1 : f < 48 ? 3 : f < 144 ? 4 : f < 768 ? 5 : 6;
		k = f < 8 ? new o(d) : d.isEven() ? new E(d) : new s(d);
		var h = [],
			l = 3,
			m = a - 1,
			g = (1 << a) - 1;
		h[1] = k.convert(this);
		if(a > 1) {
			f = c();
			for(k.sqrTo(h[1], f); l <= g;) {
				h[l] = c();
				k.mulTo(f, h[l - 2], h[l]);
				l = l + 2
			}
		}
		for(var i = b.t - 1, j, n = true, p = c(), f = x(b[i]) - 1; i >= 0;) {
			if(f >= m) j = b[i] >> f - m & g;
			else {
				j = (b[i] & (1 << f + 1) - 1) << m - f;
				i > 0 && (j = j | b[i - 1] >> this.DB + f - m)
			}
			for(l = a;
				(j & 1) == 0;) {
				j = j >> 1;
				--l
			}
			if((f = f - l) < 0) {
				f = f + this.DB;
				--i
			}
			if(n) {
				h[j].copyTo(e);
				n = false
			} else {
				for(; l > 1;) {
					k.sqrTo(e, p);
					k.sqrTo(p, e);
					l = l - 2
				}
				if(l > 0) k.sqrTo(e, p);
				else {
					l = e;
					e = p;
					p = l
				}
				k.mulTo(p, h[j], e)
			}
			for(; i >= 0 && (b[i] & 1 << f) == 0;) {
				k.sqrTo(e, p);
				l = e;
				e = p;
				p = l;
				if(--f <
					0) {
					f = this.DB - 1;
					--i
				}
			}
		}
		return k.revert(e)
	};
	a.prototype.modInverse = function(b) {
		var d = b.isEven();
		if(this.isEven() && d || b.signum() == 0) return a.ZERO;
		for(var f = b.clone(), c = this.clone(), e = r(1), k = r(0), h = r(0), l = r(1); f.signum() != 0;) {
			for(; f.isEven();) {
				f.rShiftTo(1, f);
				if(d) {
					if(!e.isEven() || !k.isEven()) {
						e.addTo(this, e);
						k.subTo(b, k)
					}
					e.rShiftTo(1, e)
				} else k.isEven() || k.subTo(b, k);
				k.rShiftTo(1, k)
			}
			for(; c.isEven();) {
				c.rShiftTo(1, c);
				if(d) {
					if(!h.isEven() || !l.isEven()) {
						h.addTo(this, h);
						l.subTo(b, l)
					}
					h.rShiftTo(1, h)
				} else l.isEven() ||
					l.subTo(b, l);
				l.rShiftTo(1, l)
			}
			if(f.compareTo(c) >= 0) {
				f.subTo(c, f);
				d && e.subTo(h, e);
				k.subTo(l, k)
			} else {
				c.subTo(f, c);
				d && h.subTo(e, h);
				l.subTo(k, l)
			}
		}
		if(c.compareTo(a.ONE) != 0) return a.ZERO;
		if(l.compareTo(b) >= 0) return l.subtract(b);
		if(l.signum() < 0) l.addTo(b, l);
		else return l;
		return l.signum() < 0 ? l.add(b) : l
	};
	a.prototype.pow = function(b) {
		return this.exp(b, new u)
	};
	a.prototype.gcd = function(b) {
		var d = this.s < 0 ? this.negate() : this.clone(),
			b = b.s < 0 ? b.negate() : b.clone();
		if(d.compareTo(b) < 0) var a = d,
			d = b,
			b = a;
		var a = d.getLowestSetBit(),
			c = b.getLowestSetBit();
		if(c < 0) return d;
		a < c && (c = a);
		if(c > 0) {
			d.rShiftTo(c, d);
			b.rShiftTo(c, b)
		}
		for(; d.signum() > 0;) {
			(a = d.getLowestSetBit()) > 0 && d.rShiftTo(a, d);
			(a = b.getLowestSetBit()) > 0 && b.rShiftTo(a, b);
			if(d.compareTo(b) >= 0) {
				d.subTo(b, d);
				d.rShiftTo(1, d)
			} else {
				b.subTo(d, b);
				b.rShiftTo(1, b)
			}
		}
		c > 0 && b.lShiftTo(c, b);
		return b
	};
	a.prototype.isProbablePrime = function(b) {
		var d, a = this.abs();
		if(a.t == 1 && a[0] <= C[C.length - 1]) {
			for(d = 0; d < C.length; ++d)
				if(a[0] == C[d]) return true;
			return false
		}
		if(a.isEven()) return false;
		for(d = 1; d <
			C.length;) {
			for(var c = C[d], e = d + 1; e < C.length && c < X;) c = c * C[e++];
			for(c = a.modInt(c); d < e;)
				if(c % C[d++] == 0) return false
		}
		return a.millerRabin(b)
	};
	a.prototype.square = function() {
		var b = c();
		this.squareTo(b);
		return b
	};
	K.prototype.init = function(b) {
		var d, a, c;
		for(d = 0; d < 256; ++d) this.S[d] = d;
		for(d = a = 0; d < 256; ++d) {
			a = a + this.S[d] + b[d % b.length] & 255;
			c = this.S[d];
			this.S[d] = this.S[a];
			this.S[a] = c
		}
		this.j = this.i = 0
	};
	K.prototype.next = function() {
		var b;
		this.i = this.i + 1 & 255;
		this.j = this.j + this.S[this.i] & 255;
		b = this.S[this.i];
		this.S[this.i] =
			this.S[this.j];
		this.S[this.j] = b;
		return this.S[b + this.S[this.i] & 255]
	};
	var P, J, F;
	if(null == J) {
		J = [];
		F = 0;
		if(window.crypto && window.crypto.getRandomValues) {
			B = new Uint32Array(256);
			window.crypto.getRandomValues(B);
			for(z = 0; z < B.length; ++z) J[F++] = B[z] & 255
		}
		var Q = function(b) {
			this.count = this.count || 0;
			if(this.count >= 256 || F >= 256) window.removeEventListener ? window.removeEventListener("mousemove", Q) : window.detachEvent && window.detachEvent("onmousemove", Q);
			else {
				this.count = this.count + 1;
				b = b.x + b.y;
				J[F++] = b & 255
			}
		};
		window.addEventListener ?
			window.addEventListener("mousemove", Q) : window.attachEvent && window.attachEvent("onmousemove", Q)
	}
	H.prototype.nextBytes = function(b) {
		var a;
		for(a = 0; a < b.length; ++a) {
			var f = b,
				c = a,
				e;
			if(P == null) {
				for(P = new K; F < 256;) {
					e = Math.floor(65536 * Math.random());
					J[F++] = e & 255
				}
				P.init(J);
				for(F = 0; F < J.length; ++F) J[F] = 0;
				F = 0
			}
			e = P.next();
			f[c] = e
		}
	};
	p.prototype.doPublic = function(b) {
		return b.modPowInt(this.e, this.n)
	};
	p.prototype.setPublic = function(b, a) {
		if(b != null && a != null && b.length > 0 && a.length > 0) {
			this.n = m(b, 16);
			this.e = parseInt(a, 16)
		} else console.error("Invalid RSA public key")
	};
	p.prototype.encrypt = function(b) {
		var d;
		d = this.n.bitLength() + 7 >> 3;
		if(d < b.length + 11) {
			console.error("Message too long for RSA");
			d = null
		} else {
			for(var f = [], c = b.length - 1; c >= 0 && d > 0;) {
				var e = b.charCodeAt(c--);
				if(e < 128) f[--d] = e;
				else if(e > 127 && e < 2048) {
					f[--d] = e & 63 | 128;
					f[--d] = e >> 6 | 192
				} else {
					f[--d] = e & 63 | 128;
					f[--d] = e >> 6 & 63 | 128;
					f[--d] = e >> 12 | 224
				}
			}
			f[--d] = 0;
			b = new H;
			for(c = []; d > 2;) {
				for(c[0] = 0; c[0] == 0;) b.nextBytes(c);
				f[--d] = c[0]
			}
			f[--d] = 2;
			f[--d] = 0;
			d = new a(f)
		}
		if(d == null) return null;
		d = this.doPublic(d);
		if(d == null) return null;
		d = d.toString(16);
		return(d.length & 1) == 0 ? d : "0" + d
	};
	p.prototype.alipayEncrypt = function(b, d, f) {
		for(var b = [Number(b)], c = R(d, 32), e = R("", 12), k = R(f, 200), f = this.n.bitLength() + 7 >> 3, d = [], b = b.concat(c).concat(e).concat(k), c = b.length - 1; c >= 0 && f > 0;) d[--f] = b[c--];
		d[--f] = 0;
		b = new H;
		for(c = []; f > 2;) {
			for(c[0] = 0; c[0] == 0;) b.nextBytes(c);
			d[--f] = c[0]
		}
		d[--f] = 2;
		d[--f] = 0;
		f = new a(d);
		if(f == null) return null;
		f = this.doPublic(f);
		if(f == null) return null;
		f = f.toString(16);
		return(f.length & 1) == 0 ? f : "0" + f
	};
	p.prototype.doPrivate = function(b) {
		if(this.p ==
			null || this.q == null) return b.modPow(this.d, this.n);
		for(var a = b.mod(this.p).modPow(this.dmp1, this.p), b = b.mod(this.q).modPow(this.dmq1, this.q); a.compareTo(b) < 0;) a = a.add(this.p);
		return a.subtract(b).multiply(this.coeff).mod(this.p).multiply(this.q).add(b)
	};
	p.prototype.setPrivate = function(b, a, f) {
		if(b != null && a != null && b.length > 0 && a.length > 0) {
			this.n = m(b, 16);
			this.e = parseInt(a, 16);
			this.d = m(f, 16)
		} else console.error("Invalid RSA private key")
	};
	p.prototype.setPrivateEx = function(b, a, f, c, e, k, h, l) {
		if(b != null && a !=
			null && b.length > 0 && a.length > 0) {
			this.n = m(b, 16);
			this.e = parseInt(a, 16);
			this.d = m(f, 16);
			this.p = m(c, 16);
			this.q = m(e, 16);
			this.dmp1 = m(k, 16);
			this.dmq1 = m(h, 16);
			this.coeff = m(l, 16)
		} else console.error("Invalid RSA private key")
	};
	p.prototype.generate = function(b, d) {
		var f = new H,
			c = b >> 1;
		this.e = parseInt(d, 16);
		for(var e = new a(d, 16);;) {
			for(;;) {
				this.p = new a(b - c, 1, f);
				if(this.p.subtract(a.ONE).gcd(e).compareTo(a.ONE) == 0 && this.p.isProbablePrime(10)) break
			}
			for(;;) {
				this.q = new a(c, 1, f);
				if(this.q.subtract(a.ONE).gcd(e).compareTo(a.ONE) ==
					0 && this.q.isProbablePrime(10)) break
			}
			if(this.p.compareTo(this.q) <= 0) {
				var k = this.p;
				this.p = this.q;
				this.q = k
			}
			var k = this.p.subtract(a.ONE),
				h = this.q.subtract(a.ONE),
				l = k.multiply(h);
			if(l.gcd(e).compareTo(a.ONE) == 0) {
				this.n = this.p.multiply(this.q);
				this.d = e.modInverse(l);
				this.dmp1 = this.d.mod(k);
				this.dmq1 = this.d.mod(h);
				this.coeff = this.q.modInverse(this.p);
				break
			}
		}
	};
	p.prototype.decrypt = function(b) {
		b = this.doPrivate(m(b, 16));
		if(b == null) b = null;
		else a: {
			for(var a = this.n.bitLength() + 7 >> 3, b = b.toByteArray(), f = 0; f < b.length &&
				b[f] == 0;) ++f;
			if(b.length - f != a - 1 || b[f] != 2) b = null;
			else {
				for(++f; b[f] != 0;)
					if(++f >= b.length) {
						b = null;
						break a
					}
				for(a = ""; ++f < b.length;) {
					var c = b[f] & 255;
					if(c < 128) a = a + String.fromCharCode(c);
					else if(c > 191 && c < 224) {
						a = a + String.fromCharCode((c & 31) << 6 | b[f + 1] & 63);
						++f
					} else {
						a = a + String.fromCharCode((c & 15) << 12 | (b[f + 1] & 63) << 6 | b[f + 2] & 63);
						f = f + 2
					}
				}
				b = a
			}
		}
		return b
	};
	(function() {
		p.prototype.generateAsync = function(b, d, f) {
			var e = new H,
				w = b >> 1;
			this.e = parseInt(d, 16);
			var k = new a(d, 16),
				h = this,
				l = function() {
					var d = function() {
							if(h.p.compareTo(h.q) <=
								0) {
								var b = h.p;
								h.p = h.q;
								h.q = b
							}
							var b = h.p.subtract(a.ONE),
								d = h.q.subtract(a.ONE),
								c = b.multiply(d);
							if(c.gcd(k).compareTo(a.ONE) == 0) {
								h.n = h.p.multiply(h.q);
								h.d = k.modInverse(c);
								h.dmp1 = h.d.mod(b);
								h.dmq1 = h.d.mod(d);
								h.coeff = h.q.modInverse(h.p);
								setTimeout(function() {
									f()
								}, 0)
							} else setTimeout(l, 0)
						},
						m = function() {
							h.q = c();
							h.q.fromNumberAsync(w, 1, e, function() {
								h.q.subtract(a.ONE).gcda(k, function(b) {
									b.compareTo(a.ONE) == 0 && h.q.isProbablePrime(10) ? setTimeout(d, 0) : setTimeout(m, 0)
								})
							})
						},
						g = function() {
							h.p = c();
							h.p.fromNumberAsync(b -
								w, 1, e,
								function() {
									h.p.subtract(a.ONE).gcda(k, function(b) {
										b.compareTo(a.ONE) == 0 && h.p.isProbablePrime(10) ? setTimeout(m, 0) : setTimeout(g, 0)
									})
								})
						};
					setTimeout(g, 0)
				};
			setTimeout(l, 0)
		};
		a.prototype.gcda = function(b, a) {
			var f = this.s < 0 ? this.negate() : this.clone(),
				c = b.s < 0 ? b.negate() : b.clone();
			if(f.compareTo(c) < 0) var e = f,
				f = c,
				c = e;
			var k = f.getLowestSetBit(),
				h = c.getLowestSetBit();
			if(h < 0) a(f);
			else {
				k < h && (h = k);
				if(h > 0) {
					f.rShiftTo(h, f);
					c.rShiftTo(h, c)
				}
				var l = function() {
					(k = f.getLowestSetBit()) > 0 && f.rShiftTo(k, f);
					(k = c.getLowestSetBit()) >
					0 && c.rShiftTo(k, c);
					if(f.compareTo(c) >= 0) {
						f.subTo(c, f);
						f.rShiftTo(1, f)
					} else {
						c.subTo(f, c);
						c.rShiftTo(1, c)
					}
					if(f.signum() > 0) setTimeout(l, 0);
					else {
						h > 0 && c.lShiftTo(h, c);
						setTimeout(function() {
							a(c)
						}, 0)
					}
				};
				setTimeout(l, 10)
			}
		};
		a.prototype.fromNumberAsync = function(b, d, f, c) {
			if("number" == typeof d)
				if(b < 2) this.fromInt(1);
				else {
					this.fromNumber(b, f);
					this.testBit(b - 1) || this.bitwiseTo(a.ONE.shiftLeft(b - 1), t, this);
					this.isEven() && this.dAddOffset(1, 0);
					var e = this,
						k = function() {
							e.dAddOffset(2, 0);
							e.bitLength() > b && e.subTo(a.ONE.shiftLeft(b -
								1), e);
							e.isProbablePrime(d) ? setTimeout(function() {
								c()
							}, 0) : setTimeout(k, 0)
						};
					setTimeout(k, 0)
				}
			else {
				var f = [],
					h = b & 7;
				f.length = (b >> 3) + 1;
				d.nextBytes(f);
				f[0] = h > 0 ? f[0] & (1 << h) - 1 : 0;
				this.fromString(f, 256)
			}
		}
	})();
	var L = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/",
		U = "=",
		q = q || {};
	q.env = q.env || {};
	var S = q,
		T = Object.prototype,
		V = ["toString", "valueOf"];
	q.env.parseUA = function(b) {
		var a = function(b) {
				var a = 0;
				return parseFloat(b.replace(/\./g, function() {
					return a++ == 1 ? "" : "."
				}))
			},
			f = navigator,
			f = {
				ie: 0,
				opera: 0,
				gecko: 0,
				webkit: 0,
				chrome: 0,
				mobile: null,
				air: 0,
				ipad: 0,
				iphone: 0,
				ipod: 0,
				ios: null,
				android: 0,
				webos: 0,
				caja: f && f.cajaVersion,
				secure: false,
				os: null
			},
			b = b || navigator && navigator.userAgent,
			c = window && window.location,
			c = c && c.href;
		f.secure = c && c.toLowerCase().indexOf("https") === 0;
		if(b) {
			if(/windows|win32/i.test(b)) f.os = "windows";
			else if(/macintosh/i.test(b)) f.os = "macintosh";
			else if(/rhino/i.test(b)) f.os = "rhino";
			if(/KHTML/.test(b)) f.webkit = 1;
			if((c = b.match(/AppleWebKit\/([^\s]*)/)) && c[1]) {
				f.webkit = a(c[1]);
				if(/ Mobile\//.test(b)) {
					f.mobile =
						"Apple";
					(c = b.match(/OS ([^\s]*)/)) && c[1] && (c = a(c[1].replace("_", ".")));
					f.ios = c;
					f.ipad = f.ipod = f.iphone = 0;
					if((c = b.match(/iPad|iPod|iPhone/)) && c[0]) f[c[0].toLowerCase()] = f.ios
				} else {
					if(c = b.match(/NokiaN[^\/]*|Android \d\.\d|webOS\/\d\.\d/)) f.mobile = c[0];
					if(/webOS/.test(b)) {
						f.mobile = "WebOS";
						if((c = b.match(/webOS\/([^\s]*);/)) && c[1]) f.webos = a(c[1])
					}
					if(/ Android/.test(b)) {
						f.mobile = "Android";
						if((c = b.match(/Android ([^\s]*);/)) && c[1]) f.android = a(c[1])
					}
				}
				if((c = b.match(/Chrome\/([^\s]*)/)) && c[1]) f.chrome = a(c[1]);
				else if(c = b.match(/AdobeAIR\/([^\s]*)/)) f.air = c[0]
			}
			if(!f.webkit)
				if((c = b.match(/Opera[\s\/]([^\s]*)/)) && c[1]) {
					f.opera = a(c[1]);
					if((c = b.match(/Version\/([^\s]*)/)) && c[1]) f.opera = a(c[1]);
					if(c = b.match(/Opera Mini[^;]*/)) f.mobile = c[0]
				} else if((c = b.match(/MSIE\s([^;]*)/)) && c[1]) f.ie = a(c[1]);
			else if(c = b.match(/Gecko\/([^\s]*)/)) {
				f.gecko = 1;
				if((c = b.match(/rv:([^\s\)]*)/)) && c[1]) f.gecko = a(c[1])
			}
		}
		return f
	};
	q.env.ua = q.env.parseUA();
	q.isFunction = function(b) {
		return typeof b === "function" || T.toString.apply(b) === "[object Function]"
	};
	q._IEEnumFix = q.env.ua.ie ? function(b, a) {
		var f, c, e;
		for(f = 0; f < V.length; f = f + 1) {
			c = V[f];
			e = a[c];
			S.isFunction(e) && e != T[c] && (b[c] = e)
		}
	} : function() {};
	q.extend = function(b, a, f) {
		if(!a || !b) throw Error("extend failed, please check that all dependencies are included.");
		var c = function() {},
			e;
		c.prototype = a.prototype;
		b.prototype = new c;
		b.prototype.constructor = b;
		b.superclass = a.prototype;
		if(a.prototype.constructor == T.constructor) a.prototype.constructor = a;
		if(f) {
			for(e in f) S.hasOwnProperty(f, e) && (b.prototype[e] = f[e]);
			S._IEEnumFix(b.prototype,
				f)
		}
	};
	if("undefined" == typeof KJUR || !KJUR) KJUR = {};
	if("undefined" == typeof KJUR.asn1 || !KJUR.asn1) KJUR.asn1 = {};
	KJUR.asn1.ASN1Util = new function() {
		this.integerToByteHex = function(b) {
			b = b.toString(16);
			b.length % 2 == 1 && (b = "0" + b);
			return b
		};
		this.bigIntToMinTwosComplementsHex = function(b) {
			var d = b.toString(16);
			if(d.substr(0, 1) != "-") d.length % 2 == 1 ? d = "0" + d : d.match(/^[0-7]/) || (d = "00" + d);
			else {
				var f = d.substr(1).length;
				f % 2 == 1 ? f = f + 1 : d.match(/^[0-7]/) || (f = f + 2);
				for(var d = "", c = 0; c < f; c++) d = d + "f";
				d = (new a(d, 16)).xor(b).add(a.ONE).toString(16).replace(/^-/,
					"")
			}
			return d
		};
		this.getPEMStringFromHex = function(b, a) {
			var f = CryptoJS.enc.Hex.parse(b),
				f = CryptoJS.enc.Base64.stringify(f).replace(/(.{64})/g, "$1\r\n"),
				f = f.replace(/\r\n$/, "");
			return "-----BEGIN " + a + "-----\r\n" + f + "\r\n-----END " + a + "-----\r\n"
		}
	};
	KJUR.asn1.ASN1Object = function() {
		this.getLengthHexFromValue = function() {
			if(typeof this.hV == "undefined" || this.hV == null) throw "this.hV is null or undefined.";
			if(this.hV.length % 2 == 1) throw "value hex must be even length: n=0,v=" + this.hV;
			var b = this.hV.length / 2,
				a = b.toString(16);
			a.length % 2 == 1 && (a = "0" + a);
			if(b < 128) return a;
			var f = a.length / 2;
			if(f > 15) throw "ASN.1 length too long to represent by 8x: n = " + b.toString(16);
			return(128 + f).toString(16) + a
		};
		this.getEncodedHex = function() {
			if(this.hTLV == null || this.isModified) {
				this.hV = this.getFreshValueHex();
				this.hL = this.getLengthHexFromValue();
				this.hTLV = this.hT + this.hL + this.hV;
				this.isModified = false
			}
			return this.hTLV
		};
		this.getValueHex = function() {
			this.getEncodedHex();
			return this.hV
		};
		this.getFreshValueHex = function() {
			return ""
		}
	};
	KJUR.asn1.DERAbstractString =
		function(b) {
			KJUR.asn1.DERAbstractString.superclass.constructor.call(this);
			this.getString = function() {
				return this.s
			};
			this.setString = function(b) {
				this.hTLV = null;
				this.isModified = true;
				this.s = b;
				this.hV = stohex(this.s)
			};
			this.setStringHex = function(b) {
				this.hTLV = null;
				this.isModified = true;
				this.s = null;
				this.hV = b
			};
			this.getFreshValueHex = function() {
				return this.hV
			};
			typeof b != "undefined" && (typeof b.str != "undefined" ? this.setString(b.str) : typeof b.hex != "undefined" && this.setStringHex(b.hex))
		};
	q.extend(KJUR.asn1.DERAbstractString,
		KJUR.asn1.ASN1Object);
	KJUR.asn1.DERAbstractTime = function() {
		KJUR.asn1.DERAbstractTime.superclass.constructor.call(this);
		this.localDateToUTC = function(b) {
			utc = b.getTime() + b.getTimezoneOffset() * 6E4;
			return new Date(utc)
		};
		this.formatDate = function(b, a) {
			var f = this.zeroPadding,
				c = this.localDateToUTC(b),
				e = "" + c.getFullYear();
			a == "utc" && (e = e.substr(2, 2));
			var k = f("" + (c.getMonth() + 1), 2),
				h = f("" + c.getDate(), 2),
				l = f("" + c.getHours(), 2),
				m = f("" + c.getMinutes(), 2),
				f = f("" + c.getSeconds(), 2);
			return e + k + h + l + m + f + "Z"
		};
		this.zeroPadding =
			function(b, a) {
				return b.length >= a ? b : Array(a - b.length + 1).join("0") + b
			};
		this.getString = function() {
			return this.s
		};
		this.setString = function(b) {
			this.hTLV = null;
			this.isModified = true;
			this.s = b;
			this.hV = stohex(this.s)
		};
		this.setByDateValue = function(b, a, f, c, e, k) {
			this.setByDate(new Date(Date.UTC(b, a - 1, f, c, e, k, 0)))
		};
		this.getFreshValueHex = function() {
			return this.hV
		}
	};
	q.extend(KJUR.asn1.DERAbstractTime, KJUR.asn1.ASN1Object);
	KJUR.asn1.DERAbstractStructured = function(b) {
		KJUR.asn1.DERAbstractString.superclass.constructor.call(this);
		this.setByASN1ObjectArray = function(b) {
			this.hTLV = null;
			this.isModified = true;
			this.asn1Array = b
		};
		this.appendASN1Object = function(b) {
			this.hTLV = null;
			this.isModified = true;
			this.asn1Array.push(b)
		};
		this.asn1Array = [];
		if(typeof b != "undefined" && typeof b.array != "undefined") this.asn1Array = b.array
	};
	q.extend(KJUR.asn1.DERAbstractStructured, KJUR.asn1.ASN1Object);
	KJUR.asn1.DERBoolean = function() {
		KJUR.asn1.DERBoolean.superclass.constructor.call(this);
		this.hT = "01";
		this.hTLV = "0101ff"
	};
	q.extend(KJUR.asn1.DERBoolean, KJUR.asn1.ASN1Object);
	KJUR.asn1.DERInteger = function(b) {
		KJUR.asn1.DERInteger.superclass.constructor.call(this);
		this.hT = "02";
		this.setByBigInteger = function(b) {
			this.hTLV = null;
			this.isModified = true;
			this.hV = KJUR.asn1.ASN1Util.bigIntToMinTwosComplementsHex(b)
		};
		this.setByInteger = function(b) {
			this.setByBigInteger(new a("" + b, 10))
		};
		this.setValueHex = function(b) {
			this.hV = b
		};
		this.getFreshValueHex = function() {
			return this.hV
		};
		typeof b != "undefined" && (typeof b.bigint != "undefined" ? this.setByBigInteger(b.bigint) : typeof b["int"] != "undefined" ?
			this.setByInteger(b["int"]) : typeof b.hex != "undefined" && this.setValueHex(b.hex))
	};
	q.extend(KJUR.asn1.DERInteger, KJUR.asn1.ASN1Object);
	KJUR.asn1.DERBitString = function(b) {
		KJUR.asn1.DERBitString.superclass.constructor.call(this);
		this.hT = "03";
		this.setHexValueIncludingUnusedBits = function(b) {
			this.hTLV = null;
			this.isModified = true;
			this.hV = b
		};
		this.setUnusedBitsAndHexValue = function(b, a) {
			if(b < 0 || 7 < b) throw "unused bits shall be from 0 to 7: u = " + b;
			this.hTLV = null;
			this.isModified = true;
			this.hV = "0" + b + a
		};
		this.setByBinaryString =
			function(b) {
				var b = b.replace(/0+$/, ""),
					a = 8 - b.length % 8;
				a == 8 && (a = 0);
				for(var c = 0; c <= a; c++) b = b + "0";
				for(var e = "", c = 0; c < b.length - 1; c = c + 8) {
					var k = b.substr(c, 8),
						k = parseInt(k, 2).toString(16);
					k.length == 1 && (k = "0" + k);
					e = e + k
				}
				this.hTLV = null;
				this.isModified = true;
				this.hV = "0" + a + e
			};
		this.setByBooleanArray = function(b) {
			for(var a = "", c = 0; c < b.length; c++) a = b[c] == true ? a + "1" : a + "0";
			this.setByBinaryString(a)
		};
		this.newFalseArray = function(b) {
			for(var a = Array(b), c = 0; c < b; c++) a[c] = false;
			return a
		};
		this.getFreshValueHex = function() {
			return this.hV
		};
		typeof b != "undefined" && (typeof b.hex != "undefined" ? this.setHexValueIncludingUnusedBits(b.hex) : typeof b.bin != "undefined" ? this.setByBinaryString(b.bin) : typeof b.array != "undefined" && this.setByBooleanArray(b.array))
	};
	q.extend(KJUR.asn1.DERBitString, KJUR.asn1.ASN1Object);
	KJUR.asn1.DEROctetString = function(b) {
		KJUR.asn1.DEROctetString.superclass.constructor.call(this, b);
		this.hT = "04"
	};
	q.extend(KJUR.asn1.DEROctetString, KJUR.asn1.DERAbstractString);
	KJUR.asn1.DERNull = function() {
		KJUR.asn1.DERNull.superclass.constructor.call(this);
		this.hT = "05";
		this.hTLV = "0500"
	};
	q.extend(KJUR.asn1.DERNull, KJUR.asn1.ASN1Object);
	KJUR.asn1.DERObjectIdentifier = function(b) {
		var c = function(b) {
			b = b.toString(16);
			b.length == 1 && (b = "0" + b);
			return b
		};
		KJUR.asn1.DERObjectIdentifier.superclass.constructor.call(this);
		this.hT = "06";
		this.setValueHex = function(b) {
			this.hTLV = null;
			this.isModified = true;
			this.s = null;
			this.hV = b
		};
		this.setValueOidString = function(b) {
			if(!b.match(/^[0-9.]+$/)) throw "malformed oid string: " + b;
			var e = "",
				b = b.split("."),
				w = parseInt(b[0]) * 40 + parseInt(b[1]),
				e = e + c(w);
			b.splice(0, 2);
			for(w = 0; w < b.length; w++) {
				var k = "",
					h = (new a(b[w], 10)).toString(2),
					l = 7 - h.length % 7;
				l == 7 && (l = 0);
				for(var m = "", g = 0; g < l; g++) m = m + "0";
				h = m + h;
				for(g = 0; g < h.length - 1; g = g + 7) {
					l = h.substr(g, 7);
					g != h.length - 7 && (l = "1" + l);
					k = k + c(parseInt(l, 2))
				}
				e = e + k
			}
			this.hTLV = null;
			this.isModified = true;
			this.s = null;
			this.hV = e
		};
		this.setValueName = function(b) {
			if(typeof KJUR.asn1.x509.OID.name2oidList[b] != "undefined") this.setValueOidString(KJUR.asn1.x509.OID.name2oidList[b]);
			else throw "DERObjectIdentifier oidName undefined: " +
				b;
		};
		this.getFreshValueHex = function() {
			return this.hV
		};
		typeof b != "undefined" && (typeof b.oid != "undefined" ? this.setValueOidString(b.oid) : typeof b.hex != "undefined" ? this.setValueHex(b.hex) : typeof b.name != "undefined" && this.setValueName(b.name))
	};
	q.extend(KJUR.asn1.DERObjectIdentifier, KJUR.asn1.ASN1Object);
	KJUR.asn1.DERUTF8String = function(b) {
		KJUR.asn1.DERUTF8String.superclass.constructor.call(this, b);
		this.hT = "0c"
	};
	q.extend(KJUR.asn1.DERUTF8String, KJUR.asn1.DERAbstractString);
	KJUR.asn1.DERNumericString = function(b) {
		KJUR.asn1.DERNumericString.superclass.constructor.call(this,
			b);
		this.hT = "12"
	};
	q.extend(KJUR.asn1.DERNumericString, KJUR.asn1.DERAbstractString);
	KJUR.asn1.DERPrintableString = function(b) {
		KJUR.asn1.DERPrintableString.superclass.constructor.call(this, b);
		this.hT = "13"
	};
	q.extend(KJUR.asn1.DERPrintableString, KJUR.asn1.DERAbstractString);
	KJUR.asn1.DERTeletexString = function(b) {
		KJUR.asn1.DERTeletexString.superclass.constructor.call(this, b);
		this.hT = "14"
	};
	q.extend(KJUR.asn1.DERTeletexString, KJUR.asn1.DERAbstractString);
	KJUR.asn1.DERIA5String = function(b) {
		KJUR.asn1.DERIA5String.superclass.constructor.call(this,
			b);
		this.hT = "16"
	};
	q.extend(KJUR.asn1.DERIA5String, KJUR.asn1.DERAbstractString);
	KJUR.asn1.DERUTCTime = function(b) {
		KJUR.asn1.DERUTCTime.superclass.constructor.call(this, b);
		this.hT = "17";
		this.setByDate = function(b) {
			this.hTLV = null;
			this.isModified = true;
			this.date = b;
			this.s = this.formatDate(this.date, "utc");
			this.hV = stohex(this.s)
		};
		typeof b != "undefined" && (typeof b.str != "undefined" ? this.setString(b.str) : typeof b.hex != "undefined" ? this.setStringHex(b.hex) : typeof b.date != "undefined" && this.setByDate(b.date))
	};
	q.extend(KJUR.asn1.DERUTCTime,
		KJUR.asn1.DERAbstractTime);
	KJUR.asn1.DERGeneralizedTime = function(b) {
		KJUR.asn1.DERGeneralizedTime.superclass.constructor.call(this, b);
		this.hT = "18";
		this.setByDate = function(b) {
			this.hTLV = null;
			this.isModified = true;
			this.date = b;
			this.s = this.formatDate(this.date, "gen");
			this.hV = stohex(this.s)
		};
		typeof b != "undefined" && (typeof b.str != "undefined" ? this.setString(b.str) : typeof b.hex != "undefined" ? this.setStringHex(b.hex) : typeof b.date != "undefined" && this.setByDate(b.date))
	};
	q.extend(KJUR.asn1.DERGeneralizedTime, KJUR.asn1.DERAbstractTime);
	KJUR.asn1.DERSequence = function(b) {
		KJUR.asn1.DERSequence.superclass.constructor.call(this, b);
		this.hT = "30";
		this.getFreshValueHex = function() {
			for(var b = "", a = 0; a < this.asn1Array.length; a++) b = b + this.asn1Array[a].getEncodedHex();
			return this.hV = b
		}
	};
	q.extend(KJUR.asn1.DERSequence, KJUR.asn1.DERAbstractStructured);
	KJUR.asn1.DERSet = function(b) {
		KJUR.asn1.DERSet.superclass.constructor.call(this, b);
		this.hT = "31";
		this.getFreshValueHex = function() {
			for(var b = [], a = 0; a < this.asn1Array.length; a++) b.push(this.asn1Array[a].getEncodedHex());
			b.sort();
			return this.hV = b.join("")
		}
	};
	q.extend(KJUR.asn1.DERSet, KJUR.asn1.DERAbstractStructured);
	KJUR.asn1.DERTaggedObject = function(b) {
		KJUR.asn1.DERTaggedObject.superclass.constructor.call(this);
		this.hT = "a0";
		this.hV = "";
		this.isExplicit = true;
		this.asn1Object = null;
		this.setASN1Object = function(b, a, c) {
			this.hT = a;
			this.isExplicit = b;
			this.asn1Object = c;
			if(this.isExplicit) {
				this.hV = this.asn1Object.getEncodedHex();
				this.hTLV = null;
				this.isModified = true
			} else {
				this.hV = null;
				this.hTLV = c.getEncodedHex();
				this.hTLV = this.hTLV.replace(/^../,
					a);
				this.isModified = false
			}
		};
		this.getFreshValueHex = function() {
			return this.hV
		};
		if(typeof b != "undefined") {
			if(typeof b.tag != "undefined") this.hT = b.tag;
			if(typeof b.explicit != "undefined") this.isExplicit = b.explicit;
			if(typeof b.obj != "undefined") {
				this.asn1Object = b.obj;
				this.setASN1Object(this.isExplicit, this.hT, this.asn1Object)
			}
		}
	};
	q.extend(KJUR.asn1.DERTaggedObject, KJUR.asn1.ASN1Object);
	(function(b) {
		var a = {},
			c;
		a.decode = function(a) {
			var d;
			if(c === b) {
				var e = "0123456789ABCDEF";
				c = [];
				for(d = 0; d < 16; ++d) c[e.charAt(d)] =
					d;
				e = e.toLowerCase();
				for(d = 10; d < 16; ++d) c[e.charAt(d)] = d;
				for(d = 0; d < 8; ++d) c[" \u000c\n\r\t\u00a0\u2028\u2029".charAt(d)] = -1
			}
			var e = [],
				h = 0,
				l = 0;
			for(d = 0; d < a.length; ++d) {
				var m = a.charAt(d);
				if(m == "=") break;
				m = c[m];
				if(m != -1) {
					if(m === b) throw "Illegal character at offset " + d;
					h = h | m;
					if(++l >= 2) {
						e[e.length] = h;
						l = h = 0
					} else h = h << 4
				}
			}
			if(l) throw "Hex encoding incomplete: 4 bits missing";
			return e
		};
		window.Hex = a
	})();
	(function(b) {
		var a = {},
			c;
		a.decode = function(a) {
			var d;
			if(c === b) {
				c = [];
				for(d = 0; d < 64; ++d) c["ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(d)] =
					d;
				for(d = 0; d < 9; ++d) c["= \u000c\n\r\t\u00a0\u2028\u2029".charAt(d)] = -1
			}
			var e = [],
				h = 0,
				l = 0;
			for(d = 0; d < a.length; ++d) {
				var m = a.charAt(d);
				if(m == "=") break;
				m = c[m];
				if(m != -1) {
					if(m === b) throw "Illegal character at offset " + d;
					h = h | m;
					if(++l >= 4) {
						e[e.length] = h >> 16;
						e[e.length] = h >> 8 & 255;
						e[e.length] = h & 255;
						l = h = 0
					} else h = h << 6
				}
			}
			switch(l) {
				case 1:
					throw "Base64 encoding incomplete: at least 2 bits missing";
				case 2:
					e[e.length] = h >> 10;
					break;
				case 3:
					e[e.length] = h >> 16;
					e[e.length] = h >> 8 & 255
			}
			return e
		};
		a.re = /-----BEGIN [^-]+-----([A-Za-z0-9+\/=\s]+)-----END [^-]+-----|begin-base64[^\n]+\n([A-Za-z0-9+\/=\s]+)====/;
		a.unarmor = function(b) {
			var c = a.re.exec(b);
			if(c)
				if(c[1]) b = c[1];
				else if(c[2]) b = c[2];
			else throw "RegExp out of sync";
			return a.decode(b)
		};
		window.Base64 = a
	})();
	(function(b) {
		function a(b, c) {
			if(b instanceof a) {
				this.enc = b.enc;
				this.pos = b.pos
			} else {
				this.enc = b;
				this.pos = c
			}
		}

		function c(b, a, d, e, f) {
			this.stream = b;
			this.header = a;
			this.length = d;
			this.tag = e;
			this.sub = f
		}
		var e = {
			tag: function(b, a) {
				var c = document.createElement(b);
				c.className = a;
				return c
			},
			text: function(b) {
				return document.createTextNode(b)
			}
		};
		a.prototype.get = function(a) {
			a ===
				b && (a = this.pos++);
			if(a >= this.enc.length) throw "Requesting byte offset " + a + " on a stream of length " + this.enc.length;
			return this.enc[a]
		};
		a.prototype.hexDigits = "0123456789ABCDEF";
		a.prototype.hexByte = function(b) {
			return this.hexDigits.charAt(b >> 4 & 15) + this.hexDigits.charAt(b & 15)
		};
		a.prototype.hexDump = function(b, a, c) {
			for(var d = ""; b < a; ++b) {
				d = d + this.hexByte(this.get(b));
				if(c !== true) switch(b & 15) {
					case 7:
						d = d + "  ";
						break;
					case 15:
						d = d + "\n";
						break;
					default:
						d = d + " "
				}
			}
			return d
		};
		a.prototype.parseStringISO = function(b, a) {
			for(var c =
					"", d = b; d < a; ++d) c = c + String.fromCharCode(this.get(d));
			return c
		};
		a.prototype.parseStringUTF = function(b, a) {
			for(var c = "", d = b; d < a;) var e = this.get(d++),
				c = e < 128 ? c + String.fromCharCode(e) : e > 191 && e < 224 ? c + String.fromCharCode((e & 31) << 6 | this.get(d++) & 63) : c + String.fromCharCode((e & 15) << 12 | (this.get(d++) & 63) << 6 | this.get(d++) & 63);
			return c
		};
		a.prototype.parseStringBMP = function(b, a) {
			for(var c = "", d = b; d < a; d = d + 2) var e = this.get(d),
				f = this.get(d + 1),
				c = c + String.fromCharCode((e << 8) + f);
			return c
		};
		a.prototype.reTime = /^((?:1[89]|2\d)?\d\d)(0[1-9]|1[0-2])(0[1-9]|[12]\d|3[01])([01]\d|2[0-3])(?:([0-5]\d)(?:([0-5]\d)(?:[.,](\d{1,3}))?)?)?(Z|[-+](?:[0]\d|1[0-2])([0-5]\d)?)?$/;
		a.prototype.parseTime = function(b, a) {
			var c = this.parseStringISO(b, a),
				d = this.reTime.exec(c);
			if(!d) return "Unrecognized time: " + c;
			c = d[1] + "-" + d[2] + "-" + d[3] + " " + d[4];
			if(d[5]) {
				c = c + (":" + d[5]);
				if(d[6]) {
					c = c + (":" + d[6]);
					d[7] && (c = c + ("." + d[7]))
				}
			}
			if(d[8]) {
				c = c + " UTC";
				if(d[8] != "Z") {
					c = c + d[8];
					d[9] && (c = c + (":" + d[9]))
				}
			}
			return c
		};
		a.prototype.parseInteger = function(b, a) {
			var c = a - b;
			if(c > 4) {
				var c = c << 3,
					d = this.get(b);
				if(d === 0) c = c - 8;
				else
					for(; d < 128;) {
						d = d << 1;
						--c
					}
				return "(" + c + " bit)"
			}
			c = 0;
			for(d = b; d < a; ++d) c = c << 8 | this.get(d);
			return c
		};
		a.prototype.parseBitString = function(b, a) {
			var c = this.get(b),
				d = (a - b - 1 << 3) - c,
				e = "(" + d + " bit)";
			if(d <= 20)
				for(var f = c, e = e + " ", c = a - 1; c > b; --c) {
					for(d = this.get(c); f < 8; ++f) e = e + (d >> f & 1 ? "1" : "0");
					f = 0
				}
			return e
		};
		a.prototype.parseOctetString = function(b, a) {
			var c = a - b,
				d = "(" + c + " byte) ";
			c > 100 && (a = b + 100);
			for(var e = b; e < a; ++e) d = d + this.hexByte(this.get(e));
			c > 100 && (d = d + "\u2026");
			return d
		};
		a.prototype.parseOID = function(b, a) {
			for(var c = "", d = 0, e = 0, f = b; f < a; ++f) {
				var m = this.get(f),
					d = d << 7 | m & 127,
					e = e + 7;
				if(!(m & 128)) {
					if(c === "") {
						c = d < 80 ?
							d < 40 ? 0 : 1 : 2;
						c = c + "." + (d - c * 40)
					} else c = c + ("." + (e >= 31 ? "bigint" : d));
					d = e = 0
				}
			}
			return c
		};
		c.prototype.typeName = function() {
			if(this.tag === b) return "unknown";
			var a = this.tag & 31;
			switch(this.tag >> 6) {
				case 0:
					switch(a) {
						case 0:
							return "EOC";
						case 1:
							return "BOOLEAN";
						case 2:
							return "INTEGER";
						case 3:
							return "BIT_STRING";
						case 4:
							return "OCTET_STRING";
						case 5:
							return "NULL";
						case 6:
							return "OBJECT_IDENTIFIER";
						case 7:
							return "ObjectDescriptor";
						case 8:
							return "EXTERNAL";
						case 9:
							return "REAL";
						case 10:
							return "ENUMERATED";
						case 11:
							return "EMBEDDED_PDV";
						case 12:
							return "UTF8String";
						case 16:
							return "SEQUENCE";
						case 17:
							return "SET";
						case 18:
							return "NumericString";
						case 19:
							return "PrintableString";
						case 20:
							return "TeletexString";
						case 21:
							return "VideotexString";
						case 22:
							return "IA5String";
						case 23:
							return "UTCTime";
						case 24:
							return "GeneralizedTime";
						case 25:
							return "GraphicString";
						case 26:
							return "VisibleString";
						case 27:
							return "GeneralString";
						case 28:
							return "UniversalString";
						case 30:
							return "BMPString";
						default:
							return "Universal_" + a.toString(16)
					}
				case 1:
					return "Application_" + a.toString(16);
				case 2:
					return "[" + a + "]";
				case 3:
					return "Private_" + a.toString(16)
			}
		};
		c.prototype.reSeemsASCII = /^[ -~]+$/;
		c.prototype.content = function() {
			if(this.tag === b) return null;
			var a = this.tag >> 6,
				c = this.tag & 31,
				d = this.posContent(),
				e = Math.abs(this.length);
			if(a !== 0) {
				if(this.sub !== null) return "(" + this.sub.length + " elem)";
				a = this.stream.parseStringISO(d, d + Math.min(e, 100));
				return this.reSeemsASCII.test(a) ? a.substring(0, 200) + (a.length > 200 ? "\u2026" : "") : this.stream.parseOctetString(d, d + e)
			}
			switch(c) {
				case 1:
					return this.stream.get(d) ===
						0 ? "false" : "true";
				case 2:
					return this.stream.parseInteger(d, d + e);
				case 3:
					return this.sub ? "(" + this.sub.length + " elem)" : this.stream.parseBitString(d, d + e);
				case 4:
					return this.sub ? "(" + this.sub.length + " elem)" : this.stream.parseOctetString(d, d + e);
				case 6:
					return this.stream.parseOID(d, d + e);
				case 16:
				case 17:
					return "(" + this.sub.length + " elem)";
				case 12:
					return this.stream.parseStringUTF(d, d + e);
				case 18:
				case 19:
				case 20:
				case 21:
				case 22:
				case 26:
					return this.stream.parseStringISO(d, d + e);
				case 30:
					return this.stream.parseStringBMP(d,
						d + e);
				case 23:
				case 24:
					return this.stream.parseTime(d, d + e)
			}
			return null
		};
		c.prototype.toString = function() {
			return this.typeName() + "@" + this.stream.pos + "[header:" + this.header + ",length:" + this.length + ",sub:" + (this.sub === null ? "null" : this.sub.length) + "]"
		};
		c.prototype.print = function(a) {
			a === b && (a = "");
			document.writeln(a + this);
			if(this.sub !== null)
				for(var a = a + "  ", c = 0, d = this.sub.length; c < d; ++c) this.sub[c].print(a)
		};
		c.prototype.toPrettyString = function(a) {
			a === b && (a = "");
			var c = a + this.typeName() + " @" + this.stream.pos;
			this.length >=
				0 && (c = c + "+");
			c = c + this.length;
			if(this.tag & 32) c = c + " (constructed)";
			else if((this.tag == 3 || this.tag == 4) && this.sub !== null) c = c + " (encapsulates)";
			c = c + "\n";
			if(this.sub !== null)
				for(var a = a + "  ", d = 0, e = this.sub.length; d < e; ++d) c = c + this.sub[d].toPrettyString(a);
			return c
		};
		c.prototype.toDOM = function() {
			var b = e.tag("div", "node");
			b.asn1 = this;
			var a = e.tag("div", "head"),
				c = this.typeName().replace(/_/g, " ");
			a.innerHTML = c;
			var d = this.content();
			if(d !== null) {
				d = ("" + d).replace(/</g, "&lt;");
				c = e.tag("span", "preview");
				c.appendChild(e.text(d));
				a.appendChild(c)
			}
			b.appendChild(a);
			this.node = b;
			this.head = a;
			var f = e.tag("div", "value"),
				c = "Offset: " + this.stream.pos + "<br/>",
				c = c + ("Length: " + this.header + "+"),
				c = this.length >= 0 ? c + this.length : c + (-this.length + " (undefined)");
			if(this.tag & 32) c = c + "<br/>(constructed)";
			else if((this.tag == 3 || this.tag == 4) && this.sub !== null) c = c + "<br/>(encapsulates)";
			if(d !== null) {
				c = c + ("<br/>Value:<br/><b>" + d + "</b>");
				if(typeof oids === "object" && this.tag == 6)
					if(d = oids[d]) {
						d.d && (c = c + ("<br/>" + d.d));
						d.c && (c = c + ("<br/>" + d.c));
						d.w && (c = c + "<br/>(warning!)")
					}
			}
			f.innerHTML =
				c;
			b.appendChild(f);
			c = e.tag("div", "sub");
			if(this.sub !== null) {
				d = 0;
				for(f = this.sub.length; d < f; ++d) c.appendChild(this.sub[d].toDOM())
			}
			b.appendChild(c);
			a.onclick = function() {
				b.className = b.className == "node collapsed" ? "node" : "node collapsed"
			};
			return b
		};
		c.prototype.posStart = function() {
			return this.stream.pos
		};
		c.prototype.posContent = function() {
			return this.stream.pos + this.header
		};
		c.prototype.posEnd = function() {
			return this.stream.pos + this.header + Math.abs(this.length)
		};
		c.prototype.fakeHover = function(b) {
			this.node.className =
				this.node.className + " hover";
			if(b) this.head.className = this.head.className + " hover"
		};
		c.prototype.fakeOut = function(b) {
			var a = / ?hover/;
			this.node.className = this.node.className.replace(a, "");
			if(b) this.head.className = this.head.className.replace(a, "")
		};
		c.prototype.toHexDOM_sub = function(b, a, c, d, f) {
			if(!(d >= f)) {
				a = e.tag("span", a);
				a.appendChild(e.text(c.hexDump(d, f)));
				b.appendChild(a)
			}
		};
		c.prototype.toHexDOM = function(a) {
			var c = e.tag("span", "hex");
			a === b && (a = c);
			this.head.hexNode = c;
			this.head.onmouseover = function() {
				this.hexNode.className =
					"hexCurrent"
			};
			this.head.onmouseout = function() {
				this.hexNode.className = "hex"
			};
			c.asn1 = this;
			c.onmouseover = function() {
				var b = !a.selected;
				if(b) {
					a.selected = this.asn1;
					this.className = "hexCurrent"
				}
				this.asn1.fakeHover(b)
			};
			c.onmouseout = function() {
				var b = a.selected == this.asn1;
				this.asn1.fakeOut(b);
				if(b) {
					a.selected = null;
					this.className = "hex"
				}
			};
			this.toHexDOM_sub(c, "tag", this.stream, this.posStart(), this.posStart() + 1);
			this.toHexDOM_sub(c, this.length >= 0 ? "dlen" : "ulen", this.stream, this.posStart() + 1, this.posContent());
			if(this.sub ===
				null) c.appendChild(e.text(this.stream.hexDump(this.posContent(), this.posEnd())));
			else if(this.sub.length > 0) {
				var d = this.sub[0],
					f = this.sub[this.sub.length - 1];
				this.toHexDOM_sub(c, "intro", this.stream, this.posContent(), d.posStart());
				for(var d = 0, m = this.sub.length; d < m; ++d) c.appendChild(this.sub[d].toHexDOM(a));
				this.toHexDOM_sub(c, "outro", this.stream, f.posEnd(), this.posEnd())
			}
			return c
		};
		c.prototype.toHexString = function() {
			return this.stream.hexDump(this.posStart(), this.posEnd(), true)
		};
		c.decodeLength = function(b) {
			var a =
				b.get(),
				c = a & 127;
			if(c == a) return c;
			if(c > 3) throw "Length over 24 bits not supported at position " + (b.pos - 1);
			if(c === 0) return -1;
			for(var d = a = 0; d < c; ++d) a = a << 8 | b.get();
			return a
		};
		c.hasContent = function(b, e, m) {
			if(b & 32) return true;
			if(b < 3 || b > 4) return false;
			var g = new a(m);
			b == 3 && g.get();
			if(g.get() >> 6 & 1) return false;
			try {
				var i = c.decodeLength(g);
				return g.pos - m.pos + i == e
			} catch(j) {
				return false
			}
		};
		c.decode = function(b) {
			b instanceof a || (b = new a(b, 0));
			var e = new a(b),
				m = b.get(),
				g = c.decodeLength(b),
				i = b.pos - e.pos,
				j = null;
			if(c.hasContent(m,
					g, b)) {
				var n = b.pos;
				m == 3 && b.get();
				j = [];
				if(g >= 0) {
					for(var p = n + g; b.pos < p;) j[j.length] = c.decode(b);
					if(b.pos != p) throw "Content size is not correct for container starting at offset " + n;
				} else try {
					for(;;) {
						p = c.decode(b);
						if(p.tag === 0) break;
						j[j.length] = p
					}
					g = n - b.pos
				} catch(o) {
					throw "Exception while decoding undefined length content: " + o;
				}
			} else b.pos = b.pos + g;
			return new c(e, i, g, m, j)
		};
		c.test = function() {
			for(var b = [{
						value: [39],
						expected: 39
					}, {
						value: [129, 201],
						expected: 201
					}, {
						value: [131, 254, 220, 186],
						expected: 16702650
					}], e = 0,
					m = b.length; e < m; ++e) {
				var g = new a(b[e].value, 0),
					g = c.decodeLength(g);
				g != b[e].expected && document.write("In test[" + e + "] expected " + b[e].expected + " got " + g + "\n")
			}
		};
		window.ASN1 = c
	})();
	ASN1.prototype.getHexStringValue = function() {
		var b = this.header * 2,
			a = this.length * 2;
		return this.toHexString().substr(b, a)
	};
	p.prototype.parseKey = function(b) {
		try {
			var a = /^\s*(?:[0-9A-Fa-f][0-9A-Fa-f]\s*)+$/.test(b) ? Hex.decode(b) : Base64.unarmor(b),
				c = ASN1.decode(a);
			if(c.sub.length === 9) {
				var e = c.sub[1].getHexStringValue();
				this.n = m(e, 16);
				var g = c.sub[2].getHexStringValue();
				this.e = parseInt(g, 16);
				var i = c.sub[3].getHexStringValue();
				this.d = m(i, 16);
				var h = c.sub[4].getHexStringValue();
				this.p = m(h, 16);
				var l = c.sub[5].getHexStringValue();
				this.q = m(l, 16);
				var j = c.sub[6].getHexStringValue();
				this.dmp1 = m(j, 16);
				var p = c.sub[7].getHexStringValue();
				this.dmq1 = m(p, 16);
				var n = c.sub[8].getHexStringValue();
				this.coeff = m(n, 16)
			} else if(c.sub.length === 2) {
				var o = c.sub[1].sub[0],
					e = o.sub[0].getHexStringValue();
				this.n = m(e, 16);
				g = o.sub[1].getHexStringValue();
				this.e = parseInt(g,
					16)
			} else return false;
			return true
		} catch(q) {
			return false
		}
	};
	p.prototype.getPrivateBaseKey = function() {
		var b = {
			array: [new KJUR.asn1.DERInteger({
				"int": 0
			}), new KJUR.asn1.DERInteger({
				bigint: this.n
			}), new KJUR.asn1.DERInteger({
				"int": this.e
			}), new KJUR.asn1.DERInteger({
				bigint: this.d
			}), new KJUR.asn1.DERInteger({
				bigint: this.p
			}), new KJUR.asn1.DERInteger({
				bigint: this.q
			}), new KJUR.asn1.DERInteger({
				bigint: this.dmp1
			}), new KJUR.asn1.DERInteger({
				bigint: this.dmq1
			}), new KJUR.asn1.DERInteger({
				bigint: this.coeff
			})]
		};
		return(new KJUR.asn1.DERSequence(b)).getEncodedHex()
	};
	p.prototype.getPrivateBaseKeyB64 = function() {
		return N(this.getPrivateBaseKey())
	};
	p.prototype.getPublicBaseKey = function() {
		var b = {
				array: [new KJUR.asn1.DERObjectIdentifier({
					oid: "1.2.840.113549.1.1.1"
				}), new KJUR.asn1.DERNull]
			},
			a = new KJUR.asn1.DERSequence(b),
			b = {
				array: [new KJUR.asn1.DERInteger({
					bigint: this.n
				}), new KJUR.asn1.DERInteger({
					"int": this.e
				})]
			},
			b = {
				hex: "00" + (new KJUR.asn1.DERSequence(b)).getEncodedHex()
			},
			b = new KJUR.asn1.DERBitString(b),
			b = {
				array: [a, b]
			};
		return(new KJUR.asn1.DERSequence(b)).getEncodedHex()
	};
	p.prototype.getPublicBaseKeyB64 = function() {
		return N(this.getPublicBaseKey())
	};
	p.prototype.wordwrap = function(b, a) {
		a = a || 64;
		return !b ? b : b.match(RegExp("(.{1," + a + "})( +|$\n?)|(.{1," + a + "})", "g")).join("\n")
	};
	p.prototype.getPrivateKey = function() {
		var b;
		b = "-----BEGIN RSA PRIVATE KEY-----\n" + (this.wordwrap(this.getPrivateBaseKeyB64()) + "\n");
		return b + "-----END RSA PRIVATE KEY-----"
	};
	p.prototype.getPublicKey = function() {
		var b;
		b = "-----BEGIN PUBLIC KEY-----\n" + (this.wordwrap(this.getPublicBaseKeyB64()) + "\n");
		return b +
			"-----END PUBLIC KEY-----"
	};
	p.prototype.hasPublicKeyProperty = function(b) {
		b = b || {};
		return b.hasOwnProperty("n") && b.hasOwnProperty("e")
	};
	p.prototype.hasPrivateKeyProperty = function(b) {
		b = b || {};
		return b.hasOwnProperty("n") && b.hasOwnProperty("e") && b.hasOwnProperty("d") && b.hasOwnProperty("p") && b.hasOwnProperty("q") && b.hasOwnProperty("dmp1") && b.hasOwnProperty("dmq1") && b.hasOwnProperty("coeff")
	};
	p.prototype.parsePropertiesFrom = function(b) {
		this.n = b.n;
		this.e = b.e;
		if(b.hasOwnProperty("d")) {
			this.d = b.d;
			this.p = b.p;
			this.q = b.q;
			this.dmp1 = b.dmp1;
			this.dmq1 = b.dmq1;
			this.coeff = b.coeff
		}
	};
	var M = function(b) {
		p.call(this);
		b && (typeof b === "string" ? this.parseKey(b) : (this.hasPrivateKeyProperty(b) || this.hasPublicKeyProperty(b)) && this.parsePropertiesFrom(b))
	};
	M.prototype = new p;
	M.prototype.constructor = M;
	q = function(b) {
		b = b || {};
		this.default_key_size = parseInt(b.default_key_size) || 1024;
		this.default_public_exponent = b.default_public_exponent || "010001";
		this.log = b.log || false;
		this.key = null
	};
	q.prototype.setKey = function(b) {
		this.log && this.key &&
			console.warn("A key was already set, overriding existing.");
		this.key = new M(b)
	};
	q.prototype.setPrivateKey = function(b) {
		this.setKey(b)
	};
	q.prototype.setPublicKey = function(b) {
		this.setKey(b)
	};
	q.prototype.decrypt = function(b) {
		try {
			return this.getKey().decrypt(W(b))
		} catch(a) {
			return false
		}
	};
	q.prototype.encrypt = function(b) {
		try {
			return N(this.getKey().encrypt(b))
		} catch(a) {
			return false
		}
	};
	q.prototype.alipayEncrypt = function(b, a, c) {
		try {
			return N(this.getKey().alipayEncrypt(b, a, c))
		} catch(e) {
			return false
		}
	};
	q.prototype.getKey =
		function(b) {
			if(!this.key) {
				this.key = new M;
				if(b && {}.toString.call(b) === "[object Function]") {
					this.key.generateAsync(this.default_key_size, this.default_public_exponent, b);
					return
				}
				this.key.generate(this.default_key_size, this.default_public_exponent)
			}
			return this.key
		};
	q.prototype.getPrivateKey = function() {
		return this.getKey().getPrivateKey()
	};
	q.prototype.getPrivateKeyB64 = function() {
		return this.getKey().getPrivateBaseKeyB64()
	};
	q.prototype.getPublicKey = function() {
		return this.getKey().getPublicKey()
	};
	q.prototype.getPublicKeyB64 =
		function() {
			return this.getKey().getPublicBaseKeyB64()
		};
	e.JSEncrypt = q
})(alipay.security.utils);
(function(e) {
	var a = e.Base64,
		c;
	"undefined" !== typeof module && module.exports && (c = require("buffer").Buffer);
	var g = function(a) {
			for(var c = {}, e = 0, g = a.length; e < g; e++) c[a.charAt(e)] = e;
			return c
		}("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"),
		j = String.fromCharCode,
		i = function(a) {
			if(a.length < 2) {
				var c = a.charCodeAt(0);
				return c < 128 ? a : c < 2048 ? j(192 | c >>> 6) + j(128 | c & 63) : j(224 | c >>> 12 & 15) + j(128 | c >>> 6 & 63) + j(128 | c & 63)
			}
			c = 65536 + (a.charCodeAt(0) - 55296) * 1024 + (a.charCodeAt(1) - 56320);
			return j(240 | c >>> 18 & 7) +
				j(128 | c >>> 12 & 63) + j(128 | c >>> 6 & 63) + j(128 | c & 63)
		},
		n = /[\uD800-\uDBFF][\uDC00-\uDFFFF]|[^\x00-\x7F]/g,
		r = function(a) {
			return a.replace(n, i)
		},
		x = function(a) {
			var c = [0, 2, 1][a.length % 3],
				a = a.charCodeAt(0) << 16 | (a.length > 1 ? a.charCodeAt(1) : 0) << 8 | (a.length > 2 ? a.charCodeAt(2) : 0);
			return ["ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(a >>> 18), "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(a >>> 12 & 63), c >= 2 ? "=" : "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(a >>>
				6 & 63), c >= 1 ? "=" : "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(a & 63)].join("")
		},
		o = e.btoa ? function(a) {
			return e.btoa(a)
		} : function(a) {
			return a.replace(/[\s\S]{1,3}/g, x)
		},
		s = c ? function(a) {
			return(new c(a)).toString("base64")
		} : function(a) {
			return o(r(a))
		},
		A = function(a, c) {
			return !c ? s(a) : s(a).replace(/[+\/]/g, function(a) {
				return a == "+" ? "-" : "_"
			}).replace(/=/g, "")
		},
		t = RegExp("[\u00c0-\u00df][\u0080-\u00bf]|[\u00e0-\u00ef][\u0080-\u00bf]{2}|[\u00f0-\u00f7][\u0080-\u00bf]{3}", "g"),
		y = function(a) {
			switch(a.length) {
				case 4:
					a =
						((7 & a.charCodeAt(0)) << 18 | (63 & a.charCodeAt(1)) << 12 | (63 & a.charCodeAt(2)) << 6 | 63 & a.charCodeAt(3)) - 65536;
					return j((a >>> 10) + 55296) + j((a & 1023) + 56320);
				case 3:
					return j((15 & a.charCodeAt(0)) << 12 | (63 & a.charCodeAt(1)) << 6 | 63 & a.charCodeAt(2));
				default:
					return j((31 & a.charCodeAt(0)) << 6 | 63 & a.charCodeAt(1))
			}
		},
		D = function(a) {
			return a.replace(t, y)
		},
		u = function(a) {
			var c = a.length,
				e = c % 4,
				a = (c > 0 ? g[a.charAt(0)] << 18 : 0) | (c > 1 ? g[a.charAt(1)] << 12 : 0) | (c > 2 ? g[a.charAt(2)] << 6 : 0) | (c > 3 ? g[a.charAt(3)] : 0),
				a = [j(a >>> 16), j(a >>> 8 & 255), j(a & 255)];
			a.length = a.length - [0, 0, 2, 1][e];
			return a.join("")
		},
		G = e.atob ? function(a) {
			return e.atob(a)
		} : function(a) {
			return a.replace(/[\s\S]{1,4}/g, u)
		},
		E = c ? function(a) {
			return(new c(a, "base64")).toString()
		} : function(a) {
			return D(G(a))
		},
		K = function(a) {
			return E(a.replace(/[-_]/g, function(a) {
				return a == "-" ? "+" : "/"
			}).replace(/[^A-Za-z0-9\+\/]/g, ""))
		};
	e.Base64 = {
		VERSION: "2.1.2",
		atob: G,
		btoa: o,
		fromBase64: K,
		toBase64: A,
		utob: r,
		encode: A,
		encodeURI: function(a) {
			return A(a, true)
		},
		btou: D,
		decode: K,
		noConflict: function() {
			var c = e.Base64;
			e.Base64 = a;
			return c
		}
	};
	if("function" === typeof Object.defineProperty) {
		var H = function(a) {
			return {
				value: a,
				enumerable: false,
				writable: true,
				configurable: true
			}
		};
		e.Base64.extendString = function() {
			Object.defineProperty(String.prototype, "fromBase64", H(function() {
				return K(this)
			}));
			Object.defineProperty(String.prototype, "toBase64", H(function(a) {
				return A(this, a)
			}));
			Object.defineProperty(String.prototype, "toBase64URI", H(function() {
				return A(this, true)
			}))
		}
	}
})(alipay.security.utils);
light.has("/alipay/security/rsainput") || function(e) {
	var a = {};
	e.rsainput = light.deriveFrom(e.base, {
		ready: !0,
		render: function(a) {
			light.isFunction(a) && this._readyList.push(a);
			if(this.element = light.get(this.options.id)) {
				this.element.value = "";
				var e = this;
				light.on(this.element, "keydown", function() {
					e.result = null
				})
			} else light.log("error: rsainput element not found");
			light.node(this.element).attr("disabled", !1);
			for(a = this._readyList; a.length;) a.shift().apply(this)
		},
		postInit: function() {
			alipay.security.rsainput.installed = !0;
			this._rsa = new e.utils.JSEncrypt;
			this._rsa.setPublicKey(this.options.PK);
			this._protocolVersion = "2";
			this._TS = e.utils.Base64.decode(this.options.TS);
			var a = this;
			if(this.options.usePcClient)
				if(this.options.alieditUpgradeVersions) alipay.security.utils.pcClient.askScidAndResult({
					scidServer: this.options.scidServer,
					securityChannelServer: this.options.securityChannelServer,
					securityChannelCommand: this.options.securityChannelCommand,
					syncPollingCount: this.options.syncPollingCount,
					syncPollingInterval: this.options.syncPollingInterval,
					syncPollingCount: this.options.syncPollingCount,
					askScidAndResultTimeout: this.options.askScidAndResultTimeout
				}, function(g) {
					a.options.container = light.get(a.options.container);
					if(!g || "0" != g.code) {
						e.edit._notInstalled.call(a);
						e.rsainput.installed = !1;
						try {
							alipay.security.updateEdit = !0, alipay.security.sysCallback()
						} catch(j) {}
					} else if(light.node("input[name=_seaside_gogo_]").val(g.attrs.envData.mac), g = g.attrs.envData.clientVersion.split("."), alieditUpgradeVersions = a.options.alieditUpgradeVersions.split("-"),
						minVersion = alieditUpgradeVersions[0].split("."), maxVersion = alieditUpgradeVersions[1].split("."), needUpdate = function(a, c, e) {
							for(var g = 0; 4 > g && !(parseInt(a[g]) > parseInt(c[g])); g++)
								if(parseInt(a[g]) < parseInt(c[g])) return !1;
							for(g = 0; 4 > g && !(parseInt(a[g]) < parseInt(e[g])); g++)
								if(parseInt(a[g]) > parseInt(e[g])) return !1;
							return !0
						}, needUpdate(g, minVersion, maxVersion)) {
						e.edit._notInstalled.call(a);
						e.rsainput.installed = !1;
						try {
							alipay.security.updateEdit = !0, alipay.security.sysCallback()
						} catch(r) {}
					} else g = light.node(a.options.container).find("input"),
						g.attr("readonly", !1), g.attr("readOnly", !1)
				});
				else {
					var g = light.node("#" + a.options.container).find("input");
					g.attr("readonly", !1);
					g.attr("readOnly", !1);
					alipay.security.utils.pcClient.askScid({
						scidServer: this.options.scidServer,
						securityChannelCommand: this.options.securityChannelCommand
					})
				}
			else if(this.options.useExtension) {
				var j = alipay.security.utils.chromeExtension;
				j.checkExtension(function(e) {
					e ? j.checkControl(function(e) {
							e ? (a.setMacInfo(), a.options.alieditUpgradeVersions ? j.execute({
									command: "version"
								},
								function(e) {
									if(e && e.version) {
										var g = a.options.alieditUpgradeVersions.split("-"),
											e = e.version.split("."),
											i = g[0].split("."),
											g = g[1].split(".");
										a.isInRange(e, i, g) ? a.showInstallExtensionMask(!0) : (g = light.node("#" + a.options.container).find("input"), g.attr("readonly", !1), g.attr("readOnly", !1))
									} else g = light.node("#" + a.options.container).find("input"), g.attr("readonly", !1), g.attr("readOnly", !1)
								}) : (e = light.node("#" + a.options.container).find("input"), e.attr("readonly", !1), e.attr("readOnly", !1))) : a.showInstallExtensionMask(!!a.options.alieditUpgradeVersions)
						}) :
						a.showInstallExtensionMask(!!a.options.alieditUpgradeVersions, a.options.useSilentInstallation)
				})
			} else g = light.node("#" + a.options.container).find("input"), g.attr("readonly", !1), g.attr("readOnly", !1);
			this.options.useKS && alipay.security.utils.keyseq.start(this.options.id)
		},
		isInRange: function(a, e, j) {
			for(var i = 0; 4 > i && !(parseInt(a[i]) > parseInt(e[i])); i++)
				if(parseInt(a[i]) < parseInt(e[i])) return !1;
			for(i = 0; 4 > i && !(parseInt(a[i]) < parseInt(j[i])); i++)
				if(parseInt(a[i]) > parseInt(j[i])) return !1;
			return !0
		},
		setMacInfo: function() {
			var a =
				alipay.security.utils.chromeExtension;
			a.execute({
				command: "mac"
			}, function(a) {
				a && a.mac ? ((/XOR_1_0{30}_/.test(a.mac) || 344 === a.mac.length) && light.node("input[name=_seaside_gogo_]").val(a.mac), light.track("auth-ex-mac-ok")) : light.track("auth-ex-mac-err")
			});
			a.checkControl(function(a) {
				a && light.node("input[name=security_chrome_extension_alicert_installed]").val("true")
			}, "alicert");
			light.node("input[name=security_chrome_extension_aliedit_installed]").val("true")
		},
		showInstallExtensionMask: function(a, g) {
			function j() {
				x ?
					window.open(o, "_blank") : (new light.dialog({
						targetFrame: s,
						iframeSrc: o + "&_xbox=true"
					})).show();
				G || (G = !0, alipay.security.utils.chromeExtension.pollCheckControll(function() {
					G = !1;
					u.style.display = "none";
					r.firstElementChild.style.display = "";
					var a = light.node("#" + i.options.container).find("input");
					a.attr("readonly", !1);
					a.attr("readOnly", !1);
					i.setMacInfo();
					e.rsainput.installed = !0
				}, "aliedit", i.options.alieditUpgradeVersions))
			}
			var i = this;
			e.rsainput.installed = !1;
			try {
				alipay.security.updateEdit = !0, alipay.security.sysCallback()
			} catch(n) {}
			var r =
				document.getElementById(this.options.container),
				x = !1,
				o = alipay.security.securityCenterServer + "/sc/chrome/extensionInstallDialog.htm",
				s = document,
				o = o + ("?version=" + (a ? "beta" : "stable"));
			i.options.alieditUpgradeVersions && (o += "&upgrade=" + i.options.alieditUpgradeVersions);
			g && (o = alipay.security.npedit.info.installationPage + "?version=beta");
			try {
				if(window.top.document.body) {
					var s = window.top.document,
						A = (light.debug ? "http://assets.dev.alipay.net" : "https://a.alipayobjects.com") + ("/al/alice.components.security-edit-1.4" +
							(light.debug ? "-src" : "") + ".css"),
						t = s.head || s.getElementsByTagName("head")[0] || s.documentElement,
						y = s.createElement("link");
					y.setAttribute("charset", "utf-8");
					y.setAttribute("rel", "stylesheet");
					y.setAttribute("href", A);
					t.appendChild(y)
				}
			} catch(D) {
				x = !0
			}
			var u = document.createElement("a");
			u.setAttribute("href", o);
			u.setAttribute("target", "_blank");
			u.className = "aliedit-install";
			u.innerHTML = "\u8bf7\u70b9\u6b64\u5b89\u88c5\u63a7\u4ef6";
			r.firstElementChild.style.display = "none";
			r.appendChild(u);
			var G = !1;
			u.addEventListener("click",
				function(a) {
					j();
					a.preventDefault()
				}, !1);
			alipay.security.edit.detect = function() {
				j()
			}
		},
		getInfo: function() {
			return ""
		},
		getCi1: function() {
			return ""
		},
		getCi2: function() {
			return ""
		},
		getVersion: function() {
			return ""
		},
		getKeySeq: function() {
			if(this.options.useKS) {
				var a = '{"type":"js", "in":"' + alipay.security.utils.keyseq.get(this.options.id) + '"}';
				return alipay.security.utils.Base64.encode(alipay.security.utils.keyseq.ksk(this.options.ksk, a))
			}
			return null
		},
		getPassword: function() {
			if(!this.result) {
				var c = this.element.value;
				if(c) {
					var e = this._protocolVersion + this._TS + c;
					this.result = a[e] || (a[e] = this._rsa.alipayEncrypt(this._protocolVersion, this._TS, c))
				} else this.result = "";
				var j = this.result,
					i = this.element.value;
				this.element.value = "";
				var n = this;
				setTimeout(function() {
					light.get(n.options.hidnId).value != j && (n.element.value = i, n.result = null)
				});
				setTimeout(function() {
					n.result = null
				}, 3E3)
			}
			return this.result
		}
	}, {
		Name: "rsainput",
		installed: !1
	})
}(alipay.security);
light.has("/alipay/security/utils/pcClient") || function(f) {
	light.has("/alipay/security/utils") || (alipay.security.utils = {});
	var i = function(a, b) {
			var c = 1,
				d = function() {
					var h = this;
					light.request(a.securityChannelServer, {}, {
						format: "jsonp",
						success: function(e) {
							if(!a.timeoutFlag1) {
								c++;
								if(c > (a.syncPollingCount || 3)) {
									a.timeoutFlag2 = true;
									b && b.call(this, "")
								} else if(e && e.code == "001005") setTimeout(function() {
									d.call(h)
								}, a.syncPollingInterval || 500);
								else {
									a.timeoutFlag2 = true;
									b && b.call(this, e)
								}
							}
						}
					})
				};
			d.call(this)
		},
		g = {
			askScid: function(a,
				b) {
				var c = false,
					d = false;
				if(a.securityChannelCommand) a.scidServer = a.scidServer + "?" + a.securityChannelCommand;
				light.request(a.scidServer, {}, {
					format: "jsonp",
					success: function(a) {
						if(!c) {
							d = true;
							b && b.call(this, a);
							light.node("input[name=scid]").val(a.attrs.scid)
						}
					},
					fail: function() {
						b && b.call(this, "")
					}
				});
				setTimeout(function() {
					if(!d) {
						c = true;
						b && b.call(this, "")
					}
				}, a.askScidTimeout || 5E3)
			},
			askScidAndResult: function(a, b) {
				a.timeoutFlag1 = false;
				a.timeoutFlag2 = false;
				if(a.securityChannelCommand) a.scidServer = a.scidServer +
					"?" + a.securityChannelCommand;
				light.request(a.scidServer, {}, {
					format: "jsonp",
					success: function(c) {
						if(!a.timeoutFlag1) {
							a.askScidAndResultTimeout = a.askScidAndResultTimeout || 5E3;
							light.node("input[name=scid]").val(c.attrs.scid);
							a.securityChannelServer = a.securityChannelServer + "?" + (c.attrs && c.attrs.nextCmd);
							i(a, b)
						}
					},
					fail: function() {
						b && b.call(this, "")
					}
				});
				setTimeout(function() {
					if(!a.timeoutFlag2) {
						a.timeoutFlag1 = true;
						b && b.call(this, "")
					}
				}, a.askScidAndResultTimeout || 5E3)
			},
			sendScRequest: function(a, b) {
				if(a) {
					var c =
						new Image;
					c.src = a + "/api/doNotSign.htm?serviceId=trackCmd&version=1&data=" + encodeURIComponent(alipay.security.utils.Base64.encode('{"from":"web","timestamp":' + parseInt(b) + "}"));
					window["pcclient_" + (new Date).getTime().toString(16)] = c
				}
			}
		},
		g = f.utils.pcClient = light.deriveFrom(f.base, {}, g)
}(window.alipay.security);
light.has("/alipay/security/cdo") || function(d) {
	var e = alipay.security.downloadServer,
		c = function() {
			var c = light.client.info;
			return {
				Name: "cert.cdo",
				defaultMethod: "Do",
				info: {
					activex: "AliCertDO.AliCertDOCtrl",
					plugin: "npalicdo plugin",
					classId: "08d512d2-7d97-4e22-b7db-82791106c086",
					type: "application/npalicdo",
					version: "1.0.0.1",
					codebase: e + "/ukey/cf/alicert.cab",
					downloadUrl: c.os.windows ? e + "/ukey/cf/alicert.exe" : e + "/sec/cert/alicert.dmg"
				},
				template: c.engine.trident ? '<object id="{id}" type="{type}" classid="clsid:{classId}" codebase="{codebase}" width="0" height="0"></object>' : '<object id="{id}" type="{type}" width="0" height="0"></object>',
				message: {
					"0": "\u60a8\u9700\u8981\u91cd\u65b0\u5b89\u88c5\u6570\u5b57\u8bc1\u4e66\u63a7\u4ef6",
					1: "\u64cd\u4f5c\u7cfb\u7edf\u6216\u6d4f\u89c8\u5668\u4e0d\u652f\u6301",
					2: "\u63d2\u4ef6\u6ca1\u6709\u5b89\u88c5",
					"5001-10000": "\u60a8\u7684\u8fd0\u884c\u73af\u5883\u914d\u7f6e\u4e0d\u6b63\u786e",
					"10001-11000": "\u63a7\u4ef6\u8fd0\u884c\u9519\u8bef",
					"11001-12000": "\u8c03\u7528\u53c2\u6570\u9519\u8bef"
				},
				available: !!(c.os.windows || c.os.macos && 6 <
					c.os.macos[1]),
				actions: {
					restore: "custom"
				},
				defaults: {
					msgMode: "dialog"
				},
				handlers: {
					12004: light.noop
				},
				updateQueryInterval: 1E3,
				updateHandler: null,
				properties: {
					handlers: {}
				}
			}
		}(),
		c = d.cdo = light.deriveFrom(d.base, {
			execute: function(d, a) {
				var b = null;
				if(d)
					if("object" === typeof d ? (b = d.service, d = light.param(d)) : b = light.unparam(d).service, b) {
						light.log("Calling %s: %s.", b, d);
						var i = "";
						try {
							i = this.element.Do(d)
						} catch(e) {
							light.log("Exception thrown from %s: %s.", b, g.rawData);
							this.catchError(b, e);
							return
						}
						var g = i ? light.unparam(i) : {};
						g.rawData = i || "";
						g.api = b;
						var f = g.status = parseInt(g.status, 10);
						isNaN(f) && (f = -1);
						light.log("Result from %s: (%d) %s.", b, f, i);
						if(f) {
							var j = this;
							101 <= f && 1E3 > f ? (!this.backupCmd && "update" != b && (this.backupCmd = {
								command: d,
								callback: a
							}), function() {
								c.updateHandler && c.updateHandler.call(j, true, g.message);
								setTimeout(function() {
									j.execute(g.rawData)
								}, c.updateQueryInterval)
							}()) : (this.catchError(b, g, !0), g.msg = this.getMessage(f), (b = !f ? null : this.handlers[f] || this.handlers["*"] || this.__type.handlers[f] || this.__type.handlers["*"]) ?
								b.call(this, g) : this.showMessage(g))
						} else this.backupCmd ? (c.updateHandler && c.updateHandler.call(this, !1), b = this.backupCmd, delete this.backupCmd, light.log("Call previous command, see next log."), this.execute(b.command, b.callback)) : a && a.call(this, g)
					} else {
						if(light.debug) throw "Invalid command passed";
					}
				else if(light.debug) throw "Empty command passed";
			},
			send: function(c, a, b) {
				a = a || {};
				a.service = c;
				a.version = 1;
				this.execute(a, b)
			}
		}, c);
	d.refreshStatus(c)
}(alipay.security);
light.has("/alipay/security/enroll") || function(d) {
	var e = alipay.security.downloadServer,
		c = light.client.info,
		e = {
			activex: "Itrusenroll.CertEnroll",
			plugin: "iTrusChina iTrusPTA,XEnroll,iEnroll,hwPTA,UKeyInstalls Firefox Plugin",
			classId: "7978461C-CC22-48F2-BC69-02220D3E101D",
			type: "application/Itrusenroll.CertEnroll.Version.1",
			version: "1.0.0.1",
			codebase: e + "/ukey/cert/1007/ie/PTA.cab",
			downloadUrl: e + "/ukey/cert/1007/ie/iTrusPTA.exe"
		},
		h = c.engine.trident ? '<object id="{id}" type="{type}" classid="clsid:{classId}" codebase="{codebase}" width="0" height="0"></object>' :
		'<object id="{id}" type="{type}" width="0" height="0"></object>';
	availableObj = {
		os: !!c.os.windows,
		browser: !!c.engine.trident || !!c.browser.firefox || !!c.browser.chrome
	};
	d.enroll = light.deriveFrom(d.base, {}, {
		Name: "cert.enroll",
		defaultMethod: "Version",
		info: e,
		template: h,
		message: null,
		availableObj: availableObj,
		available: availableObj.os && availableObj.browser
	});
	d.refreshStatus(d.enroll)
}(alipay.security);
light.has("/alipay/security/pta") || function(d) {
	var e = alipay.security.downloadServer,
		c = light.client.info,
		h = function() {
			var a = {
				os: !!c.os.windows,
				browser: !(!c.engine.trident && !c.browser.firefox && !c.browser.chrome)
			};
			return {
				Name: "cert.pta",
				defaultMethod: "Version",
				info: {
					activex: "PTA.iTrusPTA",
					plugin: "iTrusChina iTrusPTA,XEnroll,iEnroll,hwPTA,UKeyInstalls Firefox Plugin",
					classId: "1e0dffcf-27ff-4574-849b-55007349feda",
					type: "application/PTA.iTrusPTA.Version.1",
					version: "1.0.0.1",
					codebase: e + "/ukey/cert/1007/ie/PTA.cab",
					downloadUrl: c.engine.trident ? e + "/ukey/cert/1007/ie/iTrusPTA.exe?t=20110907.exe" : e + "/ukey/cert/1007/ff/iTrusPTA_f_c.exe?t=20110714.exe"
				},
				template: c.engine.trident ? '<object id="{id}" type="{type}" classid="clsid:{classId}" codebase="{codebase}" width="0" height="0"></object>' : '<object id="{id}" type="{type}" width="0" height="0"></object>',
				message: {
					"-2147483135": "\u7528\u6237\u53d6\u6d88\u64cd\u4f5c",
					"-2146434962": "\u7528\u6237\u53d6\u6d88\u64cd\u4f5c"
				},
				handlers: {},
				availableObj: a,
				available: a.os && a.browser,
				properties: {
					handlers: {}
				}
			}
		}();
	d.pta = light.deriveFrom(d.base, {
		getCerts: function(a, b, c) {
			if(!a && !b && !c) return null;
			try {
				var d = this.api("Filter");
				if(!d) return null;
				d.Clear();
				a && (8 < parseInt(a.substr(0, 1), 16) && (a = "00" + a), d.SerialNumber = a);
				b && (d.Issuer = b);
				c && (d.Subject = c);
				return this.api("MyCertificates")
			} catch(e) {
				this.catchError("filter", e)
			}
			return null
		},
		getCert: function(a, b, c) {
			a = this.getCerts(a, b, c);
			b = null;
			a && a.Count && (b = a(0));
			return b
		},
		getCertByBlurSearch: function(a, b, c, d) {
			if(a = this.getCert(a, b) || this.getCert(a)) return a;
			if(!d) return null;
			certs = this.getCerts("", b);
			for(b = 0; b < certs.Count; b++)
				if(-1 != certs(b).Subject.indexOf(d)) return certs(b);
			return null
		},
		sign: function(a, b, c, d, e) {
			if(!a) throw "invalid param";
			b = this.getCertByBlurSearch(b, c, d, e);
			if(!b) return "";
			try {
				return b.SignLogonData(a, 4)
			} catch(f) {
				(a = !f.number ? null : this.handlers[f.number] || this.handlers["*"] || this.__type.handlers[f.number] || this.__type.handlers["*"]) && a.call(this, f), this.catchError("sign", f)
			}
			return ""
		}
	}, h);
	d.refreshStatus(d.pta)
}(alipay.security);
light.has("/alipay/security/hwpta") || function(d) {
	var e = alipay.security.downloadServer,
		c = light.client.info,
		h = function() {
			var a = {
					activex: "HwPTA.iTrusHwPTA",
					classId: "EF7BC8AC-5BDC-4AED-AD63-A9B3AE7A768C",
					version: "1,1,0,14",
					codebase: e + "/ukey/hwPTA.cab",
					downloadUrl: e + "/ukey/cert/1007/ie/iTrusPTA.exe?t=20110907.exe",
					driverUrls: {}
				},
				b = {
					os: !!c.os.windows,
					browser: !!c.engine.trident
				};
			a.driverUrls["Watchdata AliPay CSP v3.3"] = e + "/ukey/0818/hwWDkey.exe";
			a.driverUrls["EnterSafe ePass2001 for TWCX CSP v1.0"] = e + "/ukey/0818/hwEpass2001.exe";
			a.driverUrls["HaiTai Cryptographic Service Provider"] = e + "/ukey/0818/hwHaikey.exe";
			return {
				Name: "ukey.pta",
				defaultMethod: "DetectKeys",
				info: a,
				template: '<object id="{id}" type="{type}" classid="clsid:{classId}" codebase="{codebase}" width="0" height="0"></object>',
				message: null,
				availableObj: b,
				available: b.os && b.browser
			}
		}();
	d.hwpta = light.deriveFrom(d.base, {
		checkDriver: function() {
			try {
				return this.element.checkCSP(0)
			} catch(a) {
				this.catchError("checkDriver", a)
			}
			return !1
		},
		getKeyNum: function() {
			try {
				return this.element.DetectKeys()
			} catch(a) {
				this.catchError("getKeyNum",
					a)
			}
			return 0
		},
		getDriverName: function(a) {
			try {
				return this.element.GetKeyCSPName(a || 0)
			} catch(b) {
				this.catchError("getDriverName", b)
			}
			return ""
		},
		getDriverUrl: function() {
			var a = h.info.driverUrls,
				b = this.getDriverName(),
				c;
			for(c in a)
				if(b == c) return a[c];
			return ""
		},
		deleteCert: function(a, b) {
			try {
				return this.element.deleteCertificateByUserID(a, b)
			} catch(c) {
				this.catchError("deleteCert", c)
			}
			return !1
		},
		importAdminPIN: function(a, b) {
			try {
				return this.element.importAdminPIN(a, b)
			} catch(c) {
				this.catchError("importAdminPIN", c)
			}
			return 0
		},
		exportTempPubkey: function() {
			try {
				return this.element.exportTempPubkey()
			} catch(a) {
				this.catchError("exportTempPubkey", a)
			}
			return ""
		}
	}, h);
	d.refreshStatus(d.hwpta)
}(alipay.security);
light.has("/alipay/security/otp") || function(b) {
	members = {
		ready: !0,
		render: function(a) {
			light.isFunction(a) && this._readyList.push(a);
			this.element = light.get(this.options.id);
			for(a = this._readyList; a.length;) a.shift().apply(this)
		},
		getValue: function() {
			return {
				otpPassword: this.element.value
			}
		}
	};
	b.otp = light.deriveFrom(b.base, members, {
		Name: "otp"
	})
}(alipay.security);
light.has("/alipay/security/mobile") || function(b, k) {
	try {
		window == window.parent && b.client.storage.set("mobileSendTime", -1)
	} catch(i) {}
	var a = {
			Name: "mobile",
			defaults: {
				id: "",
				autoSend: !0,
				isBind: "",
				ajaxUrl: "",
				countdownBefore: null,
				countdownAfter: null,
				requestBefore: null,
				requestAfter: null
			}
		},
		d = {
			sms: {
				className: ".sms-btn",
				btnText: "\u91cd\u65b0\u83b7\u53d6\u77ed\u4fe1",
				interval: 120,
				prompt_send: "\u6821\u9a8c\u7801\u5df2\u53d1\u9001\uff0c30\u5206\u949f\u5185\u8f93\u5165\u6709\u6548\uff0c\u8bf7\u52ff\u6cc4\u9732",
				prompt_default: "\u6821\u9a8c\u7801\u662f6\u4f4d\u6570\u5b57\uff0c30\u5206\u949f\u5185\u8f93\u5165\u6709\u6548\uff0c\u8bf7\u52ff\u6cc4\u9732"
			},
			phone: {
				className: ".phone-btn",
				btnText: "\u4f7f\u7528\u8bed\u97f3\u83b7\u53d6",
				interval: 120,
				prompt_send: "\u652f\u4ed8\u5b9d\u5c06\u5411\u60a8\u7684\u624b\u673a\u62e8\u6253\u7535\u8bdd\u5e76\u64ad\u62a5\u6821\u9a8c\u7801\u3002<br />\u6765\u7535\u53f7\u7801\u4e3a\uff1a0571-26883721,\u8bf7\u7a0d\u5019...",
				prompt_default: "\u6821\u9a8c\u7801\u662f6\u4f4d\u6570\u5b57\uff0c30\u5206\u949f\u5185\u8f93\u5165\u6709\u6548\uff0c\u8bf7\u52ff\u6cc4\u9732"
			}
		};
	a.properties = {
		targets: []
	};
	a = b.register("/alipay/security/mobile", window, b.deriveFrom(k.base, {
		ready: !0,
		render: function(c) {
			b.isFunction(c) && this._readyList.push(c);
			this.element = this.options.uniqElement;
			for(c = this._readyList; c.length;) c.shift().apply(this)
		},
		getValue: function() {
			return {
				mobileAckCode: this.element.value
			}
		},
		postInit: function() {
			var c = this,
				a = this.options;
			this.container = b.node(this.options.uniqElement).parent(".ui-form-item");
			this.itemExp = this.container.find(".ui-form-explain");
			b.each(d, function(b,
				d) {
				var g = c.container.find(d.className);
				g.length && (g.type = b, !a.defaultType && (a.defaultType = b), c.targets.push(g))
			});
			this.targets.length || b.log("No mode used.");
			a.autoSend && this.request("sms");
			this.bind()
		},
		bind: function() {
			var c = this,
				a = this.options;
			this.options.autoSend || this.container.find(".send-btn").click(function() {
				b.node(this).addClass("fn-hide");
				c.container.find(".ui-form-field, .ui-form-explain").removeClass("fn-hide");
				c.request("sms")
			});
			this.container.find(".reSend-btn").click(function(d) {
				d.cancel();
				b.node(this).addClass("fn-hide");
				c.container.find(".sms-btn, .phone-btn").removeClass("fn-hide");
				c.sendSuccess(a.defaultType);
				c.countdown(a.defaultType)
			});
			b.each(this.targets, function(b, a) {
				a.click(function() {
					c.send(a.type)
				})
			});
			b.ready(function() {
				b.node(".phone-btn").length && (c.pop = new b.pop({
					targets: b.node(".phone-btn"),
					className: "ui-securitycore",
					width: 400
				}))
			})
		},
		send: function(c) {
			c = c || this.options.defaultType;
			this.countdown(c);
			this.request(c)
		},
		countdown: function(c) {
			var b = this,
				a = b.options,
				c = c || a.defaultType,
				f = d[c].interval;
			a.countdownBefore && a.countdownBefore();
			(function() {
				0 < f-- ? (b.toggleBtnUI(f), setTimeout(arguments.callee, 1E3)) : (b.updatePrompt(c, "prompt_default"), b.toggleBtnUI(f, !0), b.container.removeClass("ui-form-item-success"), a.countdownAfter && a.countdownAfter())
			})()
		},
		toggleBtnUI: function(c, a) {
			var h = this,
				f, g = a ? "removeClass" : "addClass";
			b.each(this.targets, function(b, j) {
				f = a ? d[j.type].btnText : "\uff08" + c + "\u79d2\u540e\uff09" + d[j.type].btnText;
				a || h.pop && h.pop.hide();
				j[g]("ui-checkcode-messagecode-disabled-btn").attr("disabled", !a).attr("value", f)
			})
		},
		updatePrompt: function(a, b) {
			this.container.find(".ui-form-explain").html(d[a][b])
		},
		request: function(a) {
			if(window != window.parent) {
				var e = (new Date).getTime(),
					h = Number(b.client.storage.get("mobileSendTime"));
				if(0 > e - h) {
					this.sendSuccess(a);
					return
				}
			}
			var f = this,
				g = this.options,
				e = {},
				a = a || g.defaultType;
			g.requestBefore && g.requestBefore();
			this.inputMobileNo && (e.inputMobileNo = this.inputMobileNo);
			e.type = a;
			e.securityId = b.node(this.options.uniqElement).parent(".J-securitycoreMain").attr("data-request");
			e.rnd = Math.random();
			e.validateProductName = this.options.productName;
			b.request(g.ajaxUrl, e, {
				method: "JSONP",
				success: function(e) {
					if(e.info.sent) {
						try {
							window != window.parent ? b.client.storage.set("mobileSendTime", (new Date).getTime()) : b.client.storage.set("mobileSendTime", -1)
						} catch(h) {}
						f.sendSuccess(a)
					} else f.showError(e.info);
					if(d[a].interval <= 0) d[a].interval = 120;
					var i = setInterval(function() {
						d[a].interval--;
						d[a].interval <= 0 && clearInterval(i)
					}, 1E3);
					g.requestAfter && f.options.requestAfter(e)
				}
			})
		},
		showError: function(a) {
			this.itemExp.html(a.errorMessage);
			this.container.removeClass("ui-form-item-success").addClass("ui-form-item-error")
		},
		sendSuccess: function(a) {
			a = a || this.options.defaultType;
			this.container.removeClass("ui-form-item-error").addClass("ui-form-item-success");
			this.updatePrompt(a, "prompt_send")
		}
	}, a))
}(window.light, alipay.security);
light.has("/alipay/security/credibleMobile") || function(b) {
	try {
		window == window.parent && b.client.storage.set("credibleMobileSendTime", -1)
	} catch(k) {}
	var i = function() {
		this.init.apply(this, arguments);
		this.bind()
	};
	i.prototype = {
		_cg: {
			item: "ui-form-item",
			itemSuccess: "ui-form-item-success",
			itemError: "ui-form-item-error",
			itemExp: "ui-form-explain"
		},
		init: function(a) {
			a = this.opt = a;
			a.dataId = a.id + (new Date).getTime() + Math.floor(1E3 * Math.random());
			b.node("[id=" + a.id + "]:not([data-id]):first").attr("data-id", a.dataId);
			this.opt.uniqElement = b.node("[data-id=" + a.dataId + "]:first")[0];
			this.element = this.opt.uniqElement;
			this.container = b.node(this.element).parent("." + this._cg.item);
			this.validateBtn = this.container.find(".validate-btn");
			this.itemExp = this.container.find("." + this._cg.itemExp);
			this.preExp = this.itemExp.html() || "";
			this.opt.mobile ? (this.opt.mobile.origin = "credible", this.opt.mobile.credibleValidate = !1, this.opt.mobile.credibleMobile = this) : b.log("Mobile did not start.")
		},
		bind: function() {
			var a = this;
			this.validateBtn.click(function() {
				a.validateNum()
			});
			b.node(this.element).focus(function() {
				a.showDefault()
			})
		},
		validateNum: function() {
			var a = this.element.value;
			0 === a.replace(/[^\x00-\xff]/g, "**").length ? this.showError({
				msg: "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801\u3002"
			}) : /\d{11}/.test(a) ? this.request() : this.showError({
				msg: "\u624b\u673a\u53f7\u7801\u6709\u8bef\u3002"
			})
		},
		request: function() {
			var a = this,
				d = b.trim(this.element.value),
				c = {};
			if(window != window.parent) {
				var e = (new Date).getTime(),
					h = Number(b.client.storage.get("credibleMobileSendTime")),
					f = b.client.storage.get("credibleMobileNo");
				if(d == f && 0 > e - h) {
					this.validateNumSuc({
						info: {
							validated: !0
						}
					});
					return
				}
			}
			c.inputMobileNo = d;
			c.securityId = b.node(this.opt.uniqElement).parent(".J-securitycoreMain").attr("data-request");
			c.validateProductName = "ctu_mobile";
			b.request(this.opt.ajaxUrl, c, {
				method: "JSONP",
				success: function(c) {
					if(c.info.validated) try {
						window != window.parent ? (b.client.storage.set("credibleMobileSendTime", (new Date).getTime()), b.client.storage.set("credibleMobileNo", d)) : b.client.storage.set("credibleMobileSendTime", -1)
					} catch(e) {}
					a.validateNumSuc(c)
				}
			})
		},
		validateNumSuc: function(a) {
			a.info.validated ? (this.container.find(".ui-form-explain").addClass("fn-hide"), this.container.find(".ui-form-field").addClass("ui-form-text").html(this.element.value), this.container.addClass(this._cg.itemSuccess), b.node(".mobile-section .ui-form-item-counter").removeClass("fn-hide"), this.opt.mobile ? (this.opt.mobile.credibleValidate = !0, this.opt.mobile.inputMobileNo = b.trim(this.element.value), this.opt.mobile.sendSuccess()) : b.log("Mobile did not start.")) : this.error(a)
		},
		error: function(a) {
			var a =
				a.info,
				b = "";
			5 <= a.errorCount && this.validateBtn.addClass("ui-checkcode-messagecode-disabled-btn").attr("disabled", !0);
			b = b || a.errorMessage;
			this.showError({
				code: a.errorCode,
				msg: b
			})
		},
		showError: function(a) {
			this.itemExp.html(a.msg);
			this.container.addClass(this._cg.itemError)
		},
		showDefault: function() {
			this.itemExp.html(this.preExp);
			this.container.removeClass(this._cg.itemError)
		}
	};
	b.register("/alipay/security/credibleMobile", window, i)
}(window.light);
light.has("/alipay/security/ctuMobile") || function(b, j) {
	try {
		window == window.parent && b.client.storage.set("ctuMobileSendTime", -1)
	} catch(k) {}
	var h = {
			Name: "ctuMobile",
			defaults: {
				id: "",
				autoSend: !0,
				isBind: "",
				ajaxUrl: "",
				countdownBefore: null,
				countdownAfter: null,
				requestBefore: null,
				requestAfter: null
			}
		},
		f = {
			sms: {
				className: ".sms-btn",
				btnText: "\u91cd\u65b0\u83b7\u53d6\u77ed\u4fe1",
				interval: 120,
				prompt_send: "\u6821\u9a8c\u7801\u5df2\u53d1\u9001\uff0c30\u5206\u949f\u5185\u8f93\u5165\u6709\u6548\uff0c\u8bf7\u52ff\u6cc4\u9732",
				prompt_default: "\u6821\u9a8c\u7801\u662f6\u4f4d\u6570\u5b57\uff0c30\u5206\u949f\u5185\u8f93\u5165\u6709\u6548\uff0c\u8bf7\u52ff\u6cc4\u9732"
			},
			phone: {
				className: ".phone-btn",
				btnText: "\u4f7f\u7528\u8bed\u97f3\u83b7\u53d6",
				interval: 120,
				prompt_send: "\u652f\u4ed8\u5b9d\u5c06\u5411\u60a8\u7684\u624b\u673a\u62e8\u6253\u7535\u8bdd\u5e76\u64ad\u62a5\u6821\u9a8c\u7801\u3002<br />\u6765\u7535\u53f7\u7801\u4e3a\uff1a0571-26883721,\u8bf7\u7a0d\u5019...",
				prompt_default: "\u6821\u9a8c\u7801\u662f6\u4f4d\u6570\u5b57\uff0c30\u5206\u949f\u5185\u8f93\u5165\u6709\u6548\uff0c\u8bf7\u52ff\u6cc4\u9732"
			}
		};
	h.properties = {
		targets: []
	};
	h = b.register("/alipay/security/ctuMobile", window, b.deriveFrom(j.base, {
		ready: !0,
		render: function(a) {
			b.isFunction(a) && this._readyList.push(a);
			this.element = this.options.uniqElement;
			for(a = this._readyList; a.length;) a.shift().apply(this)
		},
		getValue: function() {
			return {
				mobileAckCode: this.element.value
			}
		},
		postInit: function() {
			var a = this,
				c = this.options;
			this.container = b.node(this.options.uniqElement).parent(".ui-form-item");
			this.itemExp = this.container.find(".ui-form-explain");
			b.each(f, function(b,
				d) {
				var e = a.container.find(d.className);
				e.length && (e.type = b, !c.defaultType && (c.defaultType = b), a.targets.push(e))
			});
			this.targets.length || b.log("No mode used.");
			c.autoSend && this.request("sms");
			this.bind()
		},
		bind: function() {
			var a = this,
				c = this.options;
			this.options.autoSend || this.container.find(".send-btn").click(function() {
				b.node(this).addClass("fn-hide");
				a.container.find(".ui-form-field, .ui-form-explain").removeClass("fn-hide");
				a.request("sms")
			});
			this.container.find(".reSend-btn").click(function(g) {
				g.cancel();
				b.node(this).addClass("fn-hide");
				a.container.find(".sms-btn, .phone-btn").removeClass("fn-hide");
				a.sendSuccess(c.defaultType);
				a.countdown(c.defaultType)
			});
			b.each(this.targets, function(c, b) {
				b.click(function() {
					a.send(b.type)
				})
			});
			b.ready(function() {
				b.node(".phone-btn").length && (a.pop = new b.pop({
					targets: b.node(".phone-btn"),
					className: "ui-securitycore",
					width: 400
				}))
			})
		},
		send: function(a) {
			a = a || this.options.defaultType;
			this.countdown(a);
			this.request(a)
		},
		countdown: function(a) {
			var c = this,
				b = c.options,
				a = a || b.defaultType,
				d = f[a].interval;
			b.countdownBefore && b.countdownBefore();
			(function() {
				0 < d-- ? (c.toggleBtnUI(d), setTimeout(arguments.callee, 1E3)) : (c.updatePrompt(a, "prompt_default"), c.toggleBtnUI(d, !0), c.container.removeClass("ui-form-item-success"), b.countdownAfter && b.countdownAfter())
			})()
		},
		toggleBtnUI: function(a, c) {
			var g = this,
				d, e = c ? "removeClass" : "addClass";
			b.each(this.targets, function(b, i) {
				d = c ? f[i.type].btnText : "\uff08" + a + "\u79d2\u540e\uff09" + f[i.type].btnText;
				c || g.pop && g.pop.hide();
				i[e]("ui-checkcode-messagecode-disabled-btn").attr("disabled", !c).attr("value", d)
			})
		},
		updatePrompt: function(a, b) {
			this.container.find(".ui-form-explain").html(f[a][b])
		},
		request: function(a) {
			if(window != window.parent) {
				var c = (new Date).getTime(),
					g = Number(b.client.storage.get("ctuMobileSendTime"));
				if(0 > c - g) {
					this.sendSuccess(a);
					return
				}
			}
			var d = this,
				e = this.options,
				c = {},
				a = a || e.defaultType;
			e.requestBefore && e.requestBefore();
			this.inputMobileNo && (c.inputMobileNo = this.inputMobileNo);
			c.type = a;
			c.securityId = b.node(this.options.uniqElement).parent(".J-securitycoreMain").attr("data-request");
			c.rnd = Math.random();
			c.validateProductName = "ctu_mobile";
			b.request(e.ajaxUrl, c, {
				method: "JSONP",
				success: function(c) {
					if(c.info.sent) {
						try {
							window != window.parent ? b.client.storage.set("ctuMobileSendTime", (new Date).getTime()) : b.client.storage.set("ctuMobileSendTime", -1)
						} catch(g) {}
						d.sendSuccess(a)
					} else d.showError(c.info);
					if(f[a].interval <= 0) f[a].interval = 120;
					var h = setInterval(function() {
						f[a].interval--;
						f[a].interval <= 0 && clearInterval(h)
					}, 1E3);
					e.requestAfter && d.options.requestAfter(c)
				}
			})
		},
		showError: function(a) {
			this.itemExp.html(a.errorMessage);
			this.container.removeClass("ui-form-item-success").addClass("ui-form-item-error")
		},
		sendSuccess: function(a) {
			a = a || this.options.defaultType;
			this.container.removeClass("ui-form-item-error").addClass("ui-form-item-success");
			this.updatePrompt(a, "prompt_send")
		}
	}, h))
}(window.light, alipay.security);
light.has("/alipay/security/riskMobileBank") || function(b, j) {
	try {
		window == window.parent && b.client.storage.set("riskMobileBankSendTime", -1)
	} catch(k) {}
	var h = {
			Name: "riskMobileBank",
			defaults: {
				id: "",
				autoSend: !0,
				isBind: "",
				ajaxUrl: "",
				countdownBefore: null,
				countdownAfter: null,
				requestBefore: null,
				requestAfter: null
			}
		},
		g = {
			sms: {
				className: ".sms-btn",
				btnText: "\u91cd\u65b0\u83b7\u53d6\u77ed\u4fe1",
				interval: 120,
				prompt_send: "\u6821\u9a8c\u7801\u5df2\u53d1\u9001\uff0c30\u5206\u949f\u5185\u8f93\u5165\u6709\u6548\uff0c\u8bf7\u52ff\u6cc4\u9732",
				prompt_default: "\u6821\u9a8c\u7801\u662f6\u4f4d\u6570\u5b57\uff0c30\u5206\u949f\u5185\u8f93\u5165\u6709\u6548\uff0c\u8bf7\u52ff\u6cc4\u9732"
			},
			phone: {
				className: ".phone-btn",
				btnText: "\u4f7f\u7528\u8bed\u97f3\u83b7\u53d6",
				interval: 120,
				prompt_send: "\u652f\u4ed8\u5b9d\u5c06\u5411\u60a8\u7684\u624b\u673a\u62e8\u6253\u7535\u8bdd\u5e76\u64ad\u62a5\u6821\u9a8c\u7801\u3002<br />\u6765\u7535\u53f7\u7801\u4e3a\uff1a0571-26883721,\u8bf7\u7a0d\u5019...",
				prompt_default: "\u6821\u9a8c\u7801\u662f6\u4f4d\u6570\u5b57\uff0c30\u5206\u949f\u5185\u8f93\u5165\u6709\u6548\uff0c\u8bf7\u52ff\u6cc4\u9732"
			}
		};
	h.properties = {
		targets: []
	};
	h = b.register("/alipay/security/riskMobileBank", window, b.deriveFrom(j.base, {
		ready: !0,
		render: function(a) {
			b.isFunction(a) && this._readyList.push(a);
			this.element = this.options.uniqElement;
			for(a = this._readyList; a.length;) a.shift().apply(this)
		},
		getValue: function() {
			return {
				mobileAckCode: this.element.value
			}
		},
		postInit: function() {
			var a = this,
				c = this.options;
			this.container = b.node(this.options.uniqElement).parent(".ui-form-item");
			this.itemExp = this.container.find(".ui-form-explain");
			b.each(g,
				function(b, d) {
					var e = a.container.find(d.className);
					e.length && (e.type = b, !c.defaultType && (c.defaultType = b), a.targets.push(e))
				});
			this.targets.length || b.log("No mode used.");
			c.autoSend && this.request("sms");
			this.bind()
		},
		bind: function() {
			var a = this,
				c = this.options;
			this.options.autoSend || this.container.find(".send-btn").click(function() {
				b.node(this).addClass("fn-hide");
				a.container.find(".ui-form-field, .ui-form-explain").removeClass("fn-hide");
				a.request("sms")
			});
			this.container.find(".reSend-btn").click(function(f) {
				f.cancel();
				b.node(this).addClass("fn-hide");
				a.container.find(".sms-btn, .phone-btn").removeClass("fn-hide");
				a.sendSuccess(c.defaultType);
				a.countdown(c.defaultType)
			});
			b.each(this.targets, function(c, b) {
				b.click(function() {
					a.send(b.type)
				})
			});
			b.ready(function() {
				b.node(".phone-btn").length && (a.pop = new b.pop({
					targets: b.node(".phone-btn"),
					className: "ui-securitycore",
					width: 400
				}))
			})
		},
		send: function(a) {
			a = a || this.options.defaultType;
			this.countdown(a);
			this.request(a)
		},
		countdown: function(a) {
			var c = this,
				b = c.options,
				a = a || b.defaultType,
				d = g[a].interval;
			b.countdownBefore && b.countdownBefore();
			(function() {
				0 < d-- ? (c.toggleBtnUI(d), setTimeout(arguments.callee, 1E3)) : (c.updatePrompt(a, "prompt_default"), c.toggleBtnUI(d, !0), c.container.removeClass("ui-form-item-success"), b.countdownAfter && b.countdownAfter())
			})()
		},
		toggleBtnUI: function(a, c) {
			var f = this,
				d, e = c ? "removeClass" : "addClass";
			b.each(this.targets, function(b, i) {
				d = c ? g[i.type].btnText : "\uff08" + a + "\u79d2\u540e\uff09" + g[i.type].btnText;
				c || f.pop && f.pop.hide();
				i[e]("ui-checkcode-messagecode-disabled-btn").attr("disabled", !c).attr("value", d)
			})
		},
		updatePrompt: function(a, b) {
			this.container.find(".ui-form-explain").html(g[a][b])
		},
		request: function(a) {
			if(window != window.parent) {
				var c = (new Date).getTime(),
					f = Number(b.client.storage.get("riskMobileBankSendTime"));
				if(0 > c - f) {
					this.sendSuccess(a);
					return
				}
			}
			var d = this,
				e = this.options,
				c = {},
				a = a || e.defaultType;
			e.requestBefore && e.requestBefore();
			this.inputMobileNo && (c.inputMobileNo = this.inputMobileNo);
			c.type = a;
			c.securityId = b.node(this.options.uniqElement).parent(".J-securitycoreMain").attr("data-request");
			c.rnd = Math.random();
			c.validateProductName = "risk_mobile_bank";
			b.request(e.ajaxUrl, c, {
				method: "JSONP",
				success: function(c) {
					if(c.info.sent) {
						try {
							window != window.parent ? b.client.storage.set("riskMobileBankSendTime", (new Date).getTime()) : b.client.storage.set("riskMobileBankSendTime", -1)
						} catch(f) {}
						d.sendSuccess(a)
					} else d.showError(c.info);
					e.requestAfter && d.options.requestAfter(c)
				}
			})
		},
		showError: function(a) {
			this.itemExp.html(a.errorMessage);
			this.container.removeClass("ui-form-item-success").addClass("ui-form-item-error")
		},
		sendSuccess: function(a) {
			a = a || this.options.defaultType;
			this.container.removeClass("ui-form-item-error").addClass("ui-form-item-success");
			this.updatePrompt(a, "prompt_send")
		}
	}, h))
}(window.light, alipay.security);
light.has("/alipay/security/riskMobileAccount") || function(b, j) {
	try {
		window == window.parent && b.client.storage.set("riskMobileAccoutSendTime", -1)
	} catch(k) {}
	var h = {
			Name: "riskMobileAccount",
			defaults: {
				id: "",
				autoSend: !0,
				isBind: "",
				ajaxUrl: "",
				countdownBefore: null,
				countdownAfter: null,
				requestBefore: null,
				requestAfter: null
			}
		},
		g = {
			sms: {
				className: ".sms-btn",
				btnText: "\u91cd\u65b0\u83b7\u53d6\u77ed\u4fe1",
				interval: 120,
				prompt_send: "\u6821\u9a8c\u7801\u5df2\u53d1\u9001\uff0c30\u5206\u949f\u5185\u8f93\u5165\u6709\u6548\uff0c\u8bf7\u52ff\u6cc4\u9732",
				prompt_default: "\u6821\u9a8c\u7801\u662f6\u4f4d\u6570\u5b57\uff0c30\u5206\u949f\u5185\u8f93\u5165\u6709\u6548\uff0c\u8bf7\u52ff\u6cc4\u9732"
			},
			phone: {
				className: ".phone-btn",
				btnText: "\u4f7f\u7528\u8bed\u97f3\u83b7\u53d6",
				interval: 120,
				prompt_send: "\u652f\u4ed8\u5b9d\u5c06\u5411\u60a8\u7684\u624b\u673a\u62e8\u6253\u7535\u8bdd\u5e76\u64ad\u62a5\u6821\u9a8c\u7801\u3002<br />\u6765\u7535\u53f7\u7801\u4e3a\uff1a0571-26883721,\u8bf7\u7a0d\u5019...",
				prompt_default: "\u6821\u9a8c\u7801\u662f6\u4f4d\u6570\u5b57\uff0c30\u5206\u949f\u5185\u8f93\u5165\u6709\u6548\uff0c\u8bf7\u52ff\u6cc4\u9732"
			}
		};
	h.properties = {
		targets: []
	};
	h = b.register("/alipay/security/riskMobileAccount", window, b.deriveFrom(j.base, {
		ready: !0,
		render: function(a) {
			b.isFunction(a) && this._readyList.push(a);
			this.element = this.options.uniqElement;
			for(a = this._readyList; a.length;) a.shift().apply(this)
		},
		getValue: function() {
			return {
				mobileAckCode: this.element.value
			}
		},
		postInit: function() {
			var a = this,
				c = this.options;
			this.container = b.node(this.options.uniqElement).parent(".ui-form-item");
			this.itemExp = this.container.find(".ui-form-explain");
			b.each(g,
				function(b, d) {
					var e = a.container.find(d.className);
					e.length && (e.type = b, !c.defaultType && (c.defaultType = b), a.targets.push(e))
				});
			this.targets.length || b.log("No mode used.");
			c.autoSend && this.request("sms");
			this.bind()
		},
		bind: function() {
			var a = this,
				c = this.options;
			this.options.autoSend || this.container.find(".send-btn").click(function() {
				b.node(this).addClass("fn-hide");
				a.container.find(".ui-form-field, .ui-form-explain").removeClass("fn-hide");
				a.request("sms")
			});
			this.container.find(".reSend-btn").click(function(f) {
				f.cancel();
				b.node(this).addClass("fn-hide");
				a.container.find(".sms-btn, .phone-btn").removeClass("fn-hide");
				a.sendSuccess(c.defaultType);
				a.countdown(c.defaultType)
			});
			b.each(this.targets, function(c, b) {
				b.click(function() {
					a.send(b.type)
				})
			});
			b.ready(function() {
				b.node(".phone-btn").length && (a.pop = new b.pop({
					targets: b.node(".phone-btn"),
					className: "ui-securitycore",
					width: 400
				}))
			})
		},
		send: function(a) {
			a = a || this.options.defaultType;
			this.countdown(a);
			this.request(a)
		},
		countdown: function(a) {
			var c = this,
				b = c.options,
				a = a || b.defaultType,
				d = g[a].interval;
			b.countdownBefore && b.countdownBefore();
			(function() {
				0 < d-- ? (c.toggleBtnUI(d), setTimeout(arguments.callee, 1E3)) : (c.updatePrompt(a, "prompt_default"), c.toggleBtnUI(d, !0), c.container.removeClass("ui-form-item-success"), b.countdownAfter && b.countdownAfter())
			})()
		},
		toggleBtnUI: function(a, c) {
			var f = this,
				d, e = c ? "removeClass" : "addClass";
			b.each(this.targets, function(b, i) {
				d = c ? g[i.type].btnText : "\uff08" + a + "\u79d2\u540e\uff09" + g[i.type].btnText;
				c || f.pop && f.pop.hide();
				i[e]("ui-checkcode-messagecode-disabled-btn").attr("disabled", !c).attr("value", d)
			})
		},
		updatePrompt: function(a, b) {
			this.container.find(".ui-form-explain").html(g[a][b])
		},
		request: function(a) {
			if(window != window.parent) {
				var c = (new Date).getTime(),
					f = Number(b.client.storage.get("riskMobileAccoutSendTime"));
				if(0 > c - f) {
					this.sendSuccess(a);
					return
				}
			}
			var d = this,
				e = this.options,
				c = {},
				a = a || e.defaultType;
			e.requestBefore && e.requestBefore();
			this.inputMobileNo && (c.inputMobileNo = this.inputMobileNo);
			c.type = a;
			c.securityId = b.node(this.options.uniqElement).parent(".J-securitycoreMain").attr("data-request");
			c.rnd = Math.random();
			c.validateProductName = "risk_mobile_account";
			b.request(e.ajaxUrl, c, {
				method: "JSONP",
				success: function(c) {
					if(c.info.sent) {
						try {
							window != window.parent ? b.client.storage.set("riskMobileAccoutSendTime", (new Date).getTime()) : b.client.storage.set("riskMobileAccoutSendTime", -1)
						} catch(f) {}
						d.sendSuccess(a)
					} else d.showError(c.info);
					e.requestAfter && d.options.requestAfter(c)
				}
			})
		},
		showError: function(a) {
			this.itemExp.html(a.errorMessage);
			this.container.removeClass("ui-form-item-success").addClass("ui-form-item-error")
		},
		sendSuccess: function(a) {
			a = a || this.options.defaultType;
			this.container.removeClass("ui-form-item-error").addClass("ui-form-item-success");
			this.updatePrompt(a, "prompt_send")
		}
	}, h))
}(window.light, alipay.security);
light.has("/alipay/security/riskMobileCredit") || function(b, k) {
	try {
		window == window.parent && b.client.storage.set("riskMobileCreditSendTime", -1)
	} catch(i) {}
	var a = {
			Name: "riskMobileCredit",
			defaults: {
				id: "",
				autoSend: !0,
				isBind: "",
				ajaxUrl: "",
				countdownBefore: null,
				countdownAfter: null,
				requestBefore: null,
				requestAfter: null
			}
		},
		h = {
			sms: {
				className: ".sms-btn",
				btnText: "\u91cd\u65b0\u83b7\u53d6\u77ed\u4fe1",
				interval: 120,
				prompt_send: "\u6821\u9a8c\u7801\u5df2\u53d1\u9001\uff0c30\u5206\u949f\u5185\u8f93\u5165\u6709\u6548\uff0c\u8bf7\u52ff\u6cc4\u9732",
				prompt_default: "\u6821\u9a8c\u7801\u662f6\u4f4d\u6570\u5b57\uff0c30\u5206\u949f\u5185\u8f93\u5165\u6709\u6548\uff0c\u8bf7\u52ff\u6cc4\u9732"
			},
			phone: {
				className: ".phone-btn",
				btnText: "\u4f7f\u7528\u8bed\u97f3\u83b7\u53d6",
				interval: 120,
				prompt_send: "\u652f\u4ed8\u5b9d\u5c06\u5411\u60a8\u7684\u624b\u673a\u62e8\u6253\u7535\u8bdd\u5e76\u64ad\u62a5\u6821\u9a8c\u7801\u3002<br />\u6765\u7535\u53f7\u7801\u4e3a\uff1a0571-26883721,\u8bf7\u7a0d\u5019...",
				prompt_default: "\u6821\u9a8c\u7801\u662f6\u4f4d\u6570\u5b57\uff0c30\u5206\u949f\u5185\u8f93\u5165\u6709\u6548\uff0c\u8bf7\u52ff\u6cc4\u9732"
			}
		};
	a.properties = {
		targets: [],
		count: !0
	};
	a = b.register("/alipay/security/riskMobileCredit", window, b.deriveFrom(k.base, {
		ready: !0,
		render: function(c) {
			b.isFunction(c) && this._readyList.push(c);
			this.element = this.options.uniqElement;
			for(c = this._readyList; c.length;) c.shift().apply(this)
		},
		getValue: function() {
			return {
				mobileAckCode: this.element.value
			}
		},
		postInit: function() {
			var c = this,
				a = this.options;
			this.container = b.node(this.options.uniqElement).parent(".ui-form-item");
			this.itemExp = this.container.find(".ui-form-explain");
			b.each(h, function(b, f) {
				var g = c.container.find(f.className);
				g.length && (g.type = b, !a.defaultType && (a.defaultType = b), c.targets.push(g))
			});
			this.targets.length || b.log("No mode used.");
			a.autoSend && this.request("sms");
			this.bind()
		},
		bind: function() {
			var c = this,
				a = this.options;
			this.options.autoSend || this.container.find(".send-btn").click(function() {
				b.node(this).addClass("fn-hide");
				c.container.find(".ui-form-field, .ui-form-explain").removeClass("fn-hide");
				c.request("sms")
			});
			this.container.find(".reSend-btn").click(function(e) {
				e.cancel();
				b.node(this).addClass("fn-hide");
				c.container.find(".sms-btn, .phone-btn").removeClass("fn-hide");
				c.sendSuccess(a.defaultType);
				c.countdown(a.defaultType)
			});
			b.each(this.targets, function(a, b) {
				b.click(function() {
					c.send(b.type)
				})
			});
			b.ready(function() {
				b.node(".phone-btn").length && (c.pop = new b.pop({
					targets: b.node(".phone-btn"),
					className: "ui-securitycore",
					width: 400
				}))
			})
		},
		send: function(a) {
			a = a || this.options.defaultType;
			this.countdown(a);
			this.request(a)
		},
		countdown: function(a) {
			var b = this,
				e = b.options,
				a = a || e.defaultType,
				f = h[a].interval;
			e.countdownBefore && e.countdownBefore();
			(function() {
				0 < f-- && b.riskCredibleMobile.expand ? (b.toggleBtnUI(f), setTimeout(arguments.callee, 1E3)) : (b.updatePrompt(a, "prompt_default"), b.toggleBtnUI(f, !0), b.container.removeClass("ui-form-item-success"), e.countdownAfter && e.countdownAfter())
			})()
		},
		toggleBtnUI: function(a, d) {
			var e = this,
				f, g = d ? "removeClass" : "addClass";
			b.each(this.targets, function(b, j) {
				f = d ? h[j.type].btnText : "\uff08" + a + "\u79d2\u540e\uff09" + h[j.type].btnText;
				d || e.pop && e.pop.hide();
				j[g]("ui-checkcode-messagecode-disabled-btn").attr("disabled", !d).attr("value", f)
			})
		},
		updatePrompt: function(a, b) {
			this.container.find(".ui-form-explain").html(h[a][b])
		},
		request: function(a) {
			if(window != window.parent) {
				var d = (new Date).getTime(),
					e = Number(b.client.storage.get("riskMobileCreditSendTime"));
				if(0 > d - e) {
					this.sendSuccess(a);
					return
				}
			}
			var f = this,
				g = this.options,
				d = {},
				a = a || g.defaultType;
			g.requestBefore && g.requestBefore();
			this.inputMobileNo && (d.inputMobileNo = this.inputMobileNo);
			d.type = a;
			d.securityId = b.node(this.options.uniqElement).parent(".J-securitycoreMain").attr("data-request");
			d.rnd = Math.random();
			d.creditMobileIndex = this.riskCredibleMobile.element.value;
			d.validateProductName = "risk_mobile_credit";
			b.request(g.ajaxUrl, d, {
				method: "JSONP",
				success: function(d) {
					if(d.info.sent) {
						try {
							window != window.parent ? b.client.storage.set("riskMobileCreditSendTime", (new Date).getTime()) : b.client.storage.set("riskMobileCreditSendTime", -1)
						} catch(e) {}
						f.sendSuccess(a)
					} else f.showError(d.info);
					g.requestAfter && f.options.requestAfter(d)
				}
			})
		},
		showError: function(a) {
			this.itemExp.html(a.errorMessage);
			this.container.removeClass("ui-form-item-success").addClass("ui-form-item-error")
		},
		sendSuccess: function(a) {
			a = a || this.options.defaultType;
			this.container.removeClass("ui-form-item-error").addClass("ui-form-item-success");
			this.updatePrompt(a, "prompt_send")
		}
	}, a))
}(window.light, alipay.security);
light.has("/alipay/security/riskCredibleMobile") || function(b) {
	try {
		window == window.parent && b.client.storage.set("riskCredibleMobileSendTime", -1)
	} catch(k) {}
	var i = function() {
		this.init.apply(this, arguments);
		this.bind()
	};
	i.prototype = {
		_cg: {
			item: "ui-form-item",
			itemSuccess: "ui-form-item-success",
			itemError: "ui-form-item-error",
			itemExp: "ui-form-explain"
		},
		init: function(a) {
			a = this.opt = a;
			a.dataId = a.id + (new Date).getTime() + Math.floor(1E3 * Math.random());
			b.node("[id=" + a.id + "]:not([data-id]):first").attr("data-id",
				a.dataId);
			this.opt.uniqElement = b.node("[data-id=" + a.dataId + "]:first")[0];
			this.element = this.opt.uniqElement;
			this.container = b.node(this.element).parent("." + this._cg.item);
			this.counter = this.container.next(".ui-form-item-counter");
			this.validateBtn = this.container.find(".validate-btn");
			this.itemExp = this.container.find("." + this._cg.itemExp);
			this.preExp = this.itemExp.html() || "";
			this.expand = !1;
			this.opt.mobile ? (this.opt.mobile.origin = "credible", this.opt.mobile.credibleValidate = !1, this.opt.mobile.riskCredibleMobile =
				this) : b.log("Mobile did not start.")
		},
		bind: function() {
			var a = this;
			this.validateBtn.click(function() {
				a.validateBtn.hide();
				a.validateNum();
				a.counter.removeClass("fn-hide").removeClass(a._cg.itemError).addClass(a._cg.itemSuccess);
				a.counter.find("." + a._cg.itemExp).html(a.counter.find("input").attr("data-explain"));
				a.expand = !0
			});
			b.node(this.element).change(function() {
				a.validateBtn.show();
				a.counter.addClass("fn-hide");
				a.counter.find(".reSend-btn").removeClass("fn-hide");
				a.counter.find(".sms-btn").addClass("fn-hide");
				a.expand = !1
			});
			b.node(this.element).focus(function() {
				a.showDefault()
			})
		},
		validateNum: function() {
			0 === this.element.value.replace(/[^\x00-\xff]/g, "**").length ? this.showError({
				msg: "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801\u3002"
			}) : this.request()
		},
		request: function() {
			var a = this,
				h = b.trim(this.element.value),
				c = {};
			if(window != window.parent) {
				var d = (new Date).getTime(),
					e = Number(b.client.storage.get("riskCredibleMobileSendTime")),
					f = b.client.storage.get("riskCredibleMobileNo");
				if(h == f && 0 > d - e) return
			}
			c.creditMobileIndex =
				h;
			c.validateProductName = "risk_mobile_credit";
			c.securityId = b.node(this.opt.uniqElement).parent(".J-securitycoreMain").attr("data-request");
			b.request(this.opt.ajaxUrl, c, {
				method: "JSONP",
				success: function(c) {
					if(c.info.sent) try {
						window != window.parent ? (b.client.storage.set("riskCredibleMobileSendTime", (new Date).getTime()), b.client.storage.set("riskCredibleMobileNo", h)) : b.client.storage.set("riskCredibleMobileSendTime", -1)
					} catch(d) {} else a.showError(c.info)
				}
			})
		},
		validateNumSuc: function() {},
		error: function(a) {
			var a =
				a.info,
				b = "";
			5 <= a.errorCount && this.validateBtn.addClass("ui-checkcode-messagecode-disabled-btn").attr("disabled", !0);
			b = b || a.errorMessage;
			this.showError({
				code: a.errorCode,
				msg: b
			})
		},
		showError: function(a) {
			a.msg = a.msg || a.errorMessage;
			a.msg && (this.itemExp.html(a.msg), this.counter.find("." + this._cg.itemExp).html(a.msg), this.counter.addClass(this._cg.itemError).removeClass(this._cg.itemSuccess))
		},
		showDefault: function() {
			this.itemExp.html(this.preExp);
			this.container.removeClass(this._cg.itemError)
		}
	};
	b.register("/alipay/security/riskCredibleMobile",
		window, i)
}(window.light);
light.has("/alipay/security/riskCertificate") || function(b) {
	members = {
		ready: !0,
		render: function(a) {
			light.isFunction(a) && this._readyList.push(a);
			this.element = light.get(this.options.id);
			for(a = this._readyList; a.length;) a.shift().apply(this)
		},
		getValue: function() {
			return {
				inputCertificateNo: this.element.value
			}
		}
	};
	b.riskCertificate = light.deriveFrom(b.base, members, {
		Name: "riskCertificate"
	})
}(alipay.security);
light.has("/alipay/security/riskSecurityQa") || function(b) {
	members = {
		ready: !0,
		render: function(a) {
			light.isFunction(a) && this._readyList.push(a);
			this.element = light.get(this.options.id);
			for(a = this._readyList; a.length;) a.shift().apply(this)
		},
		getValue: function() {
			return {
				securityAnswer: this.element.value
			}
		}
	};
	b.riskSecurityQa = light.deriveFrom(b.base, members, {
		Name: "riskSecurityQa"
	})
}(alipay.security);
light.has("/alipay/security/riskExpressPrivacy") || function(a) {
	members = {
		render: function(b) {
			light.isFunction(b) && this._readyList.push(b);
			this.element = light.get(this.options.id);
			for(b = this._readyList; b.length;) b.shift().apply(this)
		},
		queryValue: function(b) {
			var c = this.element = light.get(this.options.id),
				a = c.value.replace(/\D/g, ""),
				d = light.node(c),
				c = d.attr("data-cardtype"),
				d = d.attr("data-server") + "/validateAndCacheCardInfo.json";
			"debit" == c ? b({
				bankCardDebitNo: a
			}) : "credit" == c && light.request(d, {
				cardNo: a,
				cardBinCheck: !0,
				doUpdate: !1
			}, {
				format: "jsonp",
				success: function(a) {
					a && a.validated ? b({
						bankCardCreditUUID: a.key
					}) : b({
						message: "\u5361\u53f7\u6821\u9a8c\u4e0d\u901a\u8fc7"
					})
				}
			})
		}
	};
	a.riskExpressPrivacy = light.deriveFrom(a.base, members, {
		Name: "riskExpressPrivacy"
	})
}(alipay.security);
light.has("/alipay/security/checkCode") || function(b) {
	b.checkCode = light.deriveFrom(b.base, {
		ready: !0,
		render: function(a) {
			light.isFunction(a) && this._readyList.push(a);
			this.element = light.get(this.options.id);
			for(a = this._readyList; a.length;) a.shift().apply(this)
		},
		getValue: function() {
			return {
				check_code: this.element.value
			}
		}
	}, {
		Name: "checkCode"
	})
}(alipay.security);
(function(b) {
	b.rds = light.deriveFrom(b.base, {
		ready: !0,
		render: function(a) {
			light.isFunction(a) && this._readyList.push(a);
			for(a = this._readyList; a.length;) a.shift().apply(this)
		},
		getValue: function() {
			return {
				rdsUaValue: window.json_ua ? window.json_ua : "",
				rdsTokenValue: window.form_tk ? window.form_tk : ""
			}
		}
	}, {
		Name: "rds"
	})
})(alipay.security);
light.has("/alipay/security/barcode") || function(e) {
	var t = {
			Name: "barcode"
		},
		i = {
			render: function(e) {
				var t = this;
				light.isFunction(e) && t._readyList.push(e), seajs.use(["$", "alipay/qrcode/1.0.3/qrcode"], function(e, i) {
					var a = window.AraleQRCode || i,
						n = new a({
							render: "",
							text: t.options.barcode,
							width: t.options.width,
							height: t.options.height,
							size: t.options.size,
							image: t.options.image,
							imageSize: t.options.imageSize,
							correctLevel: t.options.correctLevel
						});
					t.element && t.element.del(), t.container.append(n), t.element = light.node(n), t.element.addClass("barcode"), t.ready = !0;
					for(var r = t._readyList; r.length;) r.shift().apply(t)
				})
			},
			postInit: function() {
				this.container = light.node(light.node(this.options.container)), this.stat = "suspended";
				for(var e = this, t = this.container.find("button"), i = 0; i < t.length; i++) light.on(t[i], "click", function() {
					e._changeState("waiting")
				});
				this._confirmedList = []
			},
			start: function() {
				"confirmed" != this.stat && this._changeState("waiting")
			},
			stop: function() {
				"confirmed" != this.stat && this._changeState("suspended")
			},
			onConfirm: function(e) {
				if("function" != typeof e) throw new Error("onConfirm accept only function.");
				if(this._confirmedList.push(e), "confirmed" == this.stat) {
					for(var t = this._confirmedList; t.length;) t.shift().apply(this);
					this._confirmedList = []
				}
			},
			getValue: function() {
				return "confirmed" == this.stat
			},
			_changeState: function(e) {
				var t = this.stat;
				if(e != t) {
					switch(t) {
						case "scanned":
							this.container.removeClass("scanned");
							break;
						case "confirmed":
							this.container.removeClass("confirmed");
							break;
						case "error":
							this.container.removeClass("error");
							break;
						case "timeout":
							this.container.removeClass("timeout");
							break;
						case "suspended":
						case "waiting":
					}
					switch(this.stat = e, e) {
						case "suspended":
							clearInterval(this._intervalHandler), clearTimeout(this._timeoutHandler);
							break;
						case "waiting":
							var i = this;
							clearInterval(this._intervalHandler), clearTimeout(this._timeoutHandler);
							var a = setInterval(function() {
								light.request(i.options.queryUrl, {
									securityId: i.options.securityId
								}, {
									method: "JSONP",
									success: function(e) {
										"ok" == e.stat ? i._changeState(e.barcodeStatus) : (i._changeState("error"), light.log(e))
									},
									failure: function() {
										light.log("failure")
									}
								})
							}, 3e3);
							this._intervalHandler = a, this._timeoutHandler = setTimeout(function() {
								i._changeState("timeout")
							}, 6e5);
							break;
						case "scanned":
							this.container.addClass("scanned");
							break;
						case "confirmed":
							clearInterval(this._intervalHandler), clearTimeout(this._timeoutHandler), this.container.addClass("confirmed");
							for(var n = this._confirmedList; n.length;) n.shift().apply(this);
							this._confirmedList = [];
							break;
						case "error":
							clearInterval(this._intervalHandler), clearTimeout(this._timeoutHandler), this.container.addClass("error");
							break;
						case "timeout":
							clearInterval(this._intervalHandler), clearTimeout(this._timeoutHandler), this.container.addClass("timeout");
							break;
						default:
							light.log("barcod error")
					}
				}
			}
		};
	t = e.barcode = light.deriveFrom(e.base, i, t)
}(alipay.security);
light.has("/alipay/security/riskOneKeyConfirm") || function(c) {
	var d = {
			Name: "riskOneKeyConfirm"
		},
		d = c.riskOneKeyConfirm = light.deriveFrom(c.base, {
				render: function(a) {
					light.isFunction(a) && this._readyList.push(a);
					this.ready || (this.element = light.node(this.options.uniqElement), this.container = light.node(light.get(this.options.container)), this.ready = !0, this.guideLink = this.container.find(".onekey-guide-link"), this.buttonState = "disabled", this.timeLength = 60, this.sendButton = this.container.find("#sendButton"), this.sendButtonValue =
						"\u79d2\u540e\u53d1\u9001\u77ed\u4fe1", this.ajaxUrl = this.options.ajaxUrl);
					for(a = this._readyList; a.length;) a.shift().apply(this)
				},
				postInit: function() {
					this.stat = "init";
					params = {};
					t = this;
					this.onready(function() {
						this._changeButtonState();
						this._bindGuide();
						this._bindClick();
						params.securityId = t.options.securityId;
						params.rnd = Math.random();
						params.validateProductName = t.options.productName;
						light.request(t.ajaxUrl, params, {
							method: "JSONP",
							success: function(a) {
								!1 === a.info.sent && t._showMsg(!1, a.info.errorMessage)
							}
						});
						this._changeState("waiting");
						var a = this;
						this._intervalHandler = setInterval(function() {
							light.request(a.options.queryUrl, {
								securityId: a.options.securityId
							}, {
								method: "JSONP",
								success: function(b) {
									a._changeState(b.stat)
								},
								failure: function() {
									light.log("failure")
								}
							})
						}, 3E3);
						this._timeoutHandler = setTimeout(function() {
							a._changeState("timeout")
						}, 9E5)
					});
					this._confirmedList = []
				},
				_bindGuide: function() {
					var a = this;
					light.on(this.guideLink[0], "click", function() {
						a.sendButton.removeClass("fn-hide");
						a.guideLink.addClass("fn-hide")
					})
				},
				_changeButtonState: function() {
					this.timeLength--;
					var a = light.node(this.sendButton);
					if(this.timeLength) {
						a.attr("value", this.timeLength + this.sendButtonValue);
						a.attr("disabled", "disabled");
						a.style({
							margin: 0,
							color: "rgb(135,135,135)"
						});
						this.buttonState = "disabled";
						var b = this;
						setTimeout(function() {
							b._changeButtonState()
						}, 1E3)
					} else this.buttonState = "able", this.timeLength = 60, a.attr("value", "\u91cd\u65b0\u53d1\u9001\u77ed\u4fe1"), a.attr("disabled", !1), a.style({
						margin: 0,
						color: "#000"
					})
				},
				_bindClick: function() {
					var a =
						this,
						b = {};
					light.on(this.sendButton[0], "click", function() {
						"able" === a.buttonState && (b.securityId = a.options.securityId, b.rnd = Math.random(), b.validateProductName = a.options.productName, a.element.parent().removeClass("ui-form-item-error"), a.container.find(".ui-form-explain").text(""), light.request(a.ajaxUrl, b, {
							method: "JSONP",
							success: function(b) {
								!1 === b.info.sent && a._showMsg(!1, b.info.errorMessage)
							}
						}));
						a._changeButtonState()
					})
				},
				onConfirm: function(a) {
					if("function" != typeof a) throw Error("onConfirm accept only function.");
					this._confirmedList.push(a);
					if("confirmed" == this.stat) {
						for(a = this._confirmedList; a.length;) a.shift().apply(this);
						this._confirmedList = []
					}
				},
				getValue: function() {
					return "confirmed" == this.stat
				},
				_changeState: function(a) {
					if(a != this.stat) switch(this.stat = a, a) {
						case "error":
							clearInterval(this._intervalHandler);
							clearTimeout(this._timeoutHandler);
							this._showMsg(!1, "\u7cfb\u7edf\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u4faf\u518d\u8bd5\u3002");
							light.log("\u4e00\u952e\u786e\u8ba4\uff1a\u53d1\u751f\u9519\u8bef");
							break;
						case "created":
							break;
						case "confirmed":
							clearInterval(this._intervalHandler);
							clearTimeout(this._timeoutHandler);
							this._showMsg(!0, "\u5df2\u786e\u8ba4");
							light.log("\u4e00\u952e\u786e\u8ba4\uff1a\u5df2\u786e\u8ba4");
							for(a = this._confirmedList; a.length;) a.shift().apply(this);
							this._confirmedList = [];
							break;
						case "denied":
							clearInterval(this._intervalHandler);
							clearTimeout(this._timeoutHandler);
							this._showMsg(!1, "\u8d26\u6237\u6388\u6743\u5931\u8d25");
							light.log("\u4e00\u952e\u786e\u8ba4\uff1a\u5df2\u62d2\u7edd");
							for(a = this._confirmedList; a.length;) a.shift().apply(this);
							this._confirmedList = [];
							break;
						case "timeout":
							clearInterval(this._intervalHandler);
							clearTimeout(this._timeoutHandler);
							this._showMsg(!1, "\u5df2\u8d85\u65f6\uff0c\u8bf7\u7a0d\u4faf\u518d\u8bd5");
							light.log("\u4e00\u952e\u786e\u8ba4\uff1a\u5df2\u8d85\u65f6");
							break;
						default:
							light.log("\u4e00\u952e\u786e\u8ba4\uff1a\u672a\u77e5\u72b6\u6001")
					}
				},
				_showMsg: function(a, b) {
					a ? this.element.parent().removeClass("ui-form-item-error") : this.element.parent().addClass("ui-form-item-error");
					this.container.find(".ui-form-explain").text(b)
				}
			},
			d)
}(alipay.security);
light.has("/alipay/security/riskSudoku") || function(e) {
	var f = {
			Name: "riskSudoku"
		},
		f = e.riskSudoku = light.deriveFrom(e.base, {
			render: function(a) {
				light.isFunction(a) && this._readyList.push(a);
				this.ready || (this.element = light.node(this.options.uniqElement), this.container = light.node(light.get(this.options.container)), this.keyboard = this.container.find(".risk-sudoku-keyboard"), this.resendBtn = this.container.find(".risk-sudoku-resend-btn"), this.clearInputIcon = this.container.find(".clear-input"), this.ready = !0);
				for(a =
					this._readyList; a.length;) a.shift().apply(this)
			},
			postInit: function() {
				this.onready(function() {
					this._bindKeyboardEvents();
					this._bindResendBtn();
					this._bindClearInput();
					this._sendSMS()
				})
			},
			getValue: function() {
				return this.element.val()
			},
			_bindKeyboardEvents: function() {
				var a = light.node("table tr td a", this.keyboard),
					c = this,
					d = c.element.parent();
				light.each(a, function(a, g) {
					light.on(g, "click", function(a) {
						a.cancel();
						d.removeClass("fn-hide");
						var a = light.node(a.target).text(),
							b = c.element;
						b.val().length >= c.options.ackNum ||
							b.val(b.val() + a)
					})
				})
			},
			_bindClearInput: function() {
				var a = this;
				light.on(this.clearInputIcon[0], "click", function(c) {
					c.cancel();
					a.element.val("")
				})
			},
			_bindResendBtn: function() {
				var a = this;
				light.on(this.resendBtn[0], "click", function() {
					a._sendSMS()
				})
			},
			_sendSMS: function() {
				var a = this;
				this.resendBtn.attr("disabled", "disabled");
				this.resendBtn.addClass("ui-checkcode-messagecode-disabled-btn");
				var c = {
					securityId: a.options.securityId,
					validateProductName: this.options.productName
				};
				a._smsTip(!0, "\u6821\u9a8c\u7801\u5df2\u53d1\u9001\uff0c15\u5206\u949f\u5185\u8f93\u5165\u6709\u6548\u3002");
				light.request(this.options.resendUrl, c, {
					method: "JSONP",
					success: function(b) {
						if("ok" == b.stat) {
							if(b.info)
								if(b.info.sent || (a._smsTip(!1, b.info.errorMessage), light.log(b.info.errorMessage), a._enableResendBtn()), b.info.sudoku) {
									a.letters = {};
									var c = light.node("table tr td a", a.keyboard);
									light.each(b.info.sudoku, function(b, d) {
										a.letters[d.code] = d.index;
										light.node(c[b]).text(d.code)
									})
								} else a._smsTip(!1, b.info.errorMessage || "\u7f51\u7edc\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u4faf\u518d\u8bd5\u3002"), light.log("\u670d\u52a1\u5668\u9519\u8bef\uff0c\u672a\u8fd4\u56de\u53ef\u9009\u5b57\u7b26\u7ed3\u679c"),
									a._enableResendBtn()
						} else light.log("error")
					},
					failure: function() {
						light.log("failure")
					}
				});
				var d = 120;
				clearInterval(a._intervalHandler);
				this._intervalHandler = setInterval(function() {
					if(0 == d) a._enableResendBtn();
					else {
						var b = d-- + "\u79d2\u540e\u91cd\u53d1\u77ed\u4fe1";
						a.resendBtn.text(b)
					}
				}, 1E3)
			},
			_enableResendBtn: function() {
				this.resendBtn.text("\u91cd\u65b0\u83b7\u53d6\u77ed\u4fe1").attr("disabled", !1).removeClass("ui-checkcode-messagecode-disabled-btn");
				clearInterval(this._intervalHandler)
			},
			_smsTip: function(a,
				c) {
				this.resendBtn.next(".ui-form-explain").text(c || "");
				var d = this.resendBtn.parent(".resend-group");
				a ? d.removeClass("ui-form-item-error") : d.addClass("ui-form-item-error")
			}
		}, f)
}(alipay.security);
light.has("/alipay/security/riskOriginalAccountMobile") || function(b, j) {
	try {
		window == window.parent && b.client.storage.set("riskOriginalAccountMobileSendTime", -1)
	} catch(k) {}
	var h = {
			Name: "riskOriginalAccountMobile",
			defaults: {
				id: "",
				autoSend: !0,
				isBind: "",
				ajaxUrl: "",
				countdownBefore: null,
				countdownAfter: null,
				requestBefore: null,
				requestAfter: null
			}
		},
		g = {
			sms: {
				className: ".sms-btn",
				btnText: "\u91cd\u65b0\u83b7\u53d6\u77ed\u4fe1",
				interval: 120,
				prompt_send: "\u6821\u9a8c\u7801\u5df2\u53d1\u9001\uff0c30\u5206\u949f\u5185\u8f93\u5165\u6709\u6548\uff0c\u8bf7\u52ff\u6cc4\u9732",
				prompt_default: "\u6821\u9a8c\u7801\u662f6\u4f4d\u6570\u5b57\uff0c30\u5206\u949f\u5185\u8f93\u5165\u6709\u6548\uff0c\u8bf7\u52ff\u6cc4\u9732"
			},
			phone: {
				className: ".phone-btn",
				btnText: "\u4f7f\u7528\u8bed\u97f3\u83b7\u53d6",
				interval: 120,
				prompt_send: "\u652f\u4ed8\u5b9d\u5c06\u5411\u60a8\u7684\u624b\u673a\u62e8\u6253\u7535\u8bdd\u5e76\u64ad\u62a5\u6821\u9a8c\u7801\u3002<br />\u6765\u7535\u53f7\u7801\u4e3a\uff1a0571-26883721,\u8bf7\u7a0d\u5019...",
				prompt_default: "\u6821\u9a8c\u7801\u662f6\u4f4d\u6570\u5b57\uff0c30\u5206\u949f\u5185\u8f93\u5165\u6709\u6548\uff0c\u8bf7\u52ff\u6cc4\u9732"
			}
		};
	h.properties = {
		targets: []
	};
	h = b.register("/alipay/security/riskOriginalAccountMobile", window, b.deriveFrom(j.base, {
		ready: !0,
		render: function(a) {
			b.isFunction(a) && this._readyList.push(a);
			this.element = this.options.uniqElement;
			for(a = this._readyList; a.length;) a.shift().apply(this)
		},
		getValue: function() {
			return {
				mobileAckCode: this.element.value
			}
		},
		postInit: function() {
			var a = this,
				c = this.options;
			this.container = b.node(this.options.uniqElement).parent(".ui-form-item");
			this.itemExp = this.container.find(".ui-form-explain");
			b.each(g, function(b, d) {
				var e = a.container.find(d.className);
				e.length && (e.type = b, !c.defaultType && (c.defaultType = b), a.targets.push(e))
			});
			this.targets.length || b.log("No mode used.");
			c.autoSend && this.request("sms");
			this.bind()
		},
		bind: function() {
			var a = this,
				c = this.options;
			this.options.autoSend || this.container.find(".send-btn").click(function() {
				b.node(this).addClass("fn-hide");
				a.container.find(".ui-form-field, .ui-form-explain").removeClass("fn-hide");
				a.request("sms")
			});
			this.container.find(".reSend-btn").click(function(f) {
				f.cancel();
				b.node(this).addClass("fn-hide");
				a.container.find(".sms-btn, .phone-btn").removeClass("fn-hide");
				a.sendSuccess(c.defaultType);
				a.countdown(c.defaultType)
			});
			b.each(this.targets, function(c, b) {
				b.click(function() {
					a.send(b.type)
				})
			});
			b.ready(function() {
				b.node(".phone-btn").length && (a.pop = new b.pop({
					targets: b.node(".phone-btn"),
					className: "ui-securitycore",
					width: 400
				}))
			})
		},
		send: function(a) {
			a = a || this.options.defaultType;
			this.countdown(a);
			this.request(a)
		},
		countdown: function(a) {
			var c = this,
				b = c.options,
				a = a || b.defaultType,
				d = g[a].interval;
			b.countdownBefore && b.countdownBefore();
			(function() {
				0 < d-- ? (c.toggleBtnUI(d), setTimeout(arguments.callee, 1E3)) : (c.updatePrompt(a, "prompt_default"), c.toggleBtnUI(d, !0), c.container.removeClass("ui-form-item-success"), b.countdownAfter && b.countdownAfter())
			})()
		},
		toggleBtnUI: function(a, c) {
			var f = this,
				d, e = c ? "removeClass" : "addClass";
			b.each(this.targets, function(b, i) {
				d = c ? g[i.type].btnText : "\uff08" + a + "\u79d2\u540e\uff09" + g[i.type].btnText;
				c || f.pop && f.pop.hide();
				i[e]("ui-checkcode-messagecode-disabled-btn").attr("disabled", !c).attr("value", d)
			})
		},
		updatePrompt: function(a, b) {
			this.container.find(".ui-form-explain").html(g[a][b])
		},
		request: function(a) {
			if(window != window.parent) {
				var c = (new Date).getTime(),
					f = Number(b.client.storage.get("riskOriginalAccountMobileSendTime"));
				if(0 > c - f) {
					this.sendSuccess(a);
					return
				}
			}
			var d = this,
				e = this.options,
				c = {},
				a = a || e.defaultType;
			e.requestBefore && e.requestBefore();
			this.inputMobileNo && (c.inputMobileNo = this.inputMobileNo);
			c.type = a;
			c.securityId = b.node(this.options.uniqElement).parent(".J-securitycoreMain").attr("data-request");
			c.rnd = Math.random();
			c.validateProductName = "risk_original_account_mobile";
			b.request(e.ajaxUrl, c, {
				method: "JSONP",
				success: function(c) {
					if(c.info.sent) {
						try {
							window != window.parent ? b.client.storage.set("riskOriginalAccountMobileSendTime", (new Date).getTime()) : b.client.storage.set("riskOriginalAccountMobileSendTime", -1)
						} catch(f) {}
						d.sendSuccess(a)
					} else d.showError(c.info);
					e.requestAfter && d.options.requestAfter(c)
				}
			})
		},
		showError: function(a) {
			this.itemExp.html(a.errorMessage);
			this.container.removeClass("ui-form-item-success").addClass("ui-form-item-error")
		},
		sendSuccess: function(a) {
			a = a || this.options.defaultType;
			this.container.removeClass("ui-form-item-error").addClass("ui-form-item-success");
			this.updatePrompt(a, "prompt_send")
		}
	}, h))
}(window.light, alipay.security);
light.has("/alipay/security/riskOriginalSecurityQa") || function(b) {
	members = {
		ready: !0,
		render: function(a) {
			light.isFunction(a) && this._readyList.push(a);
			this.element = light.get(this.options.id);
			for(a = this._readyList; a.length;) a.shift().apply(this)
		},
		getValue: function() {
			return {
				securityAnswer: this.element.value
			}
		}
	};
	b.riskOriginalSecurityQa = light.deriveFrom(b.base, members, {
		Name: "riskOriginalSecurityQa"
	})
}(alipay.security);