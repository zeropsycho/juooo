/*
* @Author: dengkai
* @Date:   2016-04-28 09:35:01
* @Last Modified by:   LiuWei
* @Last Modified time: 2017/9/8 1:50
*/

var _modules = {
	"jquery": "common/jquery/jquery.min.js",
	"juo": "common/juo.js?v=201711031000",
	"details": "component/details.js",
	"search": "component/search.js",
	"fastTicket": "component/fast-ticket.js",
	"title": "module/common/title.js?v=201709080150",
	"laydate": "module/laydate/laydate.js",
	"laydate-search": "module/laydate/laydate-search.js",
	"TGLazyLoad": "module/lazyLoad/asyncLoad.js",
	"layer": "module/common/layer.js",
	"swipe": "module/swipe.js",
	"swiper": "module/swiper.min.js",
	"fixbar": "module/fixbar.js",
	"countDown": "module/count-down.js",
	"countDown1": "module/count-down2.js",
	"countDown2": "module/count-down3.js",
	"payDone": "component/pay-done.js",
	"tabsCommon": "module/tab/tabs-common.js",
	"slideScroll": "module/slide-scroll.js",
	"tabsSlide": "module/tab/tabs-slide.js",
	"activities": "component/activities.js",
	"optionCookie": "module/option-cookie.js",
	"Dialog":'module/common/dialog.js',
	'index': 'component/index.js',
	'Page': 'module/common/page.js?v=201609260924',
	'login': 'module/common/login.js?v=201709080150',
	'searchSuggestion': 'module/common/search-suggestion.js?v=201711061730',
	'dateFormat':'module/common/date-format.js',
	'dialogSlide': 'module/common/dialog-slide.js',
	'oCode'      : 'module/o-code.js',
	'webuploader': 'module/webuploader/webuploader.js',
	'school': 'data/schoolList/schoolList.js',
	'swiperNew': 'module/idangerous.swiper.min.js',
	'adaptivebg' : 'module/jquery.adaptive-backgrounds.min.js',
	'customScoll' : 'module/jquery.mCustomScrollbar.js',
	'mouseWheel' : 'module/jquery.mousewheel.min.js',
	'validForm' : 'module/Validform/Validform.js'
};
seajs.config({
	alias: _modules,
	preload: ['jquery'],
	charset: 'utf-8'
});