function getUserBasicAndSec(){
	$.ajax({
		type : 'POST',
		url : doorUrl,
		data : {
			type : 5
		},
		dataType : 'json',
		beforeSend : function(result) {
			//发送请求前
		},
		success : function(result) {
			//请求成功后
			if (result.code == 1) {
				var data    = result.data;
				var mobile  = $('.s-mobile').next('span');
				var mail	= $('.s-mail').next('span');
				var payPass = $('.s-pay-pass').next('span');
				
				if($('.js-scores')){
					$('.js-scores').text(data.userScores);
				}
				if($('.js-money')){
					$('.js-money').text(data.userMoney);
				}
				
				$('.rate').css('width', data.progressBar.percentage);
				$('.js-sec').text(data.progressBar.level);
				
				if(data.mobileStatusList.status){
					mobile.addClass('c2');
				} else {
					mobile.addClass('c1');
				}
				mobile.html(data.mobileStatusList.button);
				
				if(data.emailStatusList.status){
					mail.addClass('c2');
				} else {
					mail.addClass('c1');
				}
				mail.html(data.emailStatusList.button);
				
				if(data.payPassStatusList.status){
					payPass.addClass('c2');
				} else {
					payPass.addClass('c1');
				}
				payPass.html(data.payPassStatusList.button);
				
				
				if(data.mobileStatusList.status == 1 && data.emailStatusList.status == 1
						&& data.payPassStatusList.status == 1){
					//$(".secure-tip").text('');
					$('.secure-tip').text('为保障账户和余额安全，请定期修改您的密码');
				}
			}
		},
		error : function(result) {
			//请求错误
		},
		complete : function(result) {
			//请求完成

		}
	});
}

function getOrderStatusList(type) {
	$.ajax({
		type : 'POST',
		url : doorUrl,
		data : {
			type : 7
		},
		dataType : 'json',
		beforeSend : function(result) {
			//发送请求前
		},
		success : function(result) {
			//请求成功后
			if (result.code == 1) {
				if (type == 0) {
					var titObj = $(".mth-order-tit").find("a");
					titObj.eq(0).text('待支付' + result['data']['waitCount']);
					titObj.eq(1).text('待收货' + result['data']['ongoingCount']);
					titObj.eq(2).text('待评价' + result['data']['commentCount']);
				} else {
					var titObj = $(".o-t-tip").find("a");
					titObj.eq(1).find('.num').text(
							'（' + result['data']['waitCount'] + '）');
					titObj.eq(2).find('.num').text(
							'（' + result['data']['ongoingCount'] + '）');
					titObj.eq(3).find('.num').text(
							'（' + result['data']['commentCount'] + '）');
				}
			}
		},
		error : function(result) {
			//请求错误
		},
		complete : function(result) {
			//请求完成

		}
	});
}

function getRecommondList() {
	var type;
	if (lastCityId > 0 && lastVenueId > 0) {
		type = 15;
	} else {
		type = 14;
	}

	$.ajax({
		type : 'POST',
		url : doorUrl,
		data : {
			type : type,
			cityId : lastCityId,
			venueId : lastVenueId
		},
		dataType : 'json',
		beforeSend : function(result) {
			//发送请求前
			$(".mt-recommend").find(".com-loading").show();
		},
		success : function(result) {
			//请求成功后
			if (result.code == 1) {
				var recommondList = '';
				$.each(result.data,
						function(key, item) {
							recommondList += '<li><a href="' + itemUrl
									+ item.id + '">';
							recommondList += '<img title="' + item.schedular_name + '" src="' + imgUrl + item.pic
									+ '">';
							recommondList += '<p>' + item.schedular_name
									+ '</p></a>';
							recommondList += '<div class="tm">时间：'
									+ date('Y.m.d H:i', item.show_time)
									+ '</div></li>';
						});
				$(".mt-recommend").find('ul').prepend(recommondList);
				$(".mt-recommend").find(".com-loading").hide();
			}

		},
		error : function(result) {
			//请求错误
		},
		complete : function(result) {
			//请求完成

		}
	});
}
    //梁芝 12.28 修改
    /** 
     * js获取字符串长度，中英文都能用 
     * @param str：字符串 
     */
    function GetLength(str) {
        var realLength = 0, len = str.length, charCode = -1;
        for (var i = 0; i < len; i++) {
            charCode = str.charCodeAt(i);
            if (charCode >= 0 && charCode <= 128) realLength += 1;
            else realLength += 2;
        }
        return realLength;
    }

    /** 
     * js截取字符串，中英文都能用 
     * @param str：需要截取的字符串 
     * @param len: 需要截取的长度 
     */
   function setString(str, len) {  
    var strlen = 0;  
    var s = "";  
    for (var i = 0; i < str.length; i++) {  
        if (str.charCodeAt(i) > 128) {  
            strlen += 2;  
        } else {  
            strlen++;  
        }  
        s += str.charAt(i);  
        if (strlen >= len) {  
            return s+"...";  
        }  
    }  
    return s;  
}  
//2016.12.28 梁芝修改 END

function autoLoadNoteList() {
	$.ajax({
				type : 'POST',
				url : doorUrl,
				data : {
					type : 2
				},
				dataType : 'json',
				beforeSend : function(result) {
					//发送请求前
					$(".mth-news").find(".com-loading").show();
				},
				success : function(result) {
					//请求成功后
					var noteList = '';
					if (result.code == 1) {
						if (typeof (result.data) == undefined
								|| typeof (result.data) != "object") {
							$(".mth-news").find(".no-mth-order").show();
						} else {
							$
									.each(
											result.data,
											function(key, item) {
												noteList += '<li class="clearfix"><div class="info"><h3>';
												noteList += '<a href="'
														+ noteUrl + item.id
														+ '">' + item.title
														+ '</a></h3>';
												noteList += '<p class="tm">发件人：'
														+ item.from_user
														+ '</p>';
												noteList += '</div></li>';
											});
							$(".mth-news").children(".mth-buy-bd").find("ul")
									.prepend(noteList);
						}
					} else {
						$(".mth-news").find(".no-mth-order").show();
					}
					$(".mth-news").find(".com-loading").hide();
				},
				error : function(result) {
					//请求错误
					$(".mth-news").find(".com-loading").hide();
					$(".mth-news").find(".no-mth-order").show();
				},
				complete : function(result) {
					//请求完成

				}
			});
}

function autoLoadCommentList() {
	$.ajax({
		type : 'POST',
		url : doorUrl,
		data : {
			type : 3
		},
		dataType : 'json',
		beforeSend : function(result) {
			//发送请求前
			$(".mth-comment").find(".com-loading").show();
		},
		success : function(result) {
			//请求成功后
			var attentionList = '';
			if (result.code == 1) {
				if (typeof (result.data) == undefined
						|| typeof (result.data) != "object") {
					$(".mth-comment").find(".no-mth-order").show();
				} else {
					$.each(result.data, function(key, item) {
						var strLength = GetLength(item.detail.schedular_name);
                        if(strLength > 80)
                        {
                        	item.detail.schedular_name = setString(item.detail.schedular_name,80);
                        }
						attentionList += '<li class="clearfix"><a href="'
								+ itemUrl + item.detail.schedular_id
								+ '" class="img">';
						attentionList += '<img title="' + item.detail.schedular_name + '" src="' + imgUrl
								+ item.detail.pic_address + '"></a>';
						attentionList += '<div class="info"><h3>';
						attentionList += '<a href="' + itemUrl
								+ item.detail.schedular_id + '">'
								+ item.detail.schedular_name + '</a></h3>';
						attentionList += '<p class="tm">时间：'
								+ date('Y.m.d H:i', item.detail.show_time)
								+ '</p></div></li>';
					});
					$(".mth-comment").children(".mth-buy-bd").find("ul")
							.prepend(attentionList);
				}
			} else {
				$(".mth-comment").find(".no-mth-order").show();
			}
			$(".mth-comment").find(".com-loading").hide();
		},
		error : function(result) {
			//请求错误
			$(".mth-comment").find(".com-loading").hide();
			$(".mth-comment").find(".no-mth-order").show();
		},
		complete : function(result) {
			//请求完成
		}
	});
}

function autoLoadRemindList() {
	$.ajax({
		type : 'POST',
		url : doorUrl,
		data : {
			type : 4
		},
		dataType : 'json',
		beforeSend : function(result) {
			//发送请求前
			$(".mth-note").find(".com-loading").show();
		},
		success : function(result) {
			//请求成功后
			var noteList = '';
			var stockCss;
			if (result.code == 1) {
				if (typeof (result.data) == undefined
						|| typeof (result.data) != "object") {
					$(".mth-note").find(".no-mth-order").show();
				} else {
					$.each(result.data, function(key, item) {
						if(item.schedular_id > 0){
							if(typeof(item['pic_address']) != undefined){
								stockCss = item.stock == '缺货' ? 1 : 2;
								noteList += '<li class="clearfix"><a href="' + itemUrl
										+ item.schedular_id + '" class="img">';
								noteList += '<img title="' + item.title + '" src="' + imgUrl + item.pic_address
										+ '"></a>';
								noteList += '<div class="info"><h3>';
								noteList += '<a href="' + itemUrl + item.schedular_id
										+ '">' + item.title + '</a></h3>';
								noteList += '<p class="tm">状态：<span class="c'
										+ stockCss + '">' + item.stock + '</span></p>';
								noteList += '</div></li>';
							}
						}
					});
					$(".mth-note").children(".mth-buy-bd").find("ul").prepend(
							noteList);
				}
			} else {
				$(".mth-note").find(".no-mth-order").show();
			}
			$(".mth-note").find(".com-loading").hide();
		},
		error : function(result) {
			//请求错误
			$(".mth-note").find(".com-loading").hide();
			$(".mth-note").find(".no-mth-order").show();
		},
		complete : function(result) {
			//请求完成
		}
	});
}

function autoLoadOrderList(flush) {
	if (flush) {
		$(".mth-order-table").find("tr").remove();
	}
	$.ajax({
				type : 'POST',
				url : doorUrl,
				data : {
					type : 1
				},
				dataType : 'json',
				beforeSend : function(result) {
					//发送请求前
					$(".mth-order").find(".com-loading").show();
				},
				success : function(result) {
					//请求成功后
					var orderList = '';
					var nowTime, showTime, selectUrl;
					var button,buyState, picAddress, schedularId;
					var firstOrderTicket = '';
					if (result.code == 1) {
						if (typeof (result.data) == undefined
								|| typeof (result.data) != "object") {
							$(".mth-order").find(".no-mth-order").show();
						} else {
							nowTime = new Date().getTime();
							$.each(
											result.data,
											function(key, item) {
												if (typeof (item['order_ticket']) != "undefined") {
													orderText = '订单详情';
													showTime = item.order_ticket[0].show_time * 1000;
													picAddress = item.order_ticket[0].pic;
													schedularId = item.order_ticket[0].schedular_id;
													firstOrderTicket = item.order_ticket[0].ticket_name;
													if (item.order_ticket[0].product_type == '3') {
														selectUrl = aroundUrl;
														buyState = '再次购买';
													} else {
														selectUrl = itemUrl;
														buyState = nowTime > showTime ? '已过期'
																: '再次购买';
													}

												} else {
													orderText = '订单异常';
													buyState = '已过期';
												}
												
												if(item.order_status == 1 && item.pay_status == 0){
													button = '<a class="order-cancel" data-sn="'+item.order_sn+'" href="javascript:;">取消</a>' + ' | ';
												} else if(item.order_status == 2){
													button = '<a title="删除" data-order-sn="'
														+ item.order_sn
														+ '"' + 'class="del-order">删除</a>' + '&nbsp;&nbsp;|&nbsp;&nbsp;';
												} else {
													button = '';
												}
												
												orderList += '<tr><td><div class="mth-order-table-prod">';
												orderList += '<a href="'
														+ selectUrl
														+ schedularId
														+ '" class="img">';
												orderList += '<img title="' + firstOrderTicket + '" src="'
														+ imgUrl + picAddress
														+ '">';
												orderList += '</a><div class="od-num"><span class="c1">订单号：</span>'
														+ item.order_sn
														+ '</div>';
												orderList += '</div></td><td class="dt">';
												orderList += '￥ '
														+ item.order_amount
														+ '<br>';
												orderList += '<a href="'
														+ orderInfoUrl
														+ item.order_sn + '">'
														+ orderText + '</a>';
												orderList += '</td><td class="op">';
												orderList += button 
														  + '<a href="'
														  + selectUrl
														  + schedularId + '">'
														  + buyState
														  + '</a>'
														  + '</td></tr>';
											});
							$(".mth-order-table colgroup").after(orderList);
						}
					} else {
						$(".mth-order").find(".no-mth-order").show();
					}
					$(".mth-order").find(".com-loading").hide();
				},
				error : function(result) {
					//请求错误
					$(".mth-order").find(".com-loading").hide();
					$(".mth-order").find(".no-mth-order").show();
				},
				complete : function(result) {
					//请求完成
				}
			});
}

var bookLock=0;
function delUserBooking(type, bookId, lastPageNum, reloadType, reloadUrl) {
	var postType, clearType, tableNum;
	if (type) {
		postType = 9;
		clearType = 'mystock';
	} else {
		postType = 10;
		clearType = 'myreserve';
	}
	
	if(bookLock==0){
		bookLock=1;
		$.ajax({
			type : 'POST',
			url : doorUrl,
			data : {
				type : postType,
				bid : bookId
			},
			async: false,
			dataType : 'json',
			success : function(result) {
				bookLock=0;
				// 请求成功后
				if (result.code == 1) {
					tableNum = $("tbody tr").length;
					if (tableNum <= lastPageNum) {
						if(reloadType==1){
							window.location.href=reloadUrl;
						}else{
							window.location.reload();
						}
					}

				} else {
					alert('系统繁忙，请稍后再试');
					return false;
				}
			},
			error : function(result) {
				bookLock=0;
				// 请求错误
				alert('系统繁忙，请稍后再试');
				return false;
			},
		});
	}
}

var followLock=0;
function delUserFollow(collectIds) {
	if(followLock==0){
		followLock=1;
		$.ajax({
			type : 'POST',
			url : doorUrl,
			data : {
				type : 11,
				cid : collectIds
			},
			dataType : 'json',
			success : function(result) {
				followLock=0;
				// 请求成功后
				if (result.code == 1) {
					window.location.reload();
				} else {
					alert('系统繁忙，请稍后再试');
					return false;
				}
			},
			error : function(result) {
				followLock=0;
				// 请求错误
				alert('系统繁忙，请稍后再试');
				return false;
			},
		});
	}
	
}

function cancelOrderStatus(orderSn, clearCon) {
	$.ajax({
		type : 'POST',
		url : doorUrl,
		data : {
			type : 8,
			orderSn : orderSn,
			clearCon : clearCon
		},
		dataType : 'json',
		success : function(result) {
			// 请求成功后
			if (result.code == 1) {
				window.location.reload();
			} else {
				alert('系统繁忙，请稍后再试');
				return false;
			}
		},
		error : function(result) {
			// 请求错误
			alert('系统繁忙，请稍后再试');
			return false;
		},
	});
}

function updateOrderStatus(type, orderSn) {
	var postType = type ? 7 : 6;
	$.ajax({
		type : 'POST',
		url : doorUrl,
		data : {
			type : 6,
			orderSn : orderSn
		},
		dataType : 'json',
		success : function(result) {
			// 请求成功后
			if (result.code == 1) {
				if (postType == 6) {
					autoLoadOrderList(1);
				} else {
					$("#order-" + orderSn).remove();
				}
			} else {
				alert('系统繁忙，请稍后再试');
				return false;
			}
		},
		error : function(result) {
			// 请求错误
			alert('系统繁忙，请稍后再试');
			return false;
		},
	});
}

//收货地址  根据父级id获取区域列表
function getRegion(pid, type) {
	var str = ''
	$.ajax({
		type : 'POST',
		url : '/user/regionlist',
		data : {
			pid : pid,
			type : type
		},
		async : false,
		dataType : 'JSON',
		success : function(json) {
			str += '<option value="0">--请选择--</option>'
			$.each(json, function(index, value) {
				str += '<option value="' + value.id + '">' + value.region_name
						+ '</option>'
			})
		}
	})
	return str;
}

/**
 * 时间戳格式化函数
 * 
 * @param {string}
 *            format 格式
 * @param {int}
 *            timestamp 要格式化的时间 默认为当前时间
 * @return {string} 格式化的时间字符串
 */
function date(format, timestamp) {
	var a, jsdate = ((timestamp) ? new Date(timestamp * 1000) : new Date());
	var pad = function(n, c) {
		if ((n = n + "").length < c) {
			return new Array(++c - n.length).join("0") + n;
		} else {
			return n;
		}
	};
	var txt_weekdays = [ "Sunday", "Monday", "Tuesday", "Wednesday",
			"Thursday", "Friday", "Saturday" ];
	var txt_ordin = {
		1 : "st",
		2 : "nd",
		3 : "rd",
		21 : "st",
		22 : "nd",
		23 : "rd",
		31 : "st"
	};
	var txt_months = [ "", "January", "February", "March", "April", "May",
			"June", "July", "August", "September", "October", "November",
			"December" ];
	var f = {
		// Day
		d : function() {
			return pad(f.j(), 2)
		},
		D : function() {
			return f.l().substr(0, 3)
		},
		j : function() {
			return jsdate.getDate()
		},
		l : function() {
			return txt_weekdays[f.w()]
		},
		N : function() {
			return f.w() + 1
		},
		S : function() {
			return txt_ordin[f.j()] ? txt_ordin[f.j()] : 'th'
		},
		w : function() {
			return jsdate.getDay()
		},
		z : function() {
			return (jsdate - new Date(jsdate.getFullYear() + "/1/1")) / 864e5 >> 0
		},
		// Week
		W : function() {
			var a = f.z(), b = 364 + f.L() - a;
			var nd2, nd = (new Date(jsdate.getFullYear() + "/1/1").getDay() || 7) - 1;
			if (b <= 2 && ((jsdate.getDay() || 7) - 1) <= 2 - b) {
				return 1;
			} else {
				if (a <= 2 && nd >= 4 && a >= (6 - nd)) {
					nd2 = new Date(jsdate.getFullYear() - 1 + "/12/31");
					return date("W", Math.round(nd2.getTime() / 1000));
				} else {
					return (1 + (nd <= 3 ? ((a + nd) / 7) : (a - (7 - nd)) / 7) >> 0);
				}
			}
		},
		// Month
		F : function() {
			return txt_months[f.n()]
		},
		m : function() {
			return pad(f.n(), 2)
		},
		M : function() {
			return f.F().substr(0, 3)
		},
		n : function() {
			return jsdate.getMonth() + 1
		},
		t : function() {
			var n;
			if ((n = jsdate.getMonth() + 1) == 2) {
				return 28 + f.L();
			} else {
				if (n & 1 && n < 8 || !(n & 1) && n > 7) {
					return 31;
				} else {
					return 30;
				}
			}
		},
		// Year
		L : function() {
			var y = f.Y();
			return (!(y & 3) && (y % 1e2 || !(y % 4e2))) ? 1 : 0
		},
		//o not supported yet
		Y : function() {
			return jsdate.getFullYear()
		},
		y : function() {
			return (jsdate.getFullYear() + "").slice(2)
		},
		// Time
		a : function() {
			return jsdate.getHours() > 11 ? "pm" : "am"
		},
		A : function() {
			return f.a().toUpperCase()
		},
		B : function() {
			// peter paul koch:
			var off = (jsdate.getTimezoneOffset() + 60) * 60;
			var theSeconds = (jsdate.getHours() * 3600)
					+ (jsdate.getMinutes() * 60) + jsdate.getSeconds() + off;
			var beat = Math.floor(theSeconds / 86.4);
			if (beat > 1000)
				beat -= 1000;
			if (beat < 0)
				beat += 1000;
			if ((String(beat)).length == 1)
				beat = "00" + beat;
			if ((String(beat)).length == 2)
				beat = "0" + beat;
			return beat;
		},
		g : function() {
			return jsdate.getHours() % 12 || 12
		},
		G : function() {
			return jsdate.getHours()
		},
		h : function() {
			return pad(f.g(), 2)
		},
		H : function() {
			return pad(jsdate.getHours(), 2)
		},
		i : function() {
			return pad(jsdate.getMinutes(), 2)
		},
		s : function() {
			return pad(jsdate.getSeconds(), 2)
		},
		//u not supported yet
		// Timezone
		//e not supported yet
		//I not supported yet
		O : function() {
			var t = pad(Math.abs(jsdate.getTimezoneOffset() / 60 * 100), 4);
			if (jsdate.getTimezoneOffset() > 0)
				t = "-" + t;
			else
				t = "+" + t;
			return t;
		},
		P : function() {
			var O = f.O();
			return (O.substr(0, 3) + ":" + O.substr(3, 2))
		},
		//T not supported yet
		//Z not supported yet
		// Full Date/Time
		c : function() {
			return f.Y() + "-" + f.m() + "-" + f.d() + "T" + f.h() + ":"
					+ f.i() + ":" + f.s() + f.P()
		},
		//r not supported yet
		U : function() {
			return Math.round(jsdate.getTime() / 1000)
		}
	};
	return format.replace(/[\\]?([a-zA-Z])/g, function(t, s) {
		if (t != s) {
			// escaped
			ret = s;
		} else if (f[s]) {
			// a date function exists
			ret = f[s]();
		} else {
			// nothing special
			ret = s;
		}
		return ret;
	});
}
