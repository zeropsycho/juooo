define(function() {
	(function() {
		var _ozclick = "0";
		var _oziframe = "0";
		var _oz_updatetail = "0";
		var _ozpoc = "";
		var _ozrec = "ozrec";
		var _ozjcnt_type = "__COUNT__";
		var j = undefined;
		j = {
			eV: function() {
				this.cV = "2151.oadz.com";
				this.cs = "s.oadz.com";
				this.dK = "cnt;C1;2151;.juooo.com;tUi9uSYzD6irfGmgtrWyEHkkq7U=;";
				this.dg = "jcnt;C1;2151;.juooo.com;JMI9jQFuYsqwg86OxAstTs7TT9c=;";
				this.cC = "event;E1;2151;.juooo.com;aBwH04VKnin1SIajMaBfyI4dd+o=;";
				this.fD = "10615";
				this.eu = "10619";
				this.dJ = 50;
				if(_ozjcnt_type == 1) {
					this.dJ = 5;
				}
				this.v = window;
				this.cO = this.v.top;
				this.bY = this.v.screen;
				this.aC = this.v.document;
				this.cf = navigator;
				this.ep = (this.cf.appName == 'Microsoft Internet Explorer');
				this.cY = new Image();
				this.bW = new Image();
				this.cw = new Image();
				this.bp = this.dK.split(";")[2];
				this.aK = undefined;
				this.bI = undefined;
				this.bc = undefined;
				this.t = undefined;
				this.aw = undefined;
				this.ae = undefined;
				this.ai = undefined;
				this.au = undefined;
				this.aW = undefined;
				this.bC = undefined;
				this.aM = undefined;
				this.aR = undefined;
				this.bv = undefined;
				this.V = 0;
				this.aN = 0;
				this.aE = 768;
				this.am = 512;
				this.dQ = 1536;
				this.dn = 1024;
				this.cu = 2048;
				this.cv = 3;
				this.aG = undefined;
				this.dq = "\x49\x4e\x50\x55\x54";
				this.cP = "\x62\x75\x74\x74\x6f\x6e";
				this.db = "\x69\x6d\x61\x67\x65";
				this.dA = "\x73\x75\x62\x6d\x69\x74";
				this.dI = "\x62\x6f\x64\x79";
				this.dm = "\x68\x74\x6d\x6c";
				this.eA = "\x46\x4c\x41\x53\x48";
				this.bf = "\x4f\x5a\x5f\x30\x61\x5f" + this.bp;
				this.bi = "\x4f\x5a\x5f\x31\x55\x5f" + this.bp;
				this.ar = "\x4f\x5a\x5f\x31\x59\x5f" + this.bp;
				this.cn = "\x4f\x5a\x5f\x31\x4b\x5f" + this.bp;
				this.ct = "\x4f\x5a\x5f\x31\x53\x5f" + this.bp;
				this.bH = "\x4f\x5a\x5f\x53\x49\x5f" + this.bp;
			},
			dG: function() {
				if(!this.aK) {
					if(this.ak(0).indexOf("https") == 0) {
						this.aK = "https://" + this.cs + "/" + this.dK;
					} else {
						this.aK = "http://" + this.cV + "/" + this.dK;
					}
				}
				return this.aK;
			},
			bP: function() {
				if(!this.bI) {
					if(this.ak(0).indexOf("https") == 0) {
						this.bI = "https://" + this.cs + "/" + this.dg;
					} else {
						this.bI = "http://" + this.cV + "/" + this.dg;
					}
				}
				return this.bI;
			},
			dv: function() {
				if(!this.bc) {
					if(this.ak(0).indexOf("https") == 0) {
						this.bc = "https://" + this.cs + "/" + this.cC;
					} else {
						this.bc = "http://" + this.cV + "/" + this.cC;
					}
				}
				return this.bc;
			},
			bD: function(bh, aj, bA, aW) {
				var K = "";
				if(bA && bA > 0) K = bh + "=" + aj + ";expires=" + bA.toGMTString() + ";path=/;domain=" + aW;
				else K = bh + "=" + aj + ";path=/;domain=" + aW;
				this.aC.cookie = K;
			},
			bF: function(bh) {
				var K = this.aC.cookie,
					dC, aT, ds = K.indexOf(bh + "=");
				if(ds != -1) {
					dC = ds + bh.length + 1;
					aT = K.indexOf(";", dC);
					if(aT == -1) {
						aT = K.length;
					}
					return K.substring(dC, aT);
				}
				return null;
			},
			ac: function() {
				var bd = undefined;
				if(!this.aW) {
					this.aW = this.aC.domain;
					if(this.aW.indexOf(".") > -1) {
						var k = this.aW.split(".");
						this.aW = k[k.length - 2] + "." + k[k.length - 1];
						if(k.length > 2 && k[k.length - 3] != "www") {
							bd = k[k.length - 2];
							if(bd.length <= 2 || (bd == "com" || bd == "edu" || bd == "gov" || bd == "net" || bd == "org" || bd == "mil")) {
								this.aW = k[k.length - 3] + "." + bd + "." + k[k.length - 1];
							}
						}
					}
				}
				return this.aW;
			},
			ak: function(bn) {
				var bj = this.am;
				if(typeof(bn) != "undefined" && bn == 1) {
					bj = this.dn;
				}
				var l = "";
				try {
					try {
						l = this.cO.location.href;
					} catch(ex) {
						l = this.v.location.href;
					}
				} catch(ex) {}
				if(!l) {
					l = "-";
				}
				if(l.length > bj) {
					l = l.substring(0, bj);
				}
				l = escape(l);
				return l;
			},
			cc: function(bn) {
				var bj = this.am;
				if(typeof(bn) != "undefined" && bn == 1) {
					bj = this.dn;
				}
				var aY = "";
				try {
					aY = this.v.location.href;
				} catch(ex) {}
				if(!aY) {
					aY = "-";
				}
				if(aY.length > bj) {
					aY = aY.substring(0, bj);
				}
				aY = escape(aY);
				return aY;
			},
			bS: function(bn) {
				var dM = this.dQ;
				if(typeof(bn) != "undefined" && bn == 1) {
					dM = this.cu;
				}
				if(!this.t) {
					try {
						try {
							this.t = this.cO.document.referrer;
						} catch(ex) {
							this.t = this.aC.referrer;
						}
						if(!this.t) {
							this.t = this.cO.opener.location.href;
						}
					} catch(ex) {}
					if(!this.t) {
						this.t = "-";
					}
					if(this.t.length > dM) {
						this.t = this.t.substring(0, dM);
					}
					this.t = escape(this.t);
				}
				return this.t;
			},
			bV: function(R, dR) {
				try {
					if(R && dR && R.getAttribute(dR)) {
						return R.getAttribute(dR).toString();
					}
				} catch(ex) {}
				return null;
			},
			bk: function(R) {
				if(R && R.name) {
					return R.name.toString();
				} else if(this.bV(R, "name")) {
					return this.bV(R, "name");
				} else if(R && R.id) {
					return R.id.toString();
				} else {
					return "-";
				}
			},
			dh: function(R) {
				var H = 1,
					bG = 0;
				while(R && H <= 50) {
					R = R.parentNode;
					H++;
					if(R && R.tagName == "DIV") {
						var an = this.bk(R);
						if(an && an.indexOf("__") == 0 && an.length > 2) {
							bG = 1;
							break;
						}
					}
				}
				if(bG == 1) {
					return R;
				} else {
					return null;
				}
			},
			cF: function(R, cB) {
				if(!R.onclick) {
					R.onclick = cB;
				} else {
					if(this.ep) {
						R.attachEvent("onclick", cB);
					} else {
						R.addEventListener("click", cB, false);
					}
				}
			},
			dS: function() {
				var H = 0;
				if(typeof(j.v.frames) != "undefined" && j.v.frames) {
					for(H = 0; H < j.v.frames.length; H++) {
						try {
							j.cF(j.v.frames[H].document, j.bB);
						} catch(ex) {}
					}
				}
				if(j.v["__99_867_pageonload"]) {
					j.v["__99_867_pageonload"]();
				}
			},
			eY: function(R) {
				var H = 1;
				while(R && R.tagName != "A" && R.tagName != "AREA" && H <= 10) {
					R = R.parentNode;
					H++;
				}
				if(R && (R.tagName == "A" || R.tagName == "AREA")) {
					return R;
				} else {
					return null;
				}
			},
			cW: function(R) {
				var H = 1;
				var ao = undefined;
				if(_ozclick == 1) {
					var T = this.bk(R);
					while(R && H <= 5 && !(T && T.indexOf("__") == 0 && T.length > 2 && R.onclick)) {
						R = R.parentNode;
						T = this.bk(R);
						H++;
					}
					if(R && R.onclick && T && T.indexOf("__") == 0 && T.length > 2) {
						return R;
					}
				} else {
					if(R && R.tagName) {
						ao = R.tagName.toLowerCase();
					}
					while(R && !R.onclick && H <= 5 && ao != this.dI && ao != this.dm) {
						if(R.parentNode && R.parentNode.tagName) {
							R = R.parentNode;
							ao = R.tagName.toLowerCase();
							H++;
						} else {
							return null;
						}
					}
					if(R && R.onclick && ao != this.dI && ao != this.dm) {
						return R;
					}
				}
				return null;
			},
			eZ: function(val) {
				var fh = /^\d*$/;
				if(fh.test(val)) {
					return true;
				} else {
					return false;
				}
			},
			dH: function() {
				var h = Math.floor(new Date().getTime() / 1000);
				var aa = 0;
				var K = "-";
				try {
					var aG = this.bF(this.bH);
					if(aG) {
						K = aG;
						var eg = K.indexOf("sTime=");
						var cl = K.indexOf("&sIndex=");
						var aO = "-";
						if(eg < 0) {
							aa++;
							aO = "sTime=" + h;
						} else {
							aO = K.substring(0, cl);
						}
						var bq = 0;
						if(cl < 0) {
							aa++;
							bq = 999999;
						} else {
							bq = K.substring(K.indexOf("&sIndex=") + 8);
							if(!this.eZ(bq)) {
								bq = 999999;
							} else {
								bq++;
							}
						}
						K = aO + "&sIndex=" + bq;
						this.bD(this.bH, K, 0, this.ac());
					} else {
						K = "sTime=" + h + "&sIndex=1";
						this.bD(this.bH, K, 0, this.ac());
					}
				} catch(ex) {}
				return K + "&sret=" + aa;
			},
			bB: function(L) {
				if(j.V < j.dJ) {
					j.aG = j.dH();
					var bE = null;
					var bx = "-";
					var C = null;
					var T = "-";
					if(!L) {
						if(j.v.event) {
							L = j.v.event;
							bE = L.srcElement;
						} else {
							try {
								var i = 0;
								for(i = 0; i < j.v.frames.length; i++) {
									if(j.v.frames[i].event) {
										L = j.v.frames[i].event;
										bE = L.srcElement;
									}
								}
							} catch(ex) {}
						}
					} else {
						if(L.target) {
							bE = L.target;
						} else if(L.srcElement) {
							bE = L.srcElement;
						}
					}
					if(L && bE) {
						var F = null;
						var ax = j.eY(bE);
						if(ax && ax.href) {
							F = ax;
							C = "A";
							T = escape(j.bk(F));
							bx = escape(F.href);
							if(!bx) {
								bx = "-";
							}
						} else if(bE.tagName == j.dq && (bE.type == j.cP || bE.type == j.db || bE.type == j.dA)) {
							F = bE;
							C = j.dq;
							T = escape(j.bk(F));
						} else {
							F = j.cW(bE);
							if(F) {
								C = F.tagName;
								T = escape(j.bk(F));
							}
						}
						if(F) {
							var G = undefined;
							if(C && C != "-") {
								var aI = j.dh(F);
								j.bv = j.bV(F, _ozpoc);
								j.aR = j.bV(F, _ozrec);
								var bs = 0;
								var ad = 0;
								if(typeof(L.pageX) != 'undefined') {
									bs = L.pageX;
									ad = L.pageY;
								} else if(typeof(L.x) != 'undefined') {
									bs = L.x;
									ad = L.y;
								}
								if(aI) {
									var dj = escape(j.bk(aI));
									G = C + "*" + T + "*" + bs + "*" + ad + "*" + dj;
								} else {
									G = C + "*" + T + "*" + bs + "*" + ad;
								}
								var af = Math.floor((new Date()).getTime() / 1000);
								if(T.toLowerCase().indexOf("__ad_") == 0 || T.toLowerCase().indexOf("__zntg_") == 0) {
									j.dz(T, af, bx);
								} else if(aI) {
									T = escape(j.bk(aI));
									if(T.toLowerCase().indexOf("__ad_") == 0 || T.toLowerCase().indexOf("__zntg_") == 0) {
										j.dz(T, af, bx);
									}
								}
							}
							if(C && j.bP() != '') {
								try {
									if(j.V == 0 && j.aN == 1) {
										j.V = 1;
										j.aN = j.V + 1;
									} else {
										if(j.aN == 1) {
											j.V = 2;
										} else {
											j.V = j.aN;
										}
										j.aN = j.V + 1;
									}
								} catch(ex) {
									j.V = 99;
								}
								j.bZ(G, j.V, bx);
								j.cZ(100);
							}
						}
					}
				}
			},
			cZ: function(aV) {
				var eN = (new Date()).getTime();
				while(((new Date()).getTime() - eN) < aV) {}
			},
			cL: function(type) {
				var aV = (new Date()).getTime();
				if(type == 1) {
					aV = Math.floor(aV / 1000);
				}
				return "ozrand=" + aV;
			},
			bZ: function(G, V, bx) {
				if(this.bP() != '' && this.ak(1) && this.aw && this.au && G && V > 0 && bx) {
					this.bW.src = this.bP() + "?" + V + "&" + this.ak(1) + "&" + this.aw + "&" + this.au + "&" + G + "&" + bx + "&" + this.dr() + "&" + this.cL(1);
				}
			},
			fz: function(G, V, be, by) {
				if(this.bP() != '' && by && this.aw && G && V > 0 && be) {
					this.bW.src = this.bP() + "?" + V + "&" + by + "&" + this.aw + "&-&" + G + "&" + be + "&" + this.dr() + "&" + this.cL(1);
				}
			},
			ej: function(G, V, be, fB, by) {
				if(this.bP() != '' && by && this.aw && G && V > 0 && be) {
					this.bW.src = this.bP() + "?" + V + "&" + by + "&" + this.aw + "&-&" + G + "&" + be + "&" + this.dr() + "&" + fB + "&" + this.cL(1);
				}
			},
			fg: function(aH) {
				var ab;
				try {
					if(typeof(aH) != "undefined") {
						if(aH.length > this.aE) {
							aH = aH.substring(0, this.aE);
						}
						ab = escape("&" + aH);
					}
				} catch(ex) {}
				if(typeof(ab) == "undefined") {
					ab = "-";
				}
				this.bC = ab;
				this.aM = 1;
			},
			co: function(aF, bo) {
				var aQ;
				try {
					if(typeof(aF) != "undefined") {
						if(aF.length > this.aE) {
							aF = aF.substring(0, this.aE);
						}
						aQ = escape("&" + aF);
					}
				} catch(ex) {}
				if(typeof(aQ) == "undefined") {
					aQ = "-";
				}
				if(bo) {
					this.ai = aQ;
				}
				return aQ;
			},
			dp: function(bz, bo) {
				var bJ;
				try {
					if(typeof(bz) != "undefined" && bz.indexOf("#") == 0 && bz.length > 1) {
						bJ = escape(bz);
					}
				} catch(ex) {}
				if(typeof(bJ) == "undefined") {
					bJ = "-";
				}
				if(bo) {
					this.au = bJ;
				}
				return bJ;
			},
			cQ: function(eI) {
				try {
					var bQ = /^\d+$/;
					return bQ.test(eI);
				} catch(ex) {}
				return false;
			},
			fE: function() {
				var ca = undefined;
				try {
					ca = this.cf.userAgent;
					if(ca && ca.toLowerCase().indexOf("alexa") > -1) {
						return 1;
					}
				} catch(ex) {}
				return 0;
			},
			dE: function() {
				var bN = 0,
					aJ = 0;
				if(this.bY) {
					bN = this.bY.width;
					aJ = this.bY.height;
					if(bN && aJ && this.cQ(bN) && this.cQ(aJ)) {
						return bN + "*" + aJ;
					}
				}
				return "0*0";
			},
			cU: function() {
				var aU = "-";
				try {
					aU = escape(this.aC.title.substring(0, 30));
				} catch(ex) {}
				if(!aU) {
					aU = "-";
				}
				var O = undefined;
				try {
					if(_ozuid) {
						O = escape(_ozuid);
					}
				} catch(ex) {}
				if(!O) {
					O = "-";
				}
				var ba = undefined;
				try {
					if(_ozvid) {
						ba = escape(_ozvid);
					}
				} catch(ex) {}
				if(!ba) {
					ba = "-";
				}
				var bg = this.df();
				if(!bg) {
					bg = "-";
				}
				var de = 0;
				try {
					var bA = new Date().getTime();
					if(_oztime && bA > _oztime) {
						de = bA - _oztime;
					}
				} catch(ex) {}
				var aZ = undefined;
				try {
					if(_oznvs) {
						aZ = escape(_oznvs);
					}
				} catch(ex) {}
				if(!aZ) {
					aZ = "-";
				}
				if(!this.aG) this.aG = "-";
				var h = Math.floor(new Date().getTime() / 1000);
				var J = this.da(h);
				var cr = "0";
				if(J.indexOf("&ltime=") != -1) {
					cr = J.substr(J.indexOf("&ltime=") + 7);
				}
				var az = this.cX(true, h);
				var as = this.cK();
				var aD = this.cd();
				return "ozlvd=" + cr + "&ozept=" + aU + "&ozsru=" + O + "&ozsat=" + escape("-") + "&ozver=" + escape("-") + "&ozscr=" + this.dE() + "&ozplt=" + de + "&ozos=" + escape("-") + "&ozalx=" + this.fE() + "&oznvs=" + aZ + "&ozsac=" + bg + "&ozccu=" + escape(J) + "&ozccy=" + escape(az) + "&ozcck=" + escape(as) + "&ozccs=" + escape(aD) + "&ozvid=" + ba + "&ozsi=" + escape(this.aG);
			},
			dr: function() {
				var O = undefined;
				try {
					if(_ozuid) {
						O = escape(_ozuid);
					}
				} catch(ex) {}
				if(!O) {
					O = "-";
				}
				var ba = undefined;
				try {
					if(_ozvid) {
						ba = escape(_ozvid);
					}
				} catch(ex) {}
				if(!ba) {
					ba = "-";
				}
				if(!this.bv) this.bv = "-";
				if(!this.aR) this.aR = "-";
				if(!this.ai) this.ai = "-";
				if(!this.aG) this.aG = "-";
				if(!this.bC) this.bC = "-";
				if(!this.aM || this.aM != 1) this.bC = "-";
				this.aM = 2;
				var aZ = undefined;
				try {
					if(_oznvs) {
						aZ = escape(_oznvs);
					}
				} catch(ex) {}
				if(!aZ) {
					aZ = "-";
				}
				var h = Math.floor(new Date().getTime() / 1000);
				var J = this.da(h);
				var az = this.cX(false, h);
				var as = this.cK();
				var aD = this.cd();
				return "ozsru=" + O + "&ozscr=" + this.dE() + "&ozpoc=" + escape(this.bv) + "&ozprm=" + this.ai + "&oznvs=" + aZ + "&ozrec=" + escape(this.aR) + "&ozccu=" + escape(J) + "&ozccy=" + escape(az) + "&ozcck=" + escape(as) + "&ozccs=" + escape(aD) + "&ozvid=" + ba + "&ozsi=" + escape(this.aG) + "&ozclickprm=" + this.bC;
			},
			ec: function(au, ai) {
				var l = undefined;
				if(_oziframe == 0) {
					l = this.ak(1);
				} else {
					l = this.cc(1);
				}
				if(this.ae && this.ae != "-") {
					this.aw = this.ae;
				} else {
					this.aw = this.bS(1);
				}
				var aP = l;
				var ap = this.aw;
				aP = this.bb(aP, "ozs");
				ap = this.bb(ap, "ozs");
				this.cY.src = this.dG() + "?1&" + aP + "&" + ap + "&" + au + "&" + ai + "&" + this.cU();
				if(au == "-") {
					this.ae = l;
				} else {
					this.ae = l + au;
				}
			},
			fa: function(au, ai) {
				var l = undefined;
				if(_oziframe == 0) {
					l = this.ak(1);
				} else {
					l = this.cc(1);
				}
				if(this.ae && this.ae != "-") {
					this.aw = this.ae;
				} else {
					this.aw = this.bS(1);
				}
				var aP = l;
				var ap = this.aw;
				this.cY.src = this.dG() + "?1&" + aP + "&" + ap + "&" + au + "&" + ai + "&" + this.cU();
				if(au == "-") {
					this.ae = l;
				} else {
					this.ae = l + au;
				}
			},
			bb: function(ag, bM) {
				var bQ;
				var cA = 0;
				while(cA < this.cv) {
					bQ = new RegExp("%26" + bM + "%3D(.+?)%26", "g");
					if(ag.match(bQ)) {
						ag = ag.replace(bQ, "%26");
						cA++;
					} else break;
				}
				bQ = new RegExp("%26" + bM + "%3D(.+?)$", "i");
				ag = ag.replace(bQ, "");
				bQ = new RegExp("%3F" + bM + "%3D(.+?)%26");
				ag = ag.replace(bQ, "%3F");
				bQ = new RegExp("%3F" + bM + "%3D(.+?)$");
				ag = ag.replace(bQ, "");
				return ag;
			},
			cj: function(L) {
				var cb = 1;
				try {
					if(L.eventPhase && L.eventPhase == 0) {
						cb = 0;
					}
				} catch(ex) {}
				if(cb) {
					if(!this.v.event) {
						this.bB(L);
					} else {
						this.bB();
					}
				}
			},
			ev: function(T, C, av, aA) {
				var G = "";
				var eF = "-";
				var cR = "-";
				var cz = "-";
				if(T && T != '') {
					if(this.V < this.dJ) {
						this.V++;
						if(typeof(C) != "undefined" && C != '') {
							cR = C;
						}
						if(typeof(av) != "undefined" && av != '') {
							eF = av;
							G = cR + "*" + T + "*0*0*" + av;
						} else {
							G = cR + "*" + T + "*0*0";
						}
						if(typeof(aA) != "undefined" && aA != '') {
							if(aA.length > this.am) {
								aA = aA.substring(0, this.am);
							}
							cz = aA;
						}
						this.bZ(G, this.V, cz);
						this.cZ(100);
					}
				}
			},
			eL: function(aS, du) {
				var bo = 0;
				if(typeof(_oz_updatetail) != "undefined" && _oz_updatetail == 1) {
					bo = 1;
					this.V = 0;
					this.aN = 1;
				}
				var aQ = this.co(aS, bo);
				var bJ = this.dp(du, bo);
				this.ec(bJ, aQ);
			},
			cD: function() {
				var O = undefined;
				try {
					if(_ozuid) {
						O = escape(_ozuid);
					}
				} catch(ex) {}
				if(!O) {
					O = "-";
				}
				var h = Math.floor(new Date().getTime() / 1000);
				var J = this.da(h);
				var az = this.cX(false, h);
				var as = this.cK();
				var aD = this.cd();
				return "ozsru=" + O + "&ozscr=" + this.dE() + "&ozprm=" + this.ai + "&ozccu=" + escape(J) + "&ozccy=" + escape(az) + "&ozcck=" + escape(as) + "&ozccs=" + escape(aD);
			},
			ft: function(bK, bu) {
				var l = undefined;
				if(_oziframe == 0) {
					l = this.ak(1);
				} else {
					l = this.cc(1);
				}
				var aP = l;
				var ap = this.bS(1);
				aP = this.bb(aP, "ozs");
				ap = this.bb(ap, "ozs");
				this.cw.src = this.dv() + "?" + aP + "&" + ap + "&" + bK + "&" + bu + "&" + this.cD();
			},
			dZ: function(bK, bu) {
				var dB = '-';
				var di = '-';
				if(typeof(bK) != "undefined" && bK != '') {
					dB = escape(bK);
					try {
						if(typeof(bu) != "undefined" && bu != '') {
							if(bu.length > this.aE) {
								bu = bu.substring(0, this.aE);
							}
							di = escape("&" + bu);
						}
					} catch(ex) {}
					this.ft(dB, di);
					this.cZ(100);
				}
			},
			dz: function(T, af, cg) {
				T = escape(T);
				var l = this.ak(0);
				var K = this.bF(this.bf);
				if(K) {
					var H = 0,
						ay = 0,
						bX = 0;
					for(H = 0; H < K.length; H++) {
						if(K.charAt(H) == '&') {
							ay++;
							if(ay == 1) {
								bX = H + 1;
							}
						}
					}
					if(ay < 4) {
						K = K + "&" + T + "*" + af + "*" + l + "*" + cg;
					} else if(ay == 4 && bX > 0) {
						K = K.substr(bX) + "&" + T + "*" + af + "*" + l + "*" + cg;
					}
				} else {
					K = T + "*" + af + "*" + l + "*" + cg;
				}
				this.bD(this.bf, K, 0, this.ac());
			},
			df: function() {
				var aj = undefined;
				var h = Math.floor((new Date()).getTime() / 1000);
				try {
					var K = "";
					var ci = this.bF(this.bf).split("&");
					for(var H = 0; H < ci.length; H++) {
						var ah = ci[H].split("*");
						if((h - ah[1]) < 900 && ah[2] == escape(this.bS(0)) && ah[3] == this.ak(0)) {
							aj = ah[0];
						} else {
							K += (K == "" ? "" : "&") + ci[H];
						}
					}
					this.bD(this.bf, K, 0, this.ac());
				} catch(ex) {}
				return aj;
			},
			da: function(h) {
				var K = "-";
				try {
					K = this.bF(this.bi);
					var dP = new Date();
					var dc = 0;
					if(!K) {
						var cp = Math.round(dP.getTime() / 1000);
						var bm = cp.toString(16);
						var ce = bm.length;
						bm = bm.substring(ce - 7, ce);
						var cS = "";
						for(var H = 0; H < 3; H++) {
							var dw = Math.floor(Math.random() * 255);
							var cJ = dw.toString(16);
							cS += (cJ.length == 1 ? "0" : "") + cJ;
						}
						var dN = "v" + bm + cS + ".0";
						K = "vid=" + dN + "&ctime=" + h + "&ltime=" + dc;
					} else {
						if(K && K.indexOf("ctime=") != -1) {
							var bO = K.substr(K.indexOf("ctime=") + 6);
							var cI = bO.indexOf("&");
							if(cI != -1) {
								bO = bO.substring(0, cI);
							}
							if(bO.match(/^\d*$/)) {
								dc = new Number(bO);
							}
						}
						K = K.substring(0, K.lastIndexOf("&ctime")) + "&ctime=" + h + "&ltime=" + dc;
					}
					this.bD(this.bi, K, new Date(dP.getTime() + 252288000000), this.ac());
				} catch(ex) {}
				return K;
			},
			cX: function(eO, h) {
				var K = "-";
				try {
					var az = this.bF(this.ar);
					var J = this.bF(this.bi);
					if(az) {
						K = az;
						K = K.substring(0, K.lastIndexOf("&ctime")) + J.substring(J.lastIndexOf("&ctime")) + "&compid=" + this.bp;
						this.bD(this.ar, K, 0, this.ac());
					}
					if(eO) {
						var al = 0;
						var aX = "-";
						var bL = "-";
						var l = this.ak(0);
						var aB = this.bS(0);
						var dF = 1;
						var bG = 0;
						if(aB != "-") {
							var cN = this.dG().split(";")[3].split(":");
							for(var H = 0; H < cN.length; H++) {
								if(aB.indexOf(cN[H]) != -1) {
									dF = 0;
								}
							}
							if(dF == 1) {
								al = 1;
							}
						}
						var bw = l.lastIndexOf("%3Fozu_sid%3D");
						if(bw == -1) {
							bw = l.lastIndexOf("%26ozu_sid%3D");
						}
						var aq = l.lastIndexOf("%3Fozs%3D");
						if(aq == -1) {
							aq = l.lastIndexOf("%26ozs%3D");
						}
						if(bw != -1 && bw > aq) {
							al = 1;
							var cT = l.split(/%3Fozu_sid%3D|%26ozu_sid%3D/);
							if(cT.length > 1) {
								var bU = cT[1];
								var aT = bU.indexOf("%26");
								if(aT != -1) {
									bU = bU.substr(0, aT);
								}
								aX = bU;
								bG = 1;
							}
						}
						if(aq != -1 && aq > bw) {
							al = 1;
							var dk = l.split(/%3Fozs%3D|%26ozs%3D/);
							for(var H = 1; H < dk.length && H < 4; H++) {
								var aL = dk[H];
								var aT = aL.indexOf("%26");
								if(aT != -1) {
									aL = aL.substr(0, aT);
								}
								if(aL.indexOf("-") == -1) {
									bL = aL;
									bG = 2;
									break;
								} else {
									var cq = aL.split("-");
									if(cq.length == 2 && cq[1] == this.bp) {
										bL = cq[0];
										bG = 2;
										break;
									}
								}
							}
						}
						if(!az && aB == "-") {
							al = 1;
						}
						if(al) {
							K = "erefer=" + aB + "&eurl=" + l + "&etime=" + h + J.substring(J.lastIndexOf("&ctime")) + "&compid=" + this.bp;
							this.bD(this.ar, K, 0, this.ac());
							if(aX != "-" || bL != "-") {
								var as = "";
								var ck = K.indexOf("&etime=");
								if(ck != -1) {
									as = "etime=" + h + "&ozu_sid=" + aX + "&ozs=" + bL + "&flag=" + bG + "&compid=" + this.bp;
									this.bD(this.cn, as, new Date(new Date().getTime() + 30 * 86400 * 1000), this.ac());
									this.bD(this.ct, as, 0, this.ac());
								}
							}
						}
					}
				} catch(ex) {}
				return K;
			},
			cK: function() {
				var as = "-";
				try {
					var aj = this.bF(this.cn);
					if(aj) {
						as = aj;
					}
				} catch(ex) {}
				return as;
			},
			cd: function() {
				var aD = "-";
				try {
					var aj = this.bF(this.ct);
					if(aj) {
						aD = aj;
					}
				} catch(ex) {}
				return aD;
			},
			cG: function() {
				try {
					if(typeof(this.cE) == "undefined") {
						this.eV();
						this.cE = 1;
						this.aN = 1;
						this.dO = 1;
					} else {
						this.cE = 2;
						this.dO = 2;
					}
					this.aG = this.dH();
					if(this.dO == 1) {
						this.co(this.v._ozprm, 1);
						this.dp(this.v._ozurltail, 1);
						if(this.v.onload) {
							this.v["__99_867_pageonload"] = this.v.onload;
						}
						this.v.onload = this.dS;
						this.cF(this.aC, this.bB);
						this.fa(this.au, this.ai);
					}
				} catch(ex) {}
				return this;
			}
		};
		if(typeof(_99_867) == "undefined") {
			_99_867 = j.cG();
			__ozclk = function() {
				try {
					var L = _99_867.v.event || arguments.callee.caller.arguments[0];
					_99_867.cj(L);
				} catch(e) {}
			};
			__ozEvent = function(bK, bu) {
				_99_867.dZ(bK, bu);
			};
			__ozfac2 = function(aS, du) {
				_99_867.eL(aS, du);
			};
			__ozfaj2 = function(T, C, av, aA) {
				_99_867.ev(T, C, av, aA);
			};
			__setClickPrm = function(aH) {
				_99_867.fg(aH);
			};
		}
	})();
});