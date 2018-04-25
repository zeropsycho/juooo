/*
 *  juooo myjuooo
 *  v1.0.1
 *  build by adeng<deng982@foxmail.com>
 *  date: 2016-03-21 10:31:50
 */
define(function(require, exports, module) {
exports.init = function() {

var $ = require('jquery');
//∂©µ•œÍ«Èµ÷ø€
$(".moi_count .discount").on("click", function(){
	if($(this).hasClass("cur")){
		$(this).removeClass("cur");
	}else{
		$(this).addClass("cur").siblings().removeClass("cur"); 
	}
}
);



}});