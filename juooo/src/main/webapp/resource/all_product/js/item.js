


seajs.use(['details','title','jquery','juo','Dialog','countDown','Page','login','dateFormat','index'], function(details,title,$,juo,Dialog,countDown,Page,login,dateFormat) 
{
        var currentScid               = systemData.currentScid,
            imgDomain                 = systemData.imgDomain,
            getGallerysUrl            = systemData.getGallerysUrl,
            getWatchedOverAgainUrl    = systemData.getWatchedOverAgainUrl,
            getScheAvgScoreUrl        = systemData.getScheAvgScoreUrl,
            getStarInfoUrl            = systemData.getStarInfoUrl,
            getVenueInfoUrl           = systemData.getVenueInfoUrl,
            getHotTopicUrl            = systemData.getHotTopicUrl,
            getTourShowUrl            = systemData.getTourShowUrl,
            buyTicketsUrl             = systemData.buyTicketsUrl,
            bookingUrl                = systemData.bookingUrl,
            likeAndDislikeUrl         = systemData.likeAndDislikeUrl,
            getCommentsUrl            = systemData.getCommentsUrl,
            getPromotionsUrl          = systemData.getPromotionsUrl,
            getCouponUrl              = systemData.getCouponUrl,
            followScheUrl             = systemData.followScheUrl,
            commentUrl                = systemData.commentUrl,
            getTicketsByScidUrl       = systemData.getTicketsByScidUrl,
            getSalePackageUrl         = systemData.getSalePackageUrl,
            selectYearCardUrl         = systemData.selectYearCardUrl,
            isSupportPartScoreExchUrl = systemData.isSupportPartScoreExchUrl,
            getTicketsByScidsUrl      = systemData.getTicketsByScidsUrl,
            currentSid                = systemData.currentSid,
            cate1Id                   = systemData.cate1Id,
            cate2Id                   = systemData.cate2Id,
            cate3Id                   = systemData.cate3Id,
            method                    = systemData.method,
            cityId                    = systemData.cityId,
            venueId                   = systemData.venueId,
            time                      = systemData.time,
            currentShowTime           = systemData.currentShowTime,
            getNewsUrl                = systemData.getNewsUrl,
            getExpressFeeUrl          = systemData.getExpressFeeUrl,
            homeDomain                = systemData.homeDomain,
            starDomain                = systemData.starDomain,
            allScheIds                = systemData.allScheIds,
            enterScid                 = currentScid,
            cardDeductNum             = 0,
            cardDiscountNum           = 0,
            currentYearCardOk         = false,
            currentYearCardMsg        = '',
            yearCardIsOnlineseat      = true,
            userYearCardList          = false,
            currentUserYearCard       = false,
            currentCooperation        = $('.oraginal-tickets-panel-box .schedular-list-box ul li a.active').attr('cooperation'),
            yearCardListCheckResult   = false,
            selectedYearCard          = false,
            buyTicketBtnTextes        = {1:'立即购票',2:'立即购票',3:'立即兑换'},//1:普通购票，2：秒杀票，3：全额积分
            yearCardCurrentMode       = false,
            currentScheSellStatus     = 4,
            orderDialogTipText        = '请填写相关信息完成演出开售提醒登记，开售前我们会以短信形式通知。如最终未有票，将不作另行通知。（因预订不涉及交易金额，只作为演出开售提醒，不占用票品库存，请留意并及时购买）',
            noStockBookingTipText     = '此票价暂时缺货，您可以留下联系方式，到货时我们将第一时间与您联系。若始终缺货，聚橙网将不做另行通知。'; //当前使用欢聚橙卡类型

        details.init();

        var template = document.getElementById("theTemplate").innerHTML;
        $('body').append(template);
        
        var symbol = 'JSM'; 
        getAdvertInfo(currentScid,symbol);
        
        
        //检查排期详情页无支持项时隐藏支持项        
        function checkSupportTag(){
        	var hideTagLength = $('.support').find('.ct').find('.hide-tag')
        	var allTag = $('.support').find('.ct').find('span.tag')
        	if(hideTagLength.length >= allTag.length){
        		$('.support').hide();
        	}else{
        		$('.support').show();
        	}
        	//隐藏
        	hideTagLength.hide();
        	//显示非隐藏
        	allTag.not('.hide-tag').show();
        }
        setInterval(checkSupportTag, 800);

        // 展开场次
        $(function(){
            var flag = 2;
            $('.row-date .more-show').on('click',function(){
                var $ul = $('.row-date .ct ul'),
                    length = $ul.find('li').length,
                    height = 57,
                    ul_height = parseInt($ul.css('height','auto').height()),
                    $this = $(this);
                if(flag === 0){
                    
                    $ul.css('height',height);
                    flag = 1;
                    $this.text('收起');
                    $ul.animate({'height': ul_height},function(){
                        flag = 2;
                        $ul.css('overflow','inherit');
                    });
                }else if(flag === 2){

                    flag = 1;
                    $this.text('更多场次');
                    $ul.animate({'height': height},function(){
                        flag = 0;
                        $ul.css('overflow','hidden');
                    });
                }
            });
        });
        
        //判断选中排期是否被隐藏
/*        $(function(){
            //return;//暂时取消
            var  index = $('.row-date .ct ul .active').index('.row-date .ct ul li a');
            if (index > 4)
            {
                $('.row-date .more-show').click();return;
                var height = $('.row-date .ct ul').css({height:'auto'}).height();
                $('.row-date .ct ul').css({height:height});

                $('.row-date .ct ul').css({overflow:'inherit'});
            }
        })*/
        

        // 我要评分
        $(function() {
            var score = 10;
            var flag = true;
            $('.star').on('mousemove', function(event) {
                if (flag) {
                    var eventX = event.offsetX;
                    // score = eventX / 12;
                    // score > parseInt(score) + 0.5 ? score = parseInt(score) + 1 : score = parseInt(score);
                    score = (eventX % 12) > 6 ? parseInt(eventX / 12) + 1 : parseInt(eventX / 12);
                    eventX = score * 12;
                    $('.comment .front-star').css('width', eventX + 'px');
                    $('.js-scores').text(' '+score + '.0 ');
                }
            }).on('click', function() {
                flag == false ? flag = true : flag = false;
            });
            $('.score').on('click', 'a', function() {
                $('.tab-comment').trigger('click');
                $('body, html').animate({
                    'scrollTop': $('.js-fixbar').offset().top
                });
            });
        });
        // 关注演出/取消关注
        var followBusy = false;
        $('.js-gz').on('click', function() 
        {
            if (followBusy)
            {
                return;
            }
            followBusy = true;
            var _this = this;
            $.ajax({
                type:'POST',
                data:{scid:enterScid},
                url:followScheUrl,
                dataType:'json',
                success:function(result)
                {
                    followBusy = false;
                    if (result.code=='login')
                    {
                        login.init();
                        return;
                    }

                    if (result.code=='ok')
                    {
                        $(_this).toggleClass('on');                            
                    }
                    
                },
                error:function()
                {
                    followBusy = false;
                }
            });
            
            
        });

        //赞
        var likeBusy = false;
        $('.comment-list-box').on('click','.comment-like-btn', function() 
        {
            if(!juo.isLogin())
            {
                login.init();
                return;
            }

            if (likeBusy)
            {
                return;
            }
            likeBusy = true;
            var cid = $(this).attr('cid');
            likeAndDislike(1,cid,this);            
        });

        //踩
        var dislikeBusy = false;
        $('.comment-list-box').on('click','.comment-dislike-btn', function() 
        {
            if(!juo.isLogin())
            {
                login.init();
                return;
            }

            if (dislikeBusy)
            {
                return;
            }
            dislikeBusy = true;
            var cid = $(this).attr('cid');
            likeAndDislike(2,cid,this);            
        });

        function likeAndDislike(type,cid,elem)
        {
            $.ajax({
                type:'POST',
                url:likeAndDislikeUrl,
                dataType:'jsonp',
                jsonp:'callback',
                data:{type:type,cid:cid},
                success:function(result)
                {
                    switch(type)
                    {
                        case 1:
                            likeBusy = false;
                        break;

                        case 2:
                            dislikeBusy = false;
                        break;
                    }
                    if ( result.code=='login' )
                    {
                        Dialog.alert(result.msg);
                        return;
                    }

                    if (result.code=='ok')
                    {
                        var currentNum = parseInt($(elem).find('.num-wrap').text()); 
                        $(elem).find('.num-wrap').text(currentNum+1);
                    }
                    else if(!!result.msg)
                    {
                        Dialog.alert(result.msg);
                    }
                    
                },
                error:function()
                {
                    switch(type)
                    {
                        case 1:
                            likeBusy = false;
                        break;

                        case 2:
                            dislikeBusy = false;
                        break;
                    }
                }
            });
        }
        //登记
        var bookingBusy = false;
        function booking(dialogIndex,type)
        {   
            type = type || 1;
            if (bookingBusy)
            {
                return;
            }
            

            var name      = $('.dialog-box'+dialogIndex+' input[name="name"]').val(),
                phone     = $('.dialog-box'+dialogIndex+' input[name="phone"]').val();
                note      = $('.dialog-box'+dialogIndex+' input[name="note"]').val();
                num       = $('.dialog-box'+dialogIndex+' [name="num"]').val();
                show_name = $('.dialog-box'+dialogIndex+' .booking-title').text();
                ticket_id = $('.dialog-box'+dialogIndex+' input[name="ticket_id"]').val();
                scid      = currentScid;


            var data = {type:type,name:name,phone:phone,note:note,num:num,show_name:show_name,ticket_id:ticket_id,scid:scid};
            
            switch(type)
            {
                case 1:

                break;

                case 2:
                case 3:
                    //data.scid = $('.dialog-box'+dialogIndex+' input[name="scid"]').val();
                    data.price = $('.dialog-box'+dialogIndex+' input[name="price"]').val();
                break;
            }

            if ($.trim(name)=='')
            {
                $('.dialog-box'+dialogIndex+' input[name="name"]').css('border-color','red');
                $('.dialog-box'+dialogIndex+' .dialog-tips').text('请填写姓名！');
                return;
            }
            else
            {
                $('.dialog-box'+dialogIndex+' input[name="name"]').css('border-color','#ccc');
            }

            if (!phone.match(/^\d{1,15}$/g))
            {
                $('.dialog-box'+dialogIndex+' input[name="phone"]').css('border-color','red');
                $('.dialog-box'+dialogIndex+' .dialog-tips').text('请正确填写号码！');
                return;
            }
            else
            {
                $('.dialog-box'+dialogIndex+' input[name="phone"]').css('border-color','#ccc');
            }

            bookingBusy = true;
            $.ajax({
                type:'POST',
                url:bookingUrl,
                dataType:'jsonp',
                jsonp:'callback',
                data:data,
                success:function(result)
                {
                    bookingBusy = false;

                    if (result.code=='login')
                    {
                        Dialog.close(dialogIndex);
                        Dialog.alert('请登录');
                        return;
                    }

                    if (result.code=='ok')
                    {
                        Dialog.close(dialogIndex);
                        Dialog.msg('登记成功！');
                    }
                    else if(!!result.msg)
                    {
                        Dialog.close(dialogIndex);
                        Dialog.alert(result.msg);
                    }
                    else
                    {
                        Dialog.msg('登记失败');
                    }
                    
                },
                error:function()
                {
                    bookingBusy = false;
                }
            });
        }

        function isSelectable(elem)
        {
            var unselectableClass = ['unselectable','init-unselectable','year-card-unselectable'];//不可选class

            //由于hasClass方法要比is方法效率高，选用hasClass方法
            for(var k in unselectableClass)
            {
                if(elem.hasClass(unselectableClass[k]))
                {
                    return false;
                }
            }

            return true;
        }

        // 选择票价
        $(function() {
            var flag = true;
            //$('.ticket-list-box ul').on('click','li a', function() //增加未选票时弹出购票操作面板弹窗功能，暂时改为下面这种绑定方式
            $('body').on('click','.ticket-list-box ul li a', function() 
            {
                var $thisElemParent = $(this).parent();

                if ($thisElemParent.hasClass('no-stocks'))
                {
                    if ($thisElemParent.hasClass('is-seckill-ticket'))
                    {
                        return;
                    }
                    if ($thisElemParent.hasClass('is-full-score-ex'))
                    {
                        return;
                    }
                    if(!juo.isLogin())
                    {
                        //Dialog.alert('请登录后进行缺货登记！');
                        login.init();
                        $('#js-login-wrap').css('z-index',1100);
                        $('#js-login-wrap .login-window').css('z-index',1101);
                        return;
                    }
                    var ticket_id = $thisElemParent.attr('ticketid'),
                        booking_title = $('.show-title').text(),
                        dialogContent = $('.booking-dialog-model .modal-body').clone();

                        dialogContent.find('.booking-sche-name-line').text(booking_title);
                        dialogContent.find('input[name="ticket_id"]').val(ticket_id);
                        dialogContent.find('input[name="scid"]').val(currentScid);
                        dialogContent.find('.booking-time-line').text($('.oraginal-tickets-panel-box .schedular-list-box ul li .active').text());
                        dialogContent.find('.booking-price-line').text($thisElemParent.attr('price')+'元');
                        dialogContent.find('.dialog-tip-text').text(noStockBookingTipText);
                        
                        dialogContent = '<div class="w555"><div class="modal"><div class="modal-body">'+dialogContent.html()+'</div></div></div>';
                    
                    var params = {
                        title:'缺货登记',
                        content:dialogContent,
                        width:565,
                        okBtnCallback:function(index){booking(index,1)},
                    }
                    Dialog.confirm(params);
                    return;
                }


                if(!isSelectable($thisElemParent))
                {
                    return;
                }

                var isSeckillTicket = false;
                if ($thisElemParent.hasClass('is-seckill-ticket'))
                {
                    isSeckillTicket = true;
                }

                var isFullScoreEx = false;
                if ($thisElemParent.hasClass('is-full-score-ex'))
                {
                    isFullScoreEx = true;
                }

                //是否学生票
                var isStudentTicket = false;
                if($thisElemParent.hasClass('is_student_tickets'))
                {
                    isStudentTicket = true;
                }
                //是否青年票
                var isYoungTicket = false;
                if($thisElemParent.hasClass('is_Young_tickets'))
                {
                    isYoungTicket = true;
                }
                //如果学生票，隐藏在线选坐
                if(isStudentTicket || isYoungTicket){
                    $('.online-seat-btn').hide();
                }
                
                
                var date,
                    price,
                    html,
                    $oul,
                    $oli,
                    offset_Top1,
                    offset_Left1,
                    offset_Top2,
                    offset_Left2,
                    offset_Top3,
                    offset_Left3,
                    date_Top,
                    date_Left,
                    price_Top,
                    price_Left,
                    $row_date_cur;

                var ticketIndex = $(this).parent().index();
                if (flag) {
                    var $allTicketPanelBoxes = $('.tickets-panel-box');
                    if(isFullScoreEx || isSeckillTicket)
                    {
                        if(countSelectedTickets()>0)
                        {
                            if (!$(this).hasClass('active'))
                            {
                                if(!confirm('本票价只能单独购买，会清空已选票价，确认要进行此操作吗？'))
                                {
                                    flag = true;
                                    return;
                                }
                            }
                            
                            $('.selected-tickets ul').html('');
                        }

                        $allTicketPanelBoxes.each(function(){
                            $(this).find('.ticket-list-box ul li a').eq(ticketIndex).parent().siblings().addClass('unselectable');
                            $(this).find('.ticket-list-box ul li a').eq(ticketIndex).parent().siblings().find('a').removeClass('active');
                        });

                        if (isSeckillTicket)
                        {
                            $('.buy-right-now-btn').attr('ticketsType',2);
                            $('.buy-right-now-btn').text(buyTicketBtnTextes[2]);
                            
                        }
                        

                        if (isFullScoreEx)
                        {
                            $('.buy-right-now-btn').attr('ticketsType',3);
                            $('.buy-right-now-btn').text(buyTicketBtnTextes[3]);
                        }

                        
                    }

                    
                    //关联问题1
                    if(isSelectable($thisElemParent))
                    {
                        //$(this).toggleClass('active');

                        //更新每一个选择面板
                        $('.ticket-list-box').each(function(){
                            $(this).find('ul li a').eq(ticketIndex).toggleClass('active');
                        });
                    }

                    
                    var index = $(this).attr('sele_index');
                    
                    //问题1，此处处理不太恰当，是先改变active，然后再进行后续逻辑判断，应当是先进行逻辑判断，再进行active的改变
                    if ($(this).hasClass('active')) 
                    {
                        //是选中操作
                        var seletedTotalNum = getSelectedTicketsTotalNum();
                        //如果没通过欢聚橙卡购票数量限制检测
                        if(!yearCardLimitCheck(parseFloat($(this).text())))
                        {
                            flag = true;

                            //由于问题1，得退回之前状态，更新每一个选择面板
                            $('.ticket-list-box').each(function(){
                                $(this).find('ul li a').eq(ticketIndex).toggleClass('active');
                            });
                            return;
                        }

                        if (seletedTotalNum >= buyTicketsLimit)
                        {
                            //var isStudent = isSelectStudent();
                            //Dialog.msg('每单限购'+buyTicketsLimit+'张');
                            buyTicketLimitTips(buyTicketsLimit,0);
                            flag = true;

                            //由于问题1，得退回之前状态，更新每一个选择面板
                            $('.ticket-list-box').each(function(){
                                $(this).find('ul li a').eq(ticketIndex).toggleClass('active');
                            });
                            return;
                        }

                        //学生票数量限制判断
                        if(isStudentTicket){
                            var studentNum = getStudentNum();
                            if(studentNum >= systemData.studentLimitTicketNum){
                                buyTicketLimitTips(studentNum,0,1);
                                return;
                            }
                        }
                        //青年票限制购买张数
                        if(isYoungTicket)
                        {
                            var youngNum = getYoungNum();
                            if(youngNum >= systemData.youngLimitTicketNum){
                                buyTicketLimitTips(youngNum,0,2);
                                //由于问题1，得退回之前状态，更新每一个选择面板
                                $('.ticket-list-box').each(function(){
                                    $(this).find('ul li a').eq(ticketIndex).toggleClass('active');
                                });
                                return false;
                            }
                        }
                        //预定状态特殊处理
                        if (currentScheSellStatus==4)
                        {
                            flag = true;
                            //$(this).parent().siblings().find('a').removeClass('active');

                            //更新每一个选择面板
                            $('.ticket-list-box').each(function(){
                                $(this).find('ul li a').eq(ticketIndex).parent().siblings().find('a').removeClass('active');
                            });

                            return;
                        }

                        //预售预热状态特殊处理
                        if (currentScheSellStatus==3)
                        {
                            flag = true;
                            //$(this).parent().siblings().find('a').removeClass('active');

                            //更新每一个选择面板
                            $('.ticket-list-box').each(function(){
                                $(this).find('ul li a').eq(ticketIndex).parent().siblings().find('a').removeClass('active');
                            });

                            return;
                        }             

                        var scoreId = '';
                        if (isFullScoreEx)
                        {
                            scoreId = 'scores_id='+$thisElemParent.attr('scores_id');
                        }

                        var seId = '';
                        if (isSeckillTicket)
                        {
                            seId = 'se_id='+$thisElemParent.attr('se_id');
                        }
                        $row_date_cur = $('.oraginal-tickets-panel-box .row-date .active');
                        date = $row_date_cur.text();
                        //date = date.replace(/\./gm, '-');
                        price = parseFloat($(this).text());
                        if(isStudentTicket)
                        {
                            price = parseFloat($(this).parent('li').attr('price'));
                        }
                        index = +new Date();
                        var limit = $thisElemParent.attr('limit');
                        var cardLimitStock = $thisElemParent.attr('card_limit_stock');
                        //buyTicketsLimit = limit;
                        //$(this).attr('sele_index', index);
                        //更新每一个选择面板
                        $('.ticket-list-box').each(function(){
                            $(this).find('ul li a').eq(ticketIndex).attr('sele_index', index);
                        });
                        var ticketid                      = $thisElemParent.attr('ticketid'),
                            selectedTicketFullScoresClass = isFullScoreEx ? 'is-full-score-ex' : '',
                            selectedTicketSeckillClass    = isSeckillTicket ? 'is-seckill-ticket' : '',
                            selectedTicketStudentClass    = isStudentTicket ? 'is-student-ticket' : '',
                            selectedTicketYoungClass      = isYoungTicket ? 'is-Young-ticket' : '',//青年票增加票类
                            liHeight = 'height:0px;',
                            ieVersion = checkIEVersion();

                        //IE8以下对animate({height:'60px'})支持有问题，进行判断
                        if (ieVersion && ieVersion < 9)
                        {
                            liHeight = 'height:60px;';
                        }

                        html = "<li limit="+limit+" card_limit_stock="+cardLimitStock+" ticketid="+ticketid+" "+scoreId+" "+seId+" class=\"itm clearfix "+selectedTicketFullScoresClass+" "+selectedTicketYoungClass+" "+selectedTicketStudentClass+" "+selectedTicketSeckillClass+"\" sele_index=\"" + index + "\" style=\"display:none;"+liHeight+"\"><div><span class=\"txt txt_time\">\"" + date + "\"</span>" +
                            "<span class=\"txt txt_price\">\"" + price + "\"</span><span class=\"nums\"><a class=\"nbtn juofont btn-low \" href=\"javascript:;\">-</a>" +
                            "<input class=\"ipt ipt-num\" onkeyup=\"this.value=this.value.replace(/\\D/g,'')\" onafterpaste=\"this.value=this.value.replace(/\\D/g,'')\" type=\"text\" value=\"1\"><a class=\"nbtn juofont btn-add\" href=\"javascript:;\">+</a></span>" +
                            "</div><a href=\"javascript:;\" class=\"del\" ><img src=\""+basicDomain+"Home/web/images/details/dele.png\">删除</a></li>";

                        $oul = $('.js-row-sele');
                        $oul.find('.ct ul').append(html);

                        flag = false;

                        $('.selected-tickets-wrap').show();
                        //给每一个选择面板执行动画
                        $allTicketPanelBoxes.each(function(){
                                        var $lastLi = $(this).find('.selected-tickets li:last');
                                        var $selectedBoxUl = $(this).find('.selected-tickets ul');
                                        offset_Top1 = $selectedBoxUl.offset().top;
                                        offset_Left1 = $selectedBoxUl.offset().left;

                                        //给每一个选择面板选中的票价按钮append一个克隆dom节点
                                        var selectedTicket = $(this).find('.ticket-list-box ul li a').eq(ticketIndex);
                                            selectedTicket.parent().append($(selectedTicket).clone());

                                        //$(this).parent().append($(this).clone());
                                        //给每一个选择面板选中的日期按钮append一个克隆dom节点
                                        var selectedDate = $(this).find('.schedular-list-box .active');
                                            selectedDate.parent().append(selectedDate.clone());

                                        //$row_date_cur.parent().append($row_date_cur.clone());
                                        selectedDate.css({
                                            'position': 'absolute',
                                            'left': 0,
                                            'top': 0,
                                            'z-index': 2
                                        });
                                        selectedTicket.css({
                                            'position': 'absolute',
                                            'left': 0,
                                            'top': 0,
                                            'z-index': 2
                                        });
                                        offset_Top2 = selectedDate.first().offset().top;
                                        offset_Left2 = selectedDate.first().offset().left;
                                        offset_Top3 = selectedTicket.offset().top;
                                        offset_Left3 = selectedTicket.offset().left;
                                        date_Top = offset_Top1 - offset_Top2;
                                        date_Left = offset_Left1 - offset_Left2;
                                        price_Top = offset_Top1 - offset_Top3;
                                        price_Left = offset_Left1 - offset_Left3;
                                        selectedDate.animate({
                                            'top': date_Top,
                                            'left': date_Left,
                                            'opacity': 0
                                        }, 500, function() {
                                            $(this).remove();
                                        });
                                        selectedTicket.animate({
                                            'top': price_Top,
                                            'left': price_Left,
                                            'opacity': 0,
                                        }, 500, function() {
                                            $(this).remove();
                                            flag = true;
                                            $lastLi.css({
                                                'display': 'block'
                                            });
                                            $lastLi.animate({
                                                'height': '60px'
                                            });
                                        });
                        });


                    }
                    else
                    {
                        //是取消选中操作

                        delSelectedTicket(1,isFullScoreEx , isSeckillTicket,this,index,ticketIndex);
                        flag = true;                
                        
                    }
                }
            });
            // 已选门票删除按钮点击
            $('body').on('click', '.tickets-panel-box .selected-tickets .del', function()
            {
                var index = $(this).parents('li.itm').attr('sele_index');
                var isFullScoreEx = false;
                if ($(this).parent().hasClass('is-full-score-ex'))
                {
                    isFullScoreEx = true;
                }

                var isSeckillTicket = false;
                if ($(this).parent().hasClass('is-seckill-ticket'))
                {
                    isSeckillTicket = true;
                }

                delSelectedTicket(2,isFullScoreEx , isSeckillTicket,this,index);
                
            });

            // 票数增加
            $('body').on('click', '.js-row-sele .btn-add', function(){
                var limit = $(this).parents('li:first').attr('limit'),
                    input = $(this).prev('input'),
                    currentNum = parseInt(input.val()),
                    total = getSelectedTicketsTotalNum(),
                    isStudentTicket = $(this).parents('li').hasClass('is-student-ticket') ? true : false,
                    isYoungTicket = $(this).parents('li').hasClass('is-Young-ticket') ? true : false,
                    _this = $(this);

                //如果是学生票，判断已选学生票总票数是否超过限制
                if(isStudentTicket){
                    var studentNum = getStudentNum();
                    if(studentNum >= systemData.studentLimitTicketNum){
                        buyTicketLimitTips(studentNum,0,1);
                        return;
                    }
                }
                //如果是青年票，判断已选青年票总票数是否超过限制
                if(isYoungTicket){
                    var YoungNum = getYoungNum();
                    if(YoungNum >= systemData.youngLimitTicketNum){
                        buyTicketLimitTips(systemData.youngLimitTicketNum,0,2);
                        return;
                    }
                }
                //如果在欢聚橙卡购买状态中
                if ($('.oraginal-tickets-panel-box .happy-juooo-card').find('.active').length > 0)
                {   
                    var currentClickPrice = parseFloat(_this.parents('li:first').find('.txt_price').text().replace('"','')); 
                    var cardLimitStock = $(this).parents('li:first').attr('card_limit_stock');
                    if(!yearCardLimitCheck(currentClickPrice))
                    {
                        return false;
                    }
                    if(currentNum >= cardLimitStock)
                    {
                        Dialog.alert('此票价库存紧张，剩余'+cardLimitStock+'张');
                        return false;
                    }
                }

                //单个票品购票张数限制判断
                if (currentNum >= limit)
                {
                    if(isYoungTicket){
                        buyTicketLimitTips(limit,5);
                        return;
                    }
                    //Dialog.msg('每单限购'+buyTicketsLimit+'张');
                    //var isStudent = isSelectStudent();
                    buyTicketLimitTips(currentNum,2);
                    //Dialog.msg('本张票品限购'+currentNum+'张');
                    return;
                }
                
                //总体购票张数限制判断
                if (total >= buyTicketsLimit && buyTicketsLimit!=-1)
                {
                    //Dialog.msg('每单限购'+buyTicketsLimit+'张');
                    buyTicketLimitTips(buyTicketsLimit);
                    return;
                }   
                var index = $(this).parents('li:first').attr('sele_index');
                $('.tickets-panel-box .selected-tickets ul li[sele_index="'+index+'"] .ipt-num').val(currentNum + 1);
            });
            // 票数减少
            $('body').on('click', '.js-row-sele .btn-low', function() {
                var index = $(this).parents('li:first').attr('sele_index');
                var input = $(this).next('input');
                if (input.val() > 1) {
                    $('.tickets-panel-box .selected-tickets ul li[sele_index="'+index+'"] .ipt-num').val(parseInt(input.val()) - 1);
                }
            });
        });
        
        //评论输入框聚焦
        $('.comment-textarea').focus(function(){
            if(!juo.isLogin())
            {
                //Dialog.alert('请登录后进行评论！');
                login.init();
                $(this).blur();
                return;
            }
        });
        // 发表评论
        $(function() {
            
            $('.cm-from .lit').on('click', function() {
                $('.cm-from .lit span').removeClass('active');
                $(this).find('span').addClass('active');
            });
            var commentBusy = false;
            var submitLimitTime = 1000 * 60;
            var canSubmit = true;
            $('.js-comment button').on('click', function() {
                if(!juo.isLogin())
                {
                    //Dialog.alert('请登录后进行评论！');
                    login.init();
                    return;
                }
                if(canSubmit == false)
                {
                    Dialog.alert('发表评论太快了，休息休息，等一分钟哦.')
                    return;
                }
                if (commentBusy)
                {
                    return;
                }

                var $comment_edit = $(this).parents('.cm-from'),
                    $textarea = $comment_edit.find('textarea'),
                    grade     = $('.js-comment .front-star').width() / 1.2,
                    comment = $textarea.val(), // 评论内容
                    $cm_list = $(this).parents('.cm-from').next('.cm-list'),
                    img_src,
                    name,
                    star_width,
                    date,
                    height,
                    date_format,
                    lit_text,
                    html;
                if( $.trim(comment).length == 0 )
                {
                    Dialog.msg('评论内容不能为空');
                    return; 
                }
                if ($.trim(comment).length < 2)
                {
                    Dialog.msg('评论内容不能小于2个字符');
                    return;
                    //$textarea.focus();
                }
                else
                {
                    var isComment = $(this).hasClass('js-btn1');
                    commentBusy = true;
                    $(this).text('提交中...');
                    var commentBtn = this;

                    $.ajax({
                            type:'POST',
                            url:commentUrl,
                            dataType:'json',
                            data:{target_id:enterScid,content:comment,type:1,grade:grade},
                            success:function(result)
                            {
                                $(commentBtn).text('发表剧评');
                                 commentBusy = false;

                                if (result.code==1)
                                {
                                    login.init();
                                }
                                else if(result.code==2)
                                {
                                    Dialog.alert('评论失败');
                                }
                                else if(result.code=='ok')
                                {   
                                    var currentNum = $("#TEST").text().replace('(','').replace(')','');
                                    $("#TEST").text('('+(parseInt(currentNum)+1)+')');
                                    img_src = $comment_edit.find('.head-pic img').attr('src'); // 头像路径
                                    name = $comment_edit.find('.head-pic .name').text(); // 用户名称
                                    star_width = parseInt($comment_edit.find('.front-star').width()) / 12; // 用户评分
                                    lit_text = $comment_edit.find('.lit .active').parent().text();
                                    comment = $('<span/>').text(comment).html();
                                    canSubmit = false;
                                    if (isComment) {
                                        var list = [{id:result.data,photo:img_src,nick_name:name,grade:star_width,createtime:date_format,content:comment,good:0,bad:0}];
                                        html = commentItemHtmlFactory(list,null,true);
                                    } else {
                                        html = "<div class=\"item\">" +
                                            "<div class=\"head-pic\">" +
                                            "<a href=\"#\" target=\"_blank\">" +
                                            "<p class=\"name\">" + name + "</p>" +
                                            "</a>" +
                                            "</div>" +
                                            "<div class=\"cm-sub\">" +
                                            "<div class=\"answer\">" +
                                            "<div class=\"little\"><span>" + lit_text + "</span>" + comment + "</div>" +
                                            "<div class=\"hd line\">" + date_format + "</div>" +
                                            "</div>" +
                                            "</div>" +
                                            "</div>";
                                    }
                                    setTimeout( function(){canSubmit = true;}, submitLimitTime );//发表评论间隔时间一分钟
                                    $cm_list.prepend(html);
                                    var item = $cm_list.find('.item').eq(0);
                                    height = item.height();
                                    item.css({
                                        'height': 0,
                                        'opacity': 0,
                                        'filter': 'alpha(opacity=0)'
                                    });
                                    item.animate({
                                        'height': height
                                    }, function() {
                                        $(this).animate({
                                            'opacity': 1,
                                            'filter': 'alpha(opacity=100)'
                                        });
                                    })
                                    $textarea.val('');
                                }
                                else
                                {
                                     if(result.msg)
                                     {
                                        Dialog.alert(result.msg);
                                     }
                                }
                            },
                            error:function(){
                                Dialog.msg('出现错误，请稍后再试！');
                                $(commentBtn).text('发表剧评');
                                commentBusy = false;
                            }
                        });

                }
            });
        });


//计算已选票总张数
function getSelectedTicketsTotalNum()
{
    var total = 0;
    $('.oraginal-tickets-panel-box .selected-tickets ul li input').each(function(){
        total += parseInt(this.value);
    });
    return total;
}

//计算已选票总票价
function getSelectedTicketsTotalPrice()
{
    var totalPrice = 0;
    $('.oraginal-tickets-panel-box .selected-tickets ul li').each(function(){
        var _this = $(this);
        var ticket_num = parseInt(_this.find('input').val());
        var ticket_price = parseFloat(_this.find('.txt_price').text().replace('"',''));
        totalPrice += ticket_num * ticket_price;
    });
    return totalPrice;
}

//欢聚橙卡购买限制检测
function yearCardLimitCheck(ticketPrice)
{
    //如果在欢聚橙卡购买状态中
    if($('.oraginal-tickets-panel-box .happy-juooo-card').find('.active').length > 0)
    {   
        if(currentCardRuleInfo.card_pay_way != 3)
        {   
            var cardLimitBuyNum = currentCardRuleInfo.limit_buy_num > 6 ? 6 : currentCardRuleInfo.limit_buy_num;
            if(currentCardRuleInfo.card_pay_way == 1)
            {   
                if($('.year-card-select-dialog-model .js-year-card-list ul li').length > 1 && !selectedYearCard)
                {   
                    var timesAvail = 0;
                    $.each(currentCardRuleInfo.card_list, function(cardk, cardV){
                        timesAvail = Math.max(timesAvail,parseInt(cardV.times_available));
                    });
                    var cardTicketLimit = Math.floor(currentCardRuleInfo.ticket_limit_num * timesAvail / cardDeductNum);
                    cardTicketLimit = Math.min(parseInt(cardTicketLimit), cardLimitBuyNum);
                    if(getSelectedTicketsTotalNum() >= cardTicketLimit)
                    {
                        Dialog.alert('当前选中的欢聚橙卡规则，购买'+currentCardRuleInfo.ticket_limit_num+'张票品扣除'+cardDeductNum
                            +'次，此次预约最多选择'+cardTicketLimit+'张。');
                        return false;
                    }
                }
                else
                {
                    var cardTicketLimit = Math.floor(currentCardRuleInfo.ticket_limit_num * currentUserYearCard.times_available / cardDeductNum);
                    cardTicketLimit = Math.min(parseInt(cardTicketLimit), cardLimitBuyNum);
                    if(getSelectedTicketsTotalNum() >= cardTicketLimit)
                    {
                        Dialog.alert('当前选中的欢聚橙卡，购买'+currentCardRuleInfo.ticket_limit_num+'张票品扣除'+cardDeductNum
                            +'次，卡剩余次数'+currentUserYearCard.times_available+'次，此次预约最多选择'+cardTicketLimit+'张。');
                        return false;
                    }
                }
            }
            // else if(currentCardRuleInfo.card_pay_way == 3)
            // {   
            //     if(getSelectedTicketsTotalNum() >= cardLimitBuyNum)
            //     {
            //         Dialog.alert('当前选中的欢聚橙卡，此次预约最多选择'+cardLimitBuyNum+'张。');
            //         return false;
            //     }
            //     var cardBalance = 0;
            //     var totalPrice = getSelectedTicketsTotalPrice() + ticketPrice;
            //     var discountPrice = parseFloat((totalPrice * cardDiscountNum) / 10);
            //     if($('.year-card-select-dialog-model .js-year-card-list ul li').length > 1 && !selectedYearCard)
            //     {   
            //         $.each(currentCardRuleInfo.card_list, function(cardk, cardV){
            //             cardBalance = Math.max(cardBalance,parseInt(cardV.balance));
            //         });
            //         if(discountPrice > cardBalance)
            //         {
            //             Dialog.alert('已选票品需支付¥'+discountPrice+'超过所选规则下可用卡的最大剩余金额¥'+cardBalance+'，请重新选择票品，或选择其他卡！');
            //             currentYearCardOk = false;
            //             return false;
            //         }
            //     }
            //     else
            //     {
            //         var balance = parseFloat(currentUserYearCard.balance);
            //         if(discountPrice > balance)
            //         {
            //             Dialog.alert('已选票品需支付¥'+discountPrice+'超过所选卡的剩余金额¥'+balance+'，请重新选择票品，或选择其他卡！');
            //             currentYearCardOk = false;
            //             return false;
            //         }
            //     }
            // }
        }
        else
        {
            Dialog.alert('储值卡目前仅支持移动端购买演出！')
            return false;
        }
    }
    return true;
}

/*
 * 取消已选择票价
 * @param int index 已选票价的时间戳索引
 * @param int ticketIndex 票价位置的索引
 */
function delSelectedTicket(type , isFullScoreEx , isSeckillTicket ,elem ,index,ticketIndex)
{
    type = type || 1;
    var $allTicketPanelBoxes = $('.tickets-panel-box');


    switch(type)
    {
        case 1://点击票价删除
            if(isFullScoreEx || isSeckillTicket)
            {
                //更新每一个票价选择面板
                $allTicketPanelBoxes.each(function(){
                    $(this).find('.ticket-list-box ul li a').eq(ticketIndex).parent().siblings(':not(.init-unselectable)').removeClass('unselectable');
                });
            }

            $allTicketPanelBoxes.find('.selected-tickets ul li[sele_index=' + index + ']').animate({
                'height': '0px',
                'opacity': 0.1
            }, function() {
                $(this).remove();
                resetBuyTicketBtn();
            })

        break;

        case 2://点击已选择列表中的删除按钮删除
            if(isFullScoreEx || isSeckillTicket)
            {
                $allTicketPanelBoxes.find('.ticket-list-box ul li a[sele_index=' + index + ']').parent().siblings(':not(.init-unselectable)').removeClass('unselectable');
            }

            $allTicketPanelBoxes.find('.selected-tickets ul li[sele_index=' + index + ']').animate({
                'height': '0px',
                'opacity': 0.1
            }, function() {
                $(this).remove();
                resetBuyTicketBtn();
            })
            $allTicketPanelBoxes.find('.ticket-list-box ul li a[sele_index=' + index + ']').removeClass('active');
        break;
    }

    //判断是否已选则有学生票，如果有，隐藏 在线选坐 按钮
    var studentFlag = false;
    $('.selected-tickets li').each(function(){
        if($(this).hasClass('is-student-ticket') && $(this).attr('sele_index') != index){
            studentFlag = true;
        }
    });
    if(! studentFlag){
        $('.online-seat-btn').show();
    }
    
    resetBuyTicketBtn();
}

//由于取消特殊票时需要恢复购票按钮，且取消动画为异步，故提出来作为函数给动画执行完之后回调，避免出现判断错误
function resetBuyTicketBtn()
{
    if ($('.oraginal-tickets-panel-box .selected-tickets ul li').length <= 0)
    {
        $('.buy-right-now-btn').attr('ticketstype',1);
        $('.buy-right-now-btn').text(buyTicketBtnTextes[1]);
        buyTicketsLimit = 6;
    }
}

function commentItemHtmlFactory(list,boughtData,isComment)
{
    var html = '',
        n = 1,
        boughtData = boughtData || {},
        img_src = '';
    for(var k in list)
    {
        if (!list.hasOwnProperty(k))
        {
            continue;
        }

        var mark     = '',
            shopIcon = '';

        if (n%4==0)
        {
            mark = 'mr0';
        }


        if (isComment)
        {
            img_src = list[k].photo ? ('<img style="width:64px;height:64px;" src="' + list[k].photo + '">') : '';
            //list[k].grade = parseInt(list[k].grade);
        }
        else
        {
            var avatarUrl = list[k].photo ? ( list[k].photo.indexOf("http") === 0 ? list[k].photo :  imgDomain + list[k].photo ) : '';
            img_src = list[k].photo ? ('<img style="width:64px;height:64px;" src= "' + avatarUrl + '">') : '';
            //list[k].grade = parseInt(list[k].grade);
        }
        if (boughtData[list[k].uid])
        {
            shopIcon = '<i></i>';
        }

        html += "<div class=\"item\">" +
                    "<div class=\"head-pic\">" +
                    "<a href=\"javascript:;\" target=\"_blank\">" +
                    "<span>" + img_src + shopIcon +"</span>" +
                    "<p class=\"name\">" + list[k].nick_name +"</p>" +
                    "</a>" +
                    "</div>" +
                    "<div class=\"cm-sub\">" +
                    "<div class=\"answer\">" +
                    "<span class=\"icon-arrow-left\"></span>" +
                    "<div class=\"hd\">" +
                    "<div class=\"  tar\">评分：" +
                    "<span class=\"starpl\">" +
                    "<span style=\"width: " + list[k].grade/10 * 80 + 'px' + ";\"></span>" +
                    "</span>" +
                    "<span style=\"color: #f96c02; font-size:15px;\">" +''+list[k].grade+'.'+'0'+" 分"+"</span>"+
                    "</div>" +
                    "<div class=\"sub-time\">" + dateFormat.dateFormat('Y.m.d H:i:s',list[k].createtime) + "</div>" +
                    "</div>" +
                    "<div class=\"cd\">" +
                    "<div class=\"content\">" + list[k].content + "</div>" +
                    "<div class=\"cm-detail\">" +
                    "<a cid='"+list[k].id+"' class='comment-like-btn' href=\"javascript:;\">" +
                    "<i class=\"icon-praise\"></i>" +
                    "<em class=\"num\">(<span class='num-wrap'>"+list[k].good+"</span>)</em>" +
                    "</a> &nbsp;| &nbsp;" +
                    "<a cid='"+list[k].id+"' class='comment-dislike-btn' href=\"javascript:;\">" +
                    "<i class=\"icon-step\"></i>" +
                    "<em class=\"num\">(<span class='num-wrap'>"+list[k].bad+"</span>)</em>" +
                    "</a>" +
                    "</div>" +
                    "</div>" +
                    "</div>" +
                    "</div>" +
                    "</div>";
        n++;
    }
    return html;

}

        
//统计已选票价数量
function countSelectedTickets()
{
    return $('.oraginal-tickets-panel-box .selected-tickets ul li').length;
}


if (currentShowTime>time)
{
    getTicketsByScid(enterScid,$('.schedular-list-box ul li a[schedular_id="'+enterScid+'"]')[0],true);
}


//排期选择按钮
$('body').on('click','.schedular-list-box  ul li a', function(){
    var scid = $(this).attr('schedular_id');
    getTicketsByScid(scid,this);
});

//全额积分模式切换方式已修改，暂时废弃，作为保留方案
var ticketsExData1  = {},
    ticketsExData2  = {},
    buyTicketsLimit = systemData.certificationLimitTicketNum;

//获取排期的票价
function getTicketsByScid(scid,elem,force)
{
    if ($(elem).hasClass('active') && !force)
    {
        return;
    }

    if (!force)
    {
        window.location.href = itemDomain+scid;
        return;
    }
    

    if (countSelectedTickets()>0)
    {
        if (!confirm('切换时间会清空当前的票价选择，确认要切换吗？'))
        {
            return;
        }
    }

    var isFamilyCard       = '1',//$(elem).attr('isFamilyCard'),现有欢聚橙卡不采用排期是否支持卡销售字段，因而强制置为1
        cooperation        = $(elem).attr('cooperation'),
        currentCooperation = cooperation,
        shelfTime          = $(elem).attr('shelfTime'),
        showTime           = $(elem).attr('showTime'),
        shipping           = $(elem).attr('shipping'),
        data               = {scid:scid,shelfTime:shelfTime,showTime:showTime,cooperation:cooperation,cate1Id:cate1Id,cate2Id:cate2Id,shipping:shipping},
        onlineseatUrl      = $(elem).attr('onlineseat_url');

    if(isFamilyCard=='1')
    {
        data.sid          = currentSid;
        data.venueId      = venueId;
        data.isFamilyCard = isFamilyCard;
    }

    $.ajax({
        type:'POST',
        url:getTicketsByScidUrl,
        data:data,
        dataType:'json',
        error:function()
        {
            Dialog.msg('发生错误，请稍后再试！');
        },
        success:function(result)
        {
        	var ticketids = [];
        	for(i in result.data){
        		ticketids.push(result.data[i].id);
        	}
        	isSupportPartScoreExch({
        		cooperation:currentCooperation,
        		cate1Id:cate1Id,
        		cate2Id:cate2Id,
        		currentScid:currentScid,
        		ticketids:ticketids,
        	});
        	
            if (result.code=='ok' || result.code=='400')
            {
                //如果学生票没有直接隐藏学生认证
                if( result.is_student_ticket == false )
                {
                    $(".js-stu").remove();
                }
                var html                  = '',
                    list                  = result['data'],
                    tids                  = [],
                    unsupportYearCardShop = [],
                    supportYearCardShop   = [],
                    cardTicketIdArr       = [],
                    initUnselectableClass = '',
                    fullScoresTickets     = [];

                //按照价格排序
                for(var i = 0; i < list.length; i++)
                {
                    for(var j = 0; j < list.length-i-1; j++)
                    {
                        var compare1 = list[j].price;
                        if (list[j].type == 2)
                        {
                            compare1 = list[j].se_price;
                        }

                        var compare2 = list[j+1].price;
                        if (list[j+1].type == 2)
                        {
                            compare2 = list[j+1].se_price;
                        }
                        if (parseFloat(compare1) > parseFloat(compare2))
                        {
                            var temp      = list[j];
                                list[j]   = list[j+1];
                                list[j+1] = temp;
                        }
                    }                    
                }

                var count = 0;
                for(var k in list)
                {
                    if (!list.hasOwnProperty(k))
                    {
                        continue;
                    }

                    var price                      = list[k].price,
                        sePrice                    = list[k].se_price,
                        name                       = list[k].name,
                        tid                        = list[k].id,
                        type                       = list[k].type,
                        //stockLimit                 = list[k].stock_limit,
                        stock                      = isNaN( parseInt(list[k].stock) ) ? 0 : (parseInt(list[k].is_abolish) == 1 ? 0 : parseInt(list[k].stock)) ,
                        scoreId                    = list[k].scores_id,
                        seId                       = list[k].se_id,
                        seckill_start_time         = list[k].seckill_start_time,
                        seStock                    = list[k].se_stock,
                        sStock                     = list[k].s_stock,
                        normalScore                = list[k].normalScore.scores,
                        limitNum                   = isNaN( parseInt(list[k].limit_num) ) ? 6 : parseInt(list[k].limit_num) ,
                        normalScoresMoney          = parseFloat(list[k].normalScore.scoresMoney),
                        normalTipsArr              = [],//普通提示数组，暂时仅用于普通票的普通积分兑换提示
                        normalTipsText             = '',
                        normalScoreTips            = '',
                        normalLimitTips            = '',
                        item                       = '',
                        nameText                   = '',
                        setClass                   = '',
                        yearCardInitUnselectable   = '',
                        nameTextTitle              = '',
                        isStudent                  = list[k].is_student;
                        isPackage                  = list[k].ispackage;
                        cardGroupLimitStock        = 6;

                    if(parseInt(systemData.isAbolish) == 1){
                        //如果排期已经取消则下库存
                        stock = 0;
                    }
                    
                    if (result.isOffShelf=='yes')
                    {
                        initUnselectableClass = ' init-unselectable ';
                    }
                    else
                    {
                        initUnselectableClass = '';
                    }

                    if(name)
                    {
                        setClass = 'set';
                        nameText = '<p>'+name+'</p>';
                        if(isStudent == 1)
                        {
                            nameText = '<p><del>原价:'+parseFloat(list[k].student_price)+'元</del></p>';
                        }
                    }
                    price   = parseFloat(price);
                    sePrice = parseFloat(sePrice);
                    tids.push(tid);
                    //优先秒杀票
                    if (scoreId && type !=2)
                    {
                        type = 3;
                    }

                    if(isFamilyCard == '1' && result.currentCardRuleInfo && 
                        (!result.currentCardRuleInfo.yes_ticket.hasOwnProperty(tid) || isStudent == 1))
                    {   
                        yearCardInitUnselectable = ' year-card-unselectable ';
                        unsupportYearCardShop.push(price+'元');
                    }
                    else if(isFamilyCard == '1' && result.currentCardRuleInfo && 
                        result.currentCardRuleInfo.yes_ticket.hasOwnProperty(tid) && 
                        isStudent != 1 && type != 2 )  //欢聚橙卡不可购买秒杀票价和学生票价
                    {
                        supportYearCardShop.push(price+'元');
                        cardTicketIdArr.push(tid);
                        cardGroupLimitStock = result.currentCardRuleInfo.yes_ticket[tid].info.card_limit_stock;
                        if(cardGroupLimitStock == 0)
                        {
                            yearCardInitUnselectable = ' year-card-unselectable ';
                        }
                        else if(cardGroupLimitStock == -1)
                        {
                            cardGroupLimitStock = 6;
                        }
                        cardGroupLimitStock = Math.min(cardGroupLimitStock,6);
                    }

                    if (normalScore && normalScoresMoney)
                    {
                        normalTipsArr.push(normalScore+'积分可抵'+normalScoresMoney+'元');
                    }

                    if (normalTipsArr.length>0)
                    {
                        normalTipsText = '<span class="tips-not"><strong class="arrow"></strong>'+normalTipsArr.join(' , ')+'</span>';
                    }

                    if (name.length>8)
                    {
                        nameTextTitle = ' title="'+name+'" ';
                    }

                    switch(type)
                    {
                        case 1://普通票
                            young = '';
                            YoungClass = '';
                            if(list[k].is_Young == 1){ //青年票
                                young = '<span class="young"></span>';
                                YoungClass = 'is_Young_tickets special';
                                stock = (stock < systemData.youngLimitTicketNum) ? stock : systemData.youngLimitTicketNum;
                                setClass = 'set';
                                nameText = '<p><del>原价:'+parseFloat(list[k].price)*2+'元</del></p>';
                            }
                            if (stock > 0)
                            {
                                //有库存
                                if (isStudent == 1){
                                    item = '<li limit='+ (stock < systemData.studentLimitTicketNum ? stock : systemData.studentLimitTicketNum)+' card_limit_stock='+cardGroupLimitStock+' '+nameTextTitle+' class="'+YoungClass +yearCardInitUnselectable+initUnselectableClass+' special is_student_tickets" ticketid='+tid+' price="'+price+'" ticket_stock='+(stock > 6 ? 6 : stock)+'><a href="javascript:;" class="'+setClass+'">'+parseFloat(price)+'元'+nameText+normalTipsText+'<span class="stu"></span></a></li>';
                                }else if(isPackage == 1){
                                    item = '<li limit='+ (stock < systemData.studentLimitTicketNum ? stock : systemData.studentLimitTicketNum)+' card_limit_stock='+cardGroupLimitStock+' '+nameTextTitle+' class="'+YoungClass +yearCardInitUnselectable+initUnselectableClass+' special is_package_tickets" ticketid='+tid+' price="'+price+'" ticket_stock='+(stock > 6 ? 6 : stock)+'><a href="javascript:;" class="'+setClass+'">'+parseFloat(price)+'元'+nameText+normalTipsText+'<span class="tao"></span></a></li>';
                                }else{
                                    item = '<li limit='+ (stock < systemData.certificationLimitTicketNum ? stock : systemData.certificationLimitTicketNum)+' card_limit_stock='+cardGroupLimitStock+' '+nameTextTitle+' class="'+YoungClass +yearCardInitUnselectable+initUnselectableClass+'" ticketid='+tid+' price="'+price+'" ticket_stock='+(stock > 6 ? 6 : stock)+'><a href="javascript:;" class="'+setClass+'">'+price+'元'+nameText+normalTipsText +young+'</a></li>';
                                }
                            }
                            else
                            {
                                //无库存
                                if (isStudent == 1){
                                    item = '<li limit=6 card_limit_stock='+cardGroupLimitStock+' '+nameTextTitle+' ticketid='+tid+' price="'+price+'" ticket_stock='+(stock > 6 ? 6 : stock)+' class="no-stocks init-unselectable special"><a href="javascript:" class="'+setClass+'">'+parseFloat(price)+'元'+nameText+'<span class="stu"></span><span class="tips-not"><strong class="arrow"></strong>缺货登记，试试运气~</span>'+young+'</a></li>';
                                }else{
                                    item = '<li limit=6 card_limit_stock='+cardGroupLimitStock+' '+nameTextTitle+' ticketid='+tid+' price="'+price+'" ticket_stock='+(stock > 6 ? 6 : stock)+' class="no-stocks init-unselectable special"><a href="javascript:" class="'+setClass+'">'+price+'元'+nameText+'<span class="tips-not"><strong class="arrow"></strong>缺货登记，试试运气~</span>'+young+'</a></li>';
                                }
                            }
                        break;

                        case 2://秒杀票

                            //如果秒杀票为不限制每人购票张数-1 则改为6
                            if (limitNum<0)
                            {
                                limitNum = 6;
                            }

                            if (seStock>0)
                            {
                                //有库存
                                var tip                   = '',
                                    tipWidthClass         = 'w200',
                                    seckillStartDate      = list[k].seckill_start_time,       //秒杀开始日期
                                    todayStartTime        = list[k].act_sec_time_type_second,
                                    compareTime           = todayStartTime > seckillStartDate ? todayStartTime : seckillStartDate ; //每日秒杀时间点
                                /*console.log(
                                     dateFormat.dateFormat('Y年m月d日 H:i',todayStartTime) ,'=1==',
                                     dateFormat.dateFormat('Y年m月d日 H:i',seckillStartDate) ,'=2==',
                                     dateFormat.dateFormat('Y年m月d日 H:i',list[k].seckill_end_time),'=3==',
                                     dateFormat.dateFormat('Y年m月d日 H:i',list[k].seckill_start_time),'=4==',
                                     dateFormat.dateFormat('Y年m月d日 H:i',list[k].act_sec_time_type_second),'=5==',
                                     list[k]
                                 )*/
                                initUnselectableClass = ' init-unselectable ';
                                tip = '<span class="tips-not '+tipWidthClass+'"><strong class="arrow"></strong>限时秒杀，'+dateFormat.dateFormat('m月d日 H:i',compareTime)+'开抢</span>';

                                if (time>compareTime)
                                {
                                    initUnselectableClass = '';
                                    tipWidthClass         = '';
                                    if (limitNum==-1)
                                    {
                                        tip = '';
                                    }
                                    else
                                    {
                                        tip = '<span class="tips-not '+tipWidthClass+'"><strong class="arrow"></strong>限时秒杀，每人限购'+limitNum+'张</span>';
                                    }                                    
                                }

                                //如果原票价没有库存了则此秒杀票无法进行秒杀
                                if (stock<1)
                                {
                                    initUnselectableClass = ' init-unselectable ';
                                }
                                else
                                {
                                    //如果原票价库存小于秒杀票限购张数，则改限购张数为原票价库存
                                    if (stock<limitNum)
                                    {
                                        limitNum = stock;
                                    }
                                }

                                //如果秒杀票库存小于计算后的限购张数，则改限购张数为秒杀票库存
                                if (seStock < limitNum)
                                {
                                    limitNum = seStock;
                                }


                                //如果已下架
                                if (result.isOffShelf=='yes')
                                {
                                    initUnselectableClass = ' init-unselectable ';
                                }

                                if (list[k].seckill_end_time<time)
                                {
                                    initUnselectableClass = ' init-unselectable ';
                                    tip = '<span class="tips-not"><strong class="arrow"></strong>秒杀已结束</span>';
                                }                               

                                item = '<li limit='+limitNum+' card_limit_stock='+cardGroupLimitStock+' ticketid='+tid+' price="'+price+'" se_id='+seId+' class="special is-seckill-ticket '+initUnselectableClass+yearCardInitUnselectable+'" ticket_stock='+(seStock > 6 ? 6 : seStock)+'><a href="javascript:;" class="set">'+sePrice+'元'+tip+'<p>(原价'+price+')</p><span class="smiao smiao1111"></span></a></li>';
                                
                            }
                            else
                            {
                                //无库存
                                item = '<li limit='+limitNum+' card_limit_stock='+cardGroupLimitStock+' ticketid='+tid+' price="'+price+'" se_id='+seId+' class="special is-seckill-ticket no-stocks init-unselectable" ticket_stock='+(seStock > 6 ? 6 : seStock)+'><a href="javascript:;" class="set">'+sePrice+'元<p>(原价'+price+')</p><span class="smiao smiao1111"></span></a></li>';
                            }
                            
                        break;

                        case 3://全额积分兑换

                            fullScoresTickets.push(list[k]);
                            var fullScoresTicketsTips      = '',
                                fullScoresTicketsLimitTips = '';
                            limitNum = isNaN( parseInt(list[k].s_limit_num) ) ? 6 : parseInt(list[k].s_limit_num) ;

                            //如果全额积分票为不限制每人购票张数-1 则改为6
                            if (limitNum<0)
                            {
                                limitNum = 6;
                            }

                            if (list[k].s_limit_num!=-1)
                            {
                                fullScoresTicketsLimitTips = '，每人限兑'+list[k].s_limit_num+'张';
                            }

                            var scroreNormalTips = normalTipsArr.join(' , ') ? normalTipsArr.join(' , ')+' , ' : '';
                            fullScoresTicketsTips = '<span class="tips-not">'+scroreNormalTips+list[k].scores+'积分可全额兑换'+fullScoresTicketsLimitTips+'</span>';

                            if(sStock>0)
                            {
                                //如果原票价没有库存了则此全额积分兑换票无法进行秒杀
                                if (stock<1)
                                {
                                    initUnselectableClass = ' init-unselectable ';
                                }
                                else
                                {
                                    //如果原票价库存小于全额积分兑换票限购张数，则改限购张数为原票价库存
                                    if (stock<limitNum)
                                    {
                                        limitNum = stock;
                                    }
                                }

                                var scoresTicketYearCardUnselectable = '';
                                if(isFamilyCard=='1' && result.currentUserYearCard)
                                {
                                    scoresTicketYearCardUnselectable = ' year-card-unselectable ';
                                }

                                //有库存
                                item = '<li limit='+limitNum+' card_limit_stock='+cardGroupLimitStock+' ticket_ex_key="'+k+'" ticketid='+tid+' price="'+price+'" ticket_stock='+(sStock > 6 ? 6 : sStock)+' scores_id='+scoreId+' class="'+scoresTicketYearCardUnselectable+' special is-full-score-ex '+yearCardInitUnselectable+initUnselectableClass+'"><a href="javascript:;" class="'+setClass+'">'+price+'元'+nameText+fullScoresTicketsTips+'<span class="sji"></span></a></li>';
                            }
                            else
                            {
                                //无库存
                                item = '<li limit='+limitNum+' card_limit_stock='+cardGroupLimitStock+' ticket_ex_key="'+k+'" ticketid='+tid+' price="'+price+'" ticket_stock='+(sStock > 6 ? 6 : sStock)+' scores_id='+scoreId+' class="special is-full-score-ex no-stocks init-unselectable"><a href="javascript:;" class="'+setClass+'">'+price+'元'+nameText+'<span class="sji"></span></a></li>';
                            }

                            ticketsExData1[k] = item;//全额积分模式切换方式已修改，暂时废弃，作为保留方案

                            //由于全额积分票可以切换成普通票 所以还需要生成一个对应的普通票，从上面的case 1复制过来的，一定要与case 1保持一致，只做一些专属属性的添加
                            if (stock>0)
                            {
                                $smsg = '';
                                $sClass ='';
                                if(isStudent == 1){
                                    $smsg = '<span class="stu"></span>';
                                    $sClass = 'special';
                                }
                                //有库存
                                normalItem = '<li limit=6 card_limit_stock='+cardGroupLimitStock+' '+nameTextTitle+' style="display:none;" ticket_ex_key="'+k+'" class="'+yearCardInitUnselectable+$sClass+initUnselectableClass+'" ticketid='+tid+' price="'+price+'" ticket_stock='+(stock > 6 ? 6 : stock)+'><a href="javascript:;" class="'+setClass+'">'+price+'元'+nameText+normalTipsText+$smsg+'</a></li>';
                            }
                            else
                            {
                                //无库存
                                normalItem = '<li limit=6 card_limit_stock='+cardGroupLimitStock+' '+nameTextTitle+' style="display:none;" ticket_ex_key="'+k+'" ticketid='+tid+' price="'+price+'" ticket_stock='+(stock > 6 ? 6 : stock)+' class="no-stocks init-unselectable"><a href="javascript:" class="'+setClass+'">'+price+'元'+nameText+'<span class="tips-not"><strong class="arrow"></strong>缺货登记，试试运气~</span></a></li>';
                            }

                            item+=normalItem;

                            ticketsExData2[k] = normalItem;//全额积分模式切换方式已修改，暂时废弃，作为保留方案
                        break;
                    }
                    
                    html += item;
                    count++;
                }

                html += '<i class="clearfix"></i>';

                if (list.length<=0)
                {
                    html = '票价待定' + html;
                }

                var $allTicketPanelBoxes = $('.tickets-panel-box');
                    $allTicketPanelBoxes.find('.ticket-list-box ul').html(html);
                    $allTicketPanelBoxes.find('.selected-tickets ul').html('');

                resetTickets();
                var thisScheStatus = false;
                if (elem)
                {   
                    var dateIndex = $(elem).parent().index();

                    $allTicketPanelBoxes.find('.schedular-list-box li a').removeClass('active');
                    $allTicketPanelBoxes.each(function(){
                        $(this).find('.schedular-list-box li a').eq(dateIndex).addClass('active');
                    });

                    var preSellCountTime = $(elem).attr('time1'),
                        sellCountTime    = $(elem).attr('time2'),
                        ticket_url = $(elem).attr('onlineseat_url'),
                        status     = $(elem).attr('status');
                    calculateStateAndSetUI(ticket_url,preSellCountTime,sellCountTime,status);
                    thisScheStatus = status;
                }

                //如果排期已下架，则删除在线选座购票按钮
                if(result.isOffShelf=='yes')
                {
                    $('.online-seat-btn').remove();
                }

                currentYearCardOk  = result.currentCardInfo ? true : false;

                //欢聚橙卡支持
                if(result.cardRuleList)
                {   
                    var html = '<i class="ico-tag-card1"></i>欢聚橙卡<span class="all-cards">（';
                    var ruleNameArr = [];
                    $.each(result.cardRuleList, function(ruleK, item){
                       ruleNameArr.push(item.name);
                    });
                    var ruleNameStr = ruleNameArr.join('、');
                    html += ruleNameStr;
                    html += '）</span>';
                    $('.card-rule-support').removeClass('hide-tag').html(html);
                }
                
                if(currentYearCardOk && (thisScheStatus == 1 || thisScheStatus == 2))
                {   
                    var html = '';
                    $.each(result.cardRuleList, function(ruleK, item){
                        if(item.card_list)
                        {
                            html += '<span class="card-kind ';
                            if(result.currentCardInfo && result.currentCardInfo.group_id == item.id)
                            {
                                html += ' active';
                            }
                            html += '" data-rule-id="'+item.id+'" >'+item.name+'</span>';
                        }
                    });

                    //欢聚橙卡购买排期抵扣比例和支持票价说明
                    var hintHtml = '当前欢聚橙卡支持票价'+supportYearCardShop.join('、')+'。';
                    hintHtml += happyJuoooCardDeductIntro(result.currentCardRuleInfo);

                    if(html != '')
                    {   
                        $('.happy-juooo-card .ct').html(html);
                        $('.happy-juooo-card .tips-buy').html(hintHtml);
                        $('.happy-juooo-card').show();
                    }
                }

                //如果排期为欢聚橙卡销售,同时需要满足排期的售票状态为预售开票和正式开票状态中的条件
                if(currentYearCardOk && (thisScheStatus == 1 || thisScheStatus == 2))
                {          
                    yearCardIsOnlineseat = result.currentCardInfo.is_onlineseat == 1 ? true : false;
                    
                    //注意yearCardIsOnlineseat为当前用户所使用的欢聚橙卡是否支持在线选座
                    if (onlineseatUrl && yearCardIsOnlineseat)
                    {
                        //有在线选座地址，且欢聚橙卡规则支持在线选座，则强制显示在线选座按钮，隐藏立即购票按钮
                        $('.ticket-handle-btn-box .online-seat-btn').show();
                        var cardSeatUrl = $('.ticket-handle-btn-box .online-seat-btn').attr('href_src') + '&isFamilyCard=1';
                        $('.ticket-handle-btn-box .online-seat-btn').attr('href_src',cardSeatUrl);
                        //$('.ticket-handle-btn-box .buy-right-now-btn').hide();
                    }
                    else
                    {
                        //否则强制隐藏在线选座按钮，显示立即购票按钮
                        $('.ticket-handle-btn-box .online-seat-btn').hide();
                        $('.ticket-handle-btn-box .buy-right-now-btn').show();
                    }

                    currentUserYearCard = result.currentCardInfo;
                    currentCardRuleInfo = result.currentCardRuleInfo;

                    if(result.cardUseList && result.cardRuleList)
                    {   
                        userYearCardList        = result.cardUseList;
                        yearCardListCheckResult = result.cardRuleList;
                        
                        var userYearCardListHtml = userYearCardItemFactory(currentCardRuleInfo);
                        $('.year-card-select-dialog-model .js-year-card-list ul').html(userYearCardListHtml);
                    }
                }
                else
                {
                    //不满足欢聚橙卡购买条件，进入普通票购买状态
                    //1，如果有在线选座地址，显示在线选座按钮
                    //2，显示立即购票按钮
                    if(onlineseatUrl)
                    {
                        $('.ticket-handle-btn-box .online-seat-btn').show();
                    }

                    $('.ticket-handle-btn-box .buy-right-now-btn').show();

                    if(elem)
                    {   
                        calculateStateAndSetUI(ticket_url,preSellCountTime,sellCountTime,status);
                    }
                }

                //如果有全额积分票
                if (fullScoresTickets.length>0)
                {
                    $('.full-scores-check-tool').show();
                    var fullScoresTicketsPricesArr = [];
                    for(var k1 in fullScoresTickets)
                    {
                        fullScoresTicketsPricesArr.push(parseFloat(fullScoresTickets[k1].price)+'元');
                    }
                    $('.full-scores-check-tool .support-tickets').text(fullScoresTicketsPricesArr.join(' , '));

                    $('.full-scores-check-tool .full-scores-check-box').click();
                }
                else
                {
                    $('.full-scores-check-tool').hide();
                }

                currentScid = scid;
                currentShowTime = showTime;

                //如果没有票价，隐藏立即购票，在线选座按钮，欢聚橙卡控件
                if (list.length<=0)
                {
                    $('.ticket-handle-btn-box .online-seat-btn , .ticket-handle-btn-box .buy-right-now-btn , .happy-juooo-card').hide();
                }

                getPromotions(tids);
            }
            else if(result.code=='400')
            {
                $('.tickets-panel-box').find('.ticket-list-box ul').html('<li>票价待定</li>');
            }
            else
            {
                Dialog.msg('发生错误，请稍后再试！');
            }

        }
    });
}

//欢聚橙卡购买checkbox
$('body').on('click','.happy-juooo-card .card-kind',function(){
    var _this = $(this);
    var ruleName = _this.next().text();
    var ruleId = _this.attr('data-rule-id');
    if(!juo.isLogin()){  
        login.init();
        return;
    }
    
    if(!_this.hasClass('active')){ 
        $.each(yearCardListCheckResult,function(key, item){
            var hasUseCardState = false;
            if(item.id == ruleId){
                if(item.card_list){
                    for(var k in item.card_list)
                    {   
                        if(item.card_list[k].check_code == 200)
                        {   
                            hasUseCardState = true;
                            currentUserYearCard = item.card_list[k];
                            resetYearCardSession(item.card_list[k].card_id);
                            break;
                        }
                    }
                    if(hasUseCardState == true){
                        if(countSelectedTickets() > 0){
                            Dialog.confirm({
                                content:'此操作会清空已选票价，确认要进行此操作吗？',
                                okBtnCallback:function(index){
                                    $('.selected-tickets ul').html('');
                                    resetTickets();
                                    $('.card-kind').removeClass('active'); 
                                    $('.card-kind[data-rule-id="'+ruleId+'"]').addClass('active');
                                    $('.happy-juooo-card .tips-buy').show();
                                    if($('.full-scores-check-tool').css('display') != 'none' && $('.full-scores-check-box').hasClass('active'))
                                    {   
                                        $('.full-scores-check-tool .full-scores-check-box').click();
                                    }
                                    currentYearCardOk = true;
                                    yearCardIsOnlineseat = item.is_onlineseat == 1 ? true : false;
                                    currentCardRuleInfo  = item;
                                    resetHappyJuoooCardTickets();
                                    processBtnsOfYearCardCheck();
                                    var userYearCardListHtml = userYearCardItemFactory(currentCardRuleInfo);
                                    $('.year-card-select-dialog-model .js-year-card-list ul').html(userYearCardListHtml);
                                    Dialog.close(index);
                                    return false;
                                }
                            });
                        }else{
                            $('.card-kind').removeClass('active'); 
                            $('.card-kind[data-rule-id="'+ruleId+'"]').addClass('active');
                            $('.happy-juooo-card .tips-buy').show();
                            if($('.full-scores-check-tool').css('display') != 'none' && $('.full-scores-check-box').hasClass('active'))
                            {   
                                $('.full-scores-check-tool .full-scores-check-box').click();
                            }
                            currentYearCardOk = true;
                            yearCardIsOnlineseat = item.is_onlineseat == 1 ? true : false;
                            currentCardRuleInfo  = item;
                            resetHappyJuoooCardTickets();
                            processBtnsOfYearCardCheck();
                            var userYearCardListHtml = userYearCardItemFactory(currentCardRuleInfo);
                            $('.year-card-select-dialog-model .js-year-card-list ul').html(userYearCardListHtml);
                            return false;
                        }
                    }
                    else{
                        Dialog.alert('该规则下可用欢聚橙卡，已达到限购次数上限！');
                    }
                }else{
                    var msg = '您当前没有可用于购买该排期的'+ruleName+'！';
                    Dialog.alert(msg);
                    return false;
                }
            }
        });
    }else{
        Dialog.confirm({
            content:'此操作会默认你不使用欢聚橙卡购票，是否确认？',
            okBtnCallback:function(index){
                $('.card-kind').removeClass('active');
                $('.happy-juooo-card .tips-buy').hide();
                $('.ticket-list-box ul li ').removeClass('year-card-unselectable');
                currentYearCardOk    = false;
                currentUserYearCard  = false;
                currentCardRuleInfo  = false;
                yearCardIsOnlineseat = false;
                processBtnsOfYearCardCheck();
                Dialog.close(index);
                $('.year-card-select-dialog-model .js-year-card-list ul li').removeClass('active');
                $('.year-card-select-dialog-model .js-year-card-list ul').html('');
            }
        });
    }
});

//欢聚橙卡抵扣比例说明
function happyJuoooCardDeductIntro(ruleInfo)
{   
    var html = '';
    var realNum = 1;
    var discount = 10;
    if(ruleInfo.ticket_list.white && ruleInfo.ticket_list.white.hasOwnProperty(currentScid))
    {   
        if(ruleInfo.card_pay_way == 1)
        {
            realNum = ruleInfo.ticket_list.white[currentScid].real_num;
        }
        else if(ruleInfo.card_pay_way == 3)
        {
            discount = ruleInfo.ticket_list.white[currentScid].discount;
        }
    }
    else if(ruleInfo.deduction_list)
    {   
        $.each(ruleInfo.deduction_list, function(deduK, deduV){
            if(deduV.method == method)
            {   
                if((deduV.map_type == 1 && deduV.map_id == venueId) 
                    || (deduV.map_type == 2 && deduV.map_id == cate3Id)
                    || (deduV.map_type == 3 && deduV.map_id == cate1Id))
                {   
                    if(ruleInfo.card_pay_way == 1)
                    {
                        realNum = deduV.real_num;
                    }
                    else if(ruleInfo.card_pay_way == 3)
                    {
                        discount = deduV.discount;
                    }
                }
            }
        });
    }
    cardDeductNum = realNum;
    cardDiscountNum = discount;
    if(ruleInfo.card_pay_way == 1)
    {
        html += '抵扣比例说明：购买'+ruleInfo.ticket_limit_num+'张扣除'+realNum+'次。';
        html += '观演时一人一票，大人儿童皆须持票入场。';
    }
    else
    {   
        if(cardDiscountNum < 10)
        {
            html += '购买票品享受'+parseFloat(cardDiscountNum)+'折。';
        }
        html += '观演时一人一票，大人儿童皆须持票入场。PS：储值卡目前仅支持移动端购买演出！';
    }
    
    return html;
}

//欢聚橙卡购票card-kind的购票按钮处理
function processBtnsOfYearCardCheck()
{
    var onlineseatUrl = $('.oraginal-tickets-panel-box .schedular-list-box .active').attr('onlineseat_url');
    if($('.oraginal-tickets-panel-box .happy-juooo-card').find('.active').length == 0)
    {
        if(onlineseatUrl)
        {   
            $('.ticket-handle-btn-box .online-seat-btn').attr('href_src',onlineseatUrl);
            $('.ticket-handle-btn-box .online-seat-btn').show();
        }
        $('.ticket-handle-btn-box .buy-right-now-btn').show();
    }
    else
    {
        if(currentYearCardOk)
        {
            if(onlineseatUrl && yearCardIsOnlineseat)
            {
                //有在线选座地址，且欢聚橙卡规则支持在线选座，则强制显示在线选座按钮，隐藏立即购票按钮
                $('.ticket-handle-btn-box .online-seat-btn').attr('href_src',onlineseatUrl+'&isFamilyCard=1');
                $('.ticket-handle-btn-box .online-seat-btn').show();
                //$('.ticket-handle-btn-box .buy-right-now-btn').hide();
            }
            else
            {
                //否则强制隐藏在线选座按钮，显示立即购票按钮
                $('.ticket-handle-btn-box .online-seat-btn').hide();
                $('.ticket-handle-btn-box .buy-right-now-btn').show();
            }
        }
        else
        {
            if(onlineseatUrl)
            {   
                $('.ticket-handle-btn-box .online-seat-btn').attr('href_src',onlineseatUrl);
                $('.ticket-handle-btn-box .online-seat-btn').show();
            }
            $('.ticket-handle-btn-box .buy-right-now-btn').show();
        }
    }
}

//当前规则不支持票价按钮置灰处理
function resetHappyJuoooCardTickets()
{   
    var cardTicketIdArr = []; 
    var supportYearCardShop = [];
    $('.ticket-list-box ul li ').addClass('year-card-unselectable');
    $('.ticket-list-box ul li ').attr('card_limit_stock',6);
    $('.ticket-list-box ul li.is-full-score-ex').addClass('year-card-unselectable');
    if(currentCardRuleInfo && currentCardRuleInfo.yes_ticket){
        $.each(currentCardRuleInfo.yes_ticket,function(key, item){
            if(item.is_student != 1){
                supportYearCardShop.push(parseFloat(item.info.price)+'元');
                cardTicketIdArr.push(key);
                if(item.info.card_limit_stock != 0){
                    $('.ticket-list-box ul li[ticketid="'+key+'"]').removeClass('year-card-unselectable');
                    if(item.info.card_limit_stock == -1){
                        $('.ticket-list-box ul li[ticketid="'+key+'"]').attr('card_limit_stock',6);
                    }else if(item.info.card_limit_stock <= 6){
                        $('.ticket-list-box ul li[ticketid="'+key+'"]').attr('card_limit_stock',item.info.card_limit_stock);
                    }
                }
            } 
        });
    }
    var html = '当前欢聚橙卡支持票价'+supportYearCardShop.join('、')+'。';
    html += happyJuoooCardDeductIntro(currentCardRuleInfo);
    $('.happy-juooo-card .tips-buy').html(html);
}


/** 
 * 选择欢聚橙卡界面列表生成方法
 * 
 * @author liangzhi
 * @param object $cardList  用户所有可以使用的欢聚橙卡
 * @param object checkResults  欢聚橙卡规则检测结果
 */
function userYearCardItemFactory(currentRuleCardList)
{   
    var html = '';
    var cardTypeName = '';
    switch(currentRuleCardList.card_pay_way)
    {
        case '1':
            cardTypeName = '次卡';
            break;
        case '2':
            cardTypeName = '折扣卡';
            break;
        case '3':
            cardTypeName = '储值卡';
            break;
        default:
            break;
    }
    if(currentRuleCardList.card_list)
    {
        $.each(currentRuleCardList.card_list, function(cardK, cardV){
            html += '<li card_id="'+cardV.card_id+'" rule_id="'+currentRuleCardList.id+'" ';
            html += 'class="'+(currentUserYearCard.card_id == cardV.card_id ? 'active' : '')+'" ';
            html += 'check-code="'+cardV.check_code+'">';
            html += '<p class="card-name">卡号：'+cardV.card_id+'</p>';
            if(currentRuleCardList.effect_type != 2){
                html += '<p class="card-time">有效期：'+dateFormat.dateFormat('Y.m.d',cardV.avail_to)+'</p>';
            }else{
                html += '<p class="card-time">有效期：长期有效</p>';
            }
            if(cardV.group_id = 212 && cardV.card_id.length <= 8)
            {
                html += '<img class="ewm" src="'+basicDomain+'/Home/web/images/details/ewm.png" alt="">';
            }
            
            html += '<div class="card-foot">'+currentRuleCardList.name+'('+cardTypeName+')';
            if(currentRuleCardList.card_pay_way == 1)
            {
                html += '<div class="card-foot-right">剩余次数</br>';
                html += '<span>'+cardV.times_available+'</span>/<span>'+cardV.times_total+'</span>';
                html += '</div>';
            }
            else if(currentRuleCardList.card_pay_way == 3)
            {
                html += '<div class="card-foot-right">剩余金额</br>';
                html += '<span>'+parseFloat(cardV.balance)+'</span>元';
                html += '</div>';
            }
            else if(currentRuleCardList.card_pay_way == 2)
            {
                html += '<div class="card-foot-right">折扣</br>';
                html += '<span>'+parseFloat(cardV.use_discount)+'</span>折';
                html += '</div>';
            }
           
            html += '</div>';
            html += '<img class="act" src="'+basicDomain+'/Home/web/images/details/card_c_03.png" alt="">';
            html += '</li>';
        });
    }    
    return html;   
}

/** 
* 打开选择欢聚橙卡界面
* 
* @author YuanFei
* @param int type 购买类型，默认为立即购买，1为在线选座
* @since 1.0 
* @return void 
*/
function openYearCardSelect(type)
{   
    var type = type || false;
    var params = {
            title:'请选择要使用的欢聚橙卡',
            content:$('.year-card-select-dialog-model').html(),
            width:1000,
            okBtnCallback:function(index){
                var selected = $('.dialog-box'+index+' .js-year-card-list ul li.active');
                if(selected.length == 1)
                {
                    var yid = selected.attr('card_id');
                    var rid = selected.attr('rule_id');

                    if(yid)
                    {   
                        var checkCode = selected.attr('check-code');
                        if(checkCode == 200)
                        {   
                            currentCardRuleInfo  = yearCardListCheckResult[rid];
                            currentUserYearCard  = yearCardListCheckResult[rid].card_list[yid];
                            yearCardIsOnlineseat = yearCardListCheckResult[rid].is_onlineseat;
                            
                            var cardLimitBuyNum = currentCardRuleInfo.limit_buy_num > 6 ? 6 : currentCardRuleInfo.limit_buy_num;
                            if(currentCardRuleInfo.card_pay_way == 1 && type != 1)
                            {   
                                var cardTicketLimit = Math.floor(currentCardRuleInfo.ticket_limit_num * currentUserYearCard.times_available / cardDeductNum);
                                cardTicketLimit = Math.min(parseInt(cardTicketLimit),cardLimitBuyNum);
                                if(getSelectedTicketsTotalNum() > cardTicketLimit)
                                {
                                    Dialog.alert('当前选中的欢聚橙卡，购买'+currentCardRuleInfo.ticket_limit_num+'张票品扣除'+cardDeductNum
                                        +'次，剩余次数'+currentUserYearCard.times_available+'次，此次预约最多选择'+cardTicketLimit+'张。');
                                    currentYearCardOk = false;
                                    return;
                                }
                            }
                            else if(currentCardRuleInfo.card_pay_way == 3 && type != 1)
                            {   
                                if(getSelectedTicketsTotalNum() > cardLimitBuyNum)
                                {
                                    Dialog.alert('当前选中的欢聚橙卡，此次预约最多选择'+cardLimitBuyNum+'张。');
                                    return false;
                                }

                                var totalPrice = getSelectedTicketsTotalPrice();
                                var discountPrice = parseFloat((totalPrice * cardDiscountNum) / 10);
                                var balance = parseFloat(currentUserYearCard.balance);
                                if(discountPrice > balance)
                                {
                                    Dialog.alert('已选票品需支付¥'+discountPrice+'超过所选卡的剩余金额¥'+balance+'，请重新选择票品，或选择其他卡！');
                                    currentYearCardOk = false;
                                    return;
                                }
                            }

                            switch (type)
                            {
                                 case 1://在线选座 
                                    //判断选中的欢聚橙卡是否支持在线选座
                                    if(yearCardIsOnlineseat != '1')
                                    {
                                        Dialog.alert('此欢聚橙卡不支持在线选座，请选择其他欢聚橙卡！');
                                        return;
                                    }
                                 break;
     
                                 default://默认立即购票
                                 break;
                            }
                            selectYearCard(index,yid,type);
                        }
                        else
                        {
                            Dialog.msg('限制重复购买的次数'+currentCardRuleInfo.repeat_limit+'次');
                        }
                    }
                    else
                    {
                        Dialog.msg('出现异常！');
                    }
                    
                }
                else
                {
                    Dialog.alert('请选择一张要使用的欢聚橙卡！');
                }                
            },
        }
    Dialog.alert(params);
        
}

/** 
* 选择欢聚橙卡
* 
* @author YuanFei
* @param int dialogIndex 弹窗index
* @param int yid 欢聚橙卡id
* @param int type 购买类型，默认为立即购买，1为在线选座
* @since 1.0 
* @return void 
*/
function selectYearCard(dialogIndex,yid,type)
{   
    $.ajax({
        type:'POST',
        url:selectYearCardUrl,
        data:{yid:yid},
        dataType:'json',
        success:function(result)
        {
            if(result.code=='200')
            {
               selectedYearCard = true;
               switch (type)
               {
                    case 1://在线选座
                        $('.oraginal-tickets-panel-box .online-seat-btn').click();
                    break;

                    default://默认立即购票
                        $('.oraginal-tickets-panel-box .buy-right-now-btn').click();
                    break;
               }
            }
            else
            {
                Dialog.alert(result.msg ? result.msg : '服务器繁忙，请稍后再试！');                
            }
        },
        error:function(){
            Dialog.alert('服务器繁忙，请稍后再试！');
        }
    });
    Dialog.close(dialogIndex); 
}

//勾选规则下用户只有一张可用卡时,重置当前欢聚橙卡
function resetYearCardSession(yid)
{
    $.ajax({
        type:'POST',
        url:selectYearCardUrl,
        data:{yid:yid},
        dataType:'json',
        success:function(result)
        {
            if(result.code!='200')
            {
                Dialog.alert(result.msg ? result.msg : '服务器繁忙，请稍后再试！');
            }
        }
    });
}


//获取object长度
function objectSize(o)
{ 
   var n, count = 0;  
   for(n in o)
   {  
      if(o.hasOwnProperty(n)){  
         count++;  
      }  
   }  
   return count;  
}  


//重置所有选票
function resetTickets()
{
    //删除已选票价
    $('.tickets-panel-box .selected-tickets ul li').remove();
    //删除已选票价样式
    $('.tickets-panel-box .ticket-list-box ul li a').removeClass('active').parent().removeClass('unselectable');
    //恢复立即购票按钮
    $('.tickets-panel-box .buy-right-now-btn').attr('ticketstype',1);
    $('.tickets-panel-box .buy-right-now-btn').text(buyTicketBtnTextes[1]);
}

//切换全额积分模式
function switchFullScores(active)
{
    if (active)
    {
        //把后面的变量形式改为票价dom元素切换形式
        $('.tickets-panel-box .ticket-list-box .is-full-score-ex').hide().next().show();
        return;

        //全额积分模式切换方式已修改，暂时废弃，作为保留方案
        //退出全额积分模式
        if (objectSize(ticketsExData2)>0)
        {
            for(var k in ticketsExData2)
            {
                var exTicket = ticketsExData2[k];
                $('.tickets-panel-box .ticket-list-box ul li[ticket_ex_key="'+k+'"]').after(exTicket).remove();
            }
        }
    }
    else
    {
        //把后面的变量形式改为票价dom元素切换形式
        $('.tickets-panel-box .ticket-list-box .is-full-score-ex').show().next().hide();
        return;

        //全额积分模式切换方式已修改，暂时废弃，作为保留方案
        //进入全额积分模式
        if (objectSize(ticketsExData1)>0)
            {
                for(var k in ticketsExData1)
                {
                    var exTicket = ticketsExData1[k];
                    $('.tickets-panel-box .ticket-list-box ul li[ticket_ex_key="'+k+'"]').after(exTicket).remove();
                    
                }
            }
    }
}

//全额积分兑换checkbox
$('body').on('click','.full-scores-check-tool .full-scores-check-box',function(){
    var hasActive = $(this).hasClass('active');
    if(countSelectedTickets()>0)
    {
        Dialog.confirm({
            content:'此操作会清空已选票价，确认要进行此操作吗？',
            okBtnCallback:function(index){
                resetTickets();
                switchFullScores(hasActive);
                $('.full-scores-check-tool .full-scores-check-box').toggleClass('active');
                if($('.full-scores-check-box').hasClass('active'))
                {   
                    if($('.happy-juooo-card').css('display') != 'none' && $('.happy-juooo-card').find('.active').length > 0)
                    {
                        $('.happy-juooo-card .card-kind').removeClass('active');
                        $('.happy-juooo-card .tips-buy').hide();
                        $('.ticket-list-box ul li ').removeClass('year-card-unselectable');
                        currentYearCardOk    = false;
                        currentUserYearCard  = false;
                        currentCardRuleInfo  = false;
                        yearCardIsOnlineseat = false;
                        processBtnsOfYearCardCheck();
                        $('.year-card-select-dialog-model .js-year-card-list ul li').removeClass('active');
                        $('.year-card-select-dialog-model .js-year-card-list uli').html('');
                    }
                }
                Dialog.close(index);         

            }
        });
    }
    else
    {   
        switchFullScores(hasActive);
        $('.full-scores-check-tool .full-scores-check-box').toggleClass('active');
        if($('.full-scores-check-box').hasClass('active'))
        {
            if($('.happy-juooo-card').css('display') != 'none' && $('.happy-juooo-card').find('.active').length > 0)
            {
                $('.happy-juooo-card .card-kind').removeClass('active');
                $('.happy-juooo-card .tips-buy').hide();
                $('.ticket-list-box ul li ').removeClass('year-card-unselectable');
                currentYearCardOk    = false;
                currentUserYearCard  = false;
                currentCardRuleInfo  = false;
                yearCardIsOnlineseat = false;
                processBtnsOfYearCardCheck();
                $('.year-card-select-dialog-model .js-year-card-list ul li').removeClass('active');
                $('.year-card-select-dialog-model .js-year-card-list ul').html('');
            }
        }       
    }
});



$('body').on('click','.buy-right-now-btn', function(){
    
    if($('.happy-juooo-card').find('.active').length > 0)
    {
        if(currentCardRuleInfo.card_pay_way == 3)
        {
            Dialog.alert('储值卡目前仅支持移动端购买演出！');
            return false;
        }
    }
    
    getLimit(this);
});

$('.express-area-box a').click(function(){
    var cid        = $(this).attr('cid'),
        area       = $(this).attr('area'),
        expressFee = parseFloat($(this).attr('express_fee')),
        text       = '',
        cityName   = $(this).text();
    switch(area)
    {
        case 'self':
            var free_amount = parseFloat($(this).attr('free_amount'));
            if( cid == 53 || cid == 15)
            {
                text = '运费：到付';
            }else
            {
                text = '运费：同城满'+free_amount+'元免运费，不满收'+expressFee+'元';
            }
            
        break;

        case 'hongkong_macao':
            text = '运费：到付';
        break;
        case 'others':
            text = '运费：'+expressFee+'元';
        break;
    }
    $('.current-express-city-name').text(cityName);
    $('.express-fee-text-box').text(text);
});

getExpressFee(cityId);
function getExpressFee(cid,elem)
{
    //获取运费
    $.ajax({
        type:'POST',
        url:getExpressFeeUrl,
        data:{cid:cid},
        dataType:'json',
        success:function(result)
        {
            if (result.code=='ok')
            {
                if(cid==53 || cid==15)
                {
                    var text = '运费：到付';
                }else
                {
                    var text = '运费：同城满'+parseFloat(result.data.free_amount)+'元免运费，不满收'+parseFloat(result.data.shipping_fee)+'元';
                }
                $('.express-fee-text-box').text(text);

                $('.express-area-box a[area="self"]').attr('free_amount',parseFloat(result.data.free_amount)).attr('express_fee',parseFloat(result.data.shipping_fee));
                $('.express-area-box a[area="hongkong_macao"]').attr('express_fee',parseFloat(result.data.hongkong_shipping_fee));
                $('.express-area-box a[area="others"]').attr('express_fee',parseFloat(result.data.dis_shipping_fee));
            }
        }
    });
}

var buyTicketLimitTipsTimeOut = 0;
function buyTicketLimitTips(buyTicketsLimit,type,isStudent)
{
    var html = '购买数量超出限制，每单限购<span class="limit-ticket-num-text">'+buyTicketsLimit+'</span>张';
    
    if(type && type == 2)
    {
        html = '购买数量超出限制，每单限购<span class="limit-ticket-num-text">'+buyTicketsLimit+'</span>张';
    }
    if(isStudent && isStudent == 1){
        html = '购买数量超出限制，每单限购<span class="limit-ticket-num-text">'+buyTicketsLimit+'</span>张';
    }
    if(isStudent && isStudent == 2){
        html = 'Young身份认证用户每演出仅可购买2张优惠票，您购买数量已超过限制';
    }
    if(type == 5 ){
        html = '库存仅剩<span class="limit-ticket-num-text">'+buyTicketsLimit+'</span>张';
    }
    clearTimeout(buyTicketLimitTipsTimeOut);

    //$('.limit-ticket-num-tip .limit-ticket-num-text').text(buyTicketsLimit);
    $('.limit-ticket-num-tip').html(html);
    $('.limit-ticket-num-tip').show();

    buyTicketLimitTipsTimeOut = setTimeout(closeBuyTicketLimitTips,3000);
}

function closeBuyTicketLimitTips()
{
    $('.limit-ticket-num-tip').slideUp();
}

var buyingbusy = false;

//限购
function getLimit(elem)
{   
    $.ajax({
        type : 'POST',
        url : systemData.getLimitUrl,
        data : {
            scid : parseInt($('.schedular-list-box ul li .active').attr('schedular_id')),
        },
        dataType : 'json',
        async : false,
        beforeSend: function() { 
        },
        success : function(result) {
            var list = '';
            if(result.code == 1){
                buyTickets(elem);
            } else if(result.code == 10001) {
                login.init({success:function(){},autoReload:true});
            } else {
                
                if(result.code == 2){
                    list += '<div class="btn-ewm">';
                    list += '<img src="'+ systemData.qrcodeUrl + '?code=' + systemData.currentUrl +'" alt="">';
                    list += '<div class="txttips">仅支持微信购买，扫一扫立即购买</div>';
                    list += '</div>';
                    
                    $('.buy-right-now-btn').append(list);
                } else {
                    Dialog.alert({
                        content: result.msg
                    });
                }
            }
        }
    });
}

//立即购票
function buyTickets(elem)
{   
    if (buyingbusy == true)
    {
        return;
    }

    if($('.happy-juooo-card').find('.active').length > 0)
    {
        if(currentCardRuleInfo.card_pay_way == 3)
        {
            Dialog.alert('储值卡目前仅支持移动端购买演出！');
            return false;
        }
    }

    var total = getSelectedTicketsTotalNum();

    var selectedList = $('.oraginal-tickets-panel-box .selected-tickets ul li');
    if (selectedList.length<=0)
    {
        var ticketPanelsCount = $('.tickets-panel-box').length;
        if (ticketPanelsCount<2)
        {
            var originalTicketsPanel = $('.oraginal-tickets-panel-box').clone();
            originalTicketsPanel.find('.promotion-info-box').remove();
            originalTicketsPanel.find('.toggle-more').remove();

            Dialog.alert({content:'<div class="tickets-panel-box">'+originalTicketsPanel.html()+'</div>',width:800,noBtn:true});
            return;
        }
        else
        {
            Dialog.alert('请选择票价');
            return;
        }       
    }

    //如果在欢聚橙卡购买状态中
    if($('.happy-juooo-card').find('.active').length > 0)
    {
        //如果有多张有效欢聚橙卡
        if ($('.year-card-select-dialog-model .js-year-card-list ul li').length > 1 && !selectedYearCard)
        {   
            openYearCardSelect();
            return;
        }
        else
        {
            if(currentUserYearCard.check_code != 200)
            {
                Dialog.msg('当前所选欢聚橙卡，已达到限购次数上限！');
                return;
            }
        }
    }


    if (total > buyTicketsLimit && buyTicketsLimit!=-1)
    {
        //var isStudent = isSelectStudent();
        //Dialog.msg('每单限购'+buyTicketsLimit+'张');
        buyTicketLimitTips(buyTicketsLimit,0);
        return;
    }

    
    var ticketsType = $(elem).attr('ticketsType'),
        url         = buyTicketsUrl,
        data        = {};

    
    //学生票限制
    var isStudent = isSelectStudent();
    if(isStudent){
        var isAuth = $('.stu-id').attr('data-auth');
        if(isAuth == 1){
            Dialog.alert('您的学生身份验证正在审核中,请耐心等待。');
            return;
        }
        if(isAuth == 3){
            Dialog.alert('抱歉，您的学生身份验证已过期。');
            return;
        }
        if(isAuth == 0){
            Dialog.alert('您还未认证为学生，不能购买学生票。');
            return;
        }
    }
    //青年票限制
    var isYoung = isSelectYoung();
    if(isYoung){
        var isYoungAuth = $('.you-id').attr('data-auth');
        if(isYoungAuth == 1){
            Dialog.alert('您的Young身份验证正在审核中,请耐心等待。');
            return;
        }
        if(isYoungAuth == 3){
            Dialog.alert('抱歉，您的Young身份验证已过期。');
            return;
        }
        if(isYoungAuth == 0){
            Dialog.alert('您还未认证为Young，不能购买Young票。');
            return;
        }
        var YoungNum = getYoungNum();
        if(YoungNum > systemData.youngCommoitTicketNum){
            buyTicketLimitTips(systemData.youngLimitTicketNum,0,2);
            return;
        }
    }
    switch(ticketsType)
    {
        case '2'://秒杀票
            var tickets = [];
            var selectedList = $('.oraginal-tickets-panel-box .selected-tickets ul .is-seckill-ticket');
            if (selectedList.length<=0)
            {
                Dialog.alert('请选择票价');
                return;
            }
            if (selectedList.length!=1)
            {
                Dialog.alert('操作异常');
                return;
            }
            var hasOther = $('.oraginal-tickets-panel-box .selected-tickets ul li:not(.is-seckill-ticket)').length;
            if (hasOther>0)
            {
                Dialog.alert('操作异常');
                return;
            }     

            var ticketid    = parseInt(selectedList.attr('se_id')),
                quantity    = parseInt(selectedList.find('.nums .ipt-num').val()),
                productType = 2;
                
            if (!ticketid)
            {
                Dialog.alert('出现错误，请重试');
                return;
            }
            if (quantity<0)
            {
                Dialog.alert('请正确填写购票张数，必须大于1的整数');
                return;
            }

            data = {type:2,ticketid:ticketid,quantity:quantity,productType:productType};
        break;
        
        case '3'://全额积分购票
            var tickets = [];
            var selectedList = $('.oraginal-tickets-panel-box .selected-tickets ul .is-full-score-ex');
            if (selectedList.length<=0)
            {
                Dialog.alert('请选择票价');
                return;
            }
            if (selectedList.length!=1)
            {
                Dialog.alert('操作异常');
                return;
            }
            var hasOther = $('.oraginal-tickets-panel-box .selected-tickets ul li:not(.is-full-score-ex)').length;
            if (hasOther>0)
            {
                Dialog.alert('操作异常');
                return;
            }

            var scoreid     = parseInt(selectedList.attr('scores_id')),
                quantity    = parseInt(selectedList.find('.nums .ipt-num').val()),
                productType = 2;

            if (quantity<0)
            {
                Dialog.alert('请正确填写购票张数，必须大于1的整数');
                return;
            }
            data = {type:3,scoreid:scoreid,quantity:quantity,productType:productType};
        break;

        default://普通票
            var tickets = [];
            var selectedList = $('.oraginal-tickets-panel-box .selected-tickets ul li');

            if (selectedList.length<=0)
            {
                Dialog.alert('请选择票价');
                return;
            }
            var hasSpecial = $('.oraginal-tickets-panel-box .selected-tickets ul .is-full-score-ex , .selected-tickets ul .is-full-score-ex').length;
            if (hasSpecial>0)
            {
                Dialog.alert('操作异常');
                return;
            }
            var hasError = false;
            selectedList.each(function(){
                var ticketid = parseInt($(this).attr('ticketid')),
                    quantity = parseInt($(this).find('.nums .ipt-num').val()),
                    type     = 2;

                if (quantity<0)
                {
                    hasError = true;
                    Dialog.alert('请正确填写购票张数，必须大于1的整数');
                    return false;
                }

                var item = ticketid+'_'+quantity+'_'+type;
                tickets.push(item);
            });
            if (hasError)
            {
                return;
            }
            tickets = tickets.join('^');
            
            data = {type:1,tickets:tickets};

            if($('.happy-juooo-card').css('display') != 'none' && $('.happy-juooo-card').find('.active').length > 0)
            {
                data.isFamilyCard = 1;
                data.sid          = $('.schedular-list-box ul li .active').attr('show_id');
                data.scid         = $('.schedular-list-box ul li .active').attr('schedular_id');
                data.showTime     = $('.schedular-list-box ul li .active').attr('showTime');
                data.venueId      = venueId;
                data.cate1Id      = cate1Id;
                data.cooperation  = $('.schedular-list-box ul li .active').attr('cooperation');
                data.shipping     = $('.schedular-list-box ul li .active').attr('shipping');
            }
            
        break;
    }

    buyingbusy = true;
    var loading = '<div class="loading-page js-loading-page">'+
                        '<div class="loading-bg"></div>'+
                        '<div class="loading-wrap">'+
                            '正在提交，请稍后...'+
                        '</div>'+
                    '</div>';
    $('body').append(loading);
    $.ajax({
        type:'POST',
        url:url,
        data:data,
        dataType:'json',
        success:function(result)
        {
            $('.loading-page').remove();
            buyingbusy = false;
            if (result.code=='ok')
            {
                window.location.href = result.data;
            }
            else if(result.code=='needLogin')
            {
                login.init({success:function(){$(elem).click();},autoReload:false});
                $('#js-login-wrap').css('z-index',1100);
                $('#js-login-wrap .login-window').css('z-index',1101);
            }
            else
            {   
                selectedYearCard = false;
                if(!!result.msg)
                {
                    Dialog.alert(result.msg);
                }
            }
            
        },
        error:function()
        {
            $('.loading-page').remove();
            buyingbusy = false;
            selectedYearCard = false;
            Dialog.alert('购买失败，请稍后重试！');
        }
    });
}

//开售提醒按钮
$('body').on('click','.preorder-right-now-btn', function(){
    if(!juo.isLogin())
    {
        login.init();
        return;
    }
    preorder(this);
});

function preorder(elem)
{
    var ticket_id     = 0,
        booking_title = $('.show-title').text(),
        price         = '待定',
        priceNum      = 0,
        dialogContent = '',
        $tickets      = $('.oraginal-tickets-panel-box .ticket-list-box ul li');

    //如果有票价
    if ($tickets.length > 0)
    {
        var $selected = $('.oraginal-tickets-panel-box .ticket-list-box ul .active');
        if ($selected.length<=0)
        {
            var ticketPanelsCount = $('.tickets-panel-box').length;
            if (ticketPanelsCount<2)
            {
                var originalTicketsPanel = $('.oraginal-tickets-panel-box').clone();
                originalTicketsPanel.find('.promotion-info-box').remove();
                originalTicketsPanel.find('.toggle-more').remove();

                Dialog.alert({content:'<div class="tickets-panel-box">'+originalTicketsPanel.html()+'</div>',width:800,noBtn:true});
                return;
            }

            Dialog.alert('请选择票价');
            return;
        }
    
        ticket_id = $selected.eq(0).parent().attr('ticketid');
        price     = $selected.eq(0).parent().attr('price');
        priceNum  = price;
        price = price+'元';
    }

    //如果没票价，票价待定则直接弹窗
    dialogContent = $('.booking-dialog-model .modal-body').clone();

    dialogContent.find('.booking-sche-name-line').text(booking_title);
    dialogContent.find('input[name="ticket_id"]').val(ticket_id);
    dialogContent.find('input[name="scid"]').val(currentScid);
    dialogContent.find('input[name="price"]').val(priceNum);
    dialogContent.find('.booking-time-line').text($('.oraginal-tickets-panel-box .schedular-list-box ul li .active').text());
    dialogContent.find('.booking-price-line').text(price);
    dialogContent.find('.dialog-tip-text').text(orderDialogTipText);
    dialogContent = '<div class="w555"><div class="modal"><div class="modal-body">'+dialogContent.html()+'</div></div></div>';

    var params = {
        title:'开售提醒',
        content:dialogContent,
        width:565,
        okBtnCallback:function(index){booking(index,2)},
    }
    Dialog.confirm(params);
}

//票品数量输入框失去焦点事件
$('body').on('blur','.selected-tickets .ipt-num', function(){
    var value = this.value;
    $('.selected-tickets .ipt-num').val(value);
});

//预售开票提醒登记按钮
$('body').on('click','.sale-booking-btn', function(){
    if(!juo.isLogin())
    {
        login.init();
        return;
    }
    preSaleBooking(this);
});

function preSaleBooking(elem)
{
    var ticket_id     = 0,
        booking_title = $('.show-title').text(),
        price         = '待定',
        priceNum      = 0,
        dialogContent = '',
        $tickets      = $('.oraginal-tickets-panel-box .ticket-list-box ul li');

    //如果有票价
    if ($tickets.length > 0)
    {
        var $selected = $('.oraginal-tickets-panel-box .ticket-list-box ul .active');
        if ($selected.length<=0)
        {
            var ticketPanelsCount = $('.tickets-panel-box').length;
            if (ticketPanelsCount<2)
            {
                var originalTicketsPanel = $('.oraginal-tickets-panel-box').clone();
                originalTicketsPanel.find('.promotion-info-box').remove();
                originalTicketsPanel.find('.pre-sell-countdown-wrap').remove();                
                originalTicketsPanel.find('.toggle-more').remove();

                Dialog.alert({content:'<div class="tickets-panel-box">'+originalTicketsPanel.html()+'</div>',width:800,noBtn:true});
                return;
            }            

            Dialog.alert('请选择票价');
            return;
        }
    
        ticket_id = $selected.eq(0).parent().attr('ticketid');
        price     = $selected.eq(0).parent().attr('price');
        priceNum  = price;
        price     = price+'元';
    }

    //如果没票价，票价待定则直接弹窗

    dialogContent = $('.booking-dialog-model .modal-body').clone();
    dialogContent.find('.booking-sche-name-line').text(booking_title);
    dialogContent.find('input[name="ticket_id"]').val(ticket_id);
    dialogContent.find('input[name="scid"]').val(currentScid);
    dialogContent.find('input[name="price"]').val(priceNum);
    dialogContent.find('.booking-time-line').text($('.oraginal-tickets-panel-box .schedular-list-box ul li .active').text());
    dialogContent.find('.booking-price-line').text(price);
    dialogContent.find('.dialog-tip-text').text('');
    dialogContent = '<div class="w555"><div class="modal"><div class="modal-body">'+dialogContent.html()+'</div></div></div>';


    var params = {
        title:'提醒登记',
        content:dialogContent,
        width:565,
        okBtnCallback:function(index){booking(index,3)},
    }
    Dialog.confirm(params);
}

var onlineSeatBtnBusy = false;
//在线选座按钮
$('body').on('click','.online-seat-btn', function(){
    if(onlineSeatBtnBusy)
    {
        return;
    }

    if(!juo.isLogin()){  
        login.init();
        return;
    }


    if($('.oraginal-tickets-panel-box .happy-juooo-card').find('.active').length > 0)
    {   
        if(currentCardRuleInfo.card_pay_way == 3)
        {
            Dialog.alert('储值卡目前仅支持移动端购买演出！');
            return false;
        }
        if($('.year-card-select-dialog-model .js-year-card-list ul li').length > 1 && !selectedYearCard )
        {
            openYearCardSelect(1);
            return;
        }
        if(currentUserYearCard.check_code != 200)
        {
            Dialog.msg('当前所选欢聚橙卡，已达到限购次数上限！');
            return;
        }
        window.location.href = $(this).attr('href_src');
    }
    else
    {   
        window.location.href = $(this).attr('href_src').replace('&isFamilyCard=1','');
    }

    onlineSeatBtnBusy = true;
    var loading = '<div class="loading-page js-loading-page">'+
                        '<div class="loading-bg"></div>'+
                        '<div class="loading-wrap">'+
                            '正在提交，请稍后...'+
                        '</div>'+
                    '</div>';
    $('body').append(loading);
});

//计算状态及按钮显示
function calculateStateAndSetUI(onlineSeat,pre_sell_start_time,sell_start_time,state)
{   
    currentScheSellStatus = state;
    $('.ticket-handle-btn-box .btn').hide();    //初始化 先隐藏所有按钮
    $('.ticket-handle-btn-box .online-seat-btn').attr('href_src','');   //初始化 先置空在线选座按钮的链接地址
    state = parseInt(state);
    switch(state)
    {
        case 1://正式开票
        case 2://预售开票
            if (onlineSeat)
            {
                $('.ticket-handle-btn-box .online-seat-btn').attr('href_src',onlineSeat).show();
            }
            $('.ticket-handle-btn-box .buy-right-now-btn').show();
        break;

        case 3://预售预热

            $('.ticket-handle-btn-box .sale-booking-btn').show();

            //开抢倒计时
            var preSellStartDate = dateFormat.dateFormat('Y年m月d日 H:i',pre_sell_start_time);
            $('.pre-sell-countdown-wrap .pre-sell-start-date').text(preSellStartDate);

            $('.pre-sell-countdown-wrap .countdown').attr('time',(pre_sell_start_time - time) * 1000).countdown();
            $('.pre-sell-countdown-wrap').fadeIn();

            //开票提醒特殊处理移除缺货登记
            $('.tickets-panel-box .ticket-list-box ul li').removeClass('no-stocks').removeClass('init-unselectable');

            $('.happy-juooo-card').hide();
        break;

        case 4://预定
            
            //开票提醒特殊处理移除缺货登记
            $('.tickets-panel-box .ticket-list-box ul li').removeClass('no-stocks').removeClass('init-unselectable').find('.tips-not').hide();
            
            $('.ticket-handle-btn-box .preorder-right-now-btn').show();
            $('.ticket-handle-btn-box .buy-right-now-btn').hide();

            $('.happy-juooo-card').hide();
        break;

        default:
        break;
    }
}

//全额积分立即购票
function fullScoreBuyTickets(elem)
{

}

//秒杀票立即购票
function secKillBuyTickets(elem)
{

}

//购买套餐
$('.sale-package-box').on('click','.buy-sale-package-btn',function(){

    if ($(this).hasClass('btn-ban'))
    {
        return;
    }
    
    var sale_package_id = $(this).attr('sale_package_id');
    var data_is_abolish = $(this).attr('data-is-abolish');
    var _this = this;
    
    if(parseInt(data_is_abolish))
    {
        Dialog.alert('该套餐已取消或下架');
    }
    else
    {
        $.ajax({
            type:'POST',
            url:buyTicketsUrl,
            data:{type:4,sale_package_id:sale_package_id},
            dataType:'json',
            success:function(result)
            {
                if (result.code=='ok')
                {
                    window.location.href = result.data;
                }
                else if(result.code=='needLogin')
                {
                    login.init({success:function(){$(_this).click();},autoReload:false});
                }
                else
                {
                    if (!!result.msg)
                    {
                        Dialog.alert(result.msg);
                    }
                }
                
            }
        });
    }
})
//获取所有促销信息
function getPromotions(tids)
{
    tids = tids.join(',');
    $.ajax({
        type:'POST',
        url:getPromotionsUrl,
        data:{page:1,tids:tids,scid:currentScid,showTime:currentShowTime,cate1Id:cate1Id},
        dataType:'json',
        success:function(result)
        {
            if (result.code == 'ok')
            {
                //票品加上“惠”角标，以及更换票名称 ---by Liangzhi
                var skuBestActMap = result.data.skuBestActMap;
                setTicketIcon(skuBestActMap);
                
                var html = '';
                var list = result.data.list;
                html = PromotionsItemHtmlFactory(list);
                if (list.length>0)
                {
                    $('.promotion-info-box ul').html(html); 
                    $('.promotion-info-box .arra i').text(result['data']['list'].length);
                    $('.promotion-info-box').show(); 
                }
                else
                {
                    $('.promotion-info-box ul').html(''); 
                    $('.promotion-info-box .arra i').text(0);
                    $('.promotion-info-box').hide();
                }
                
            }
            else
            {
                $('.promotion-info-box ul').html(''); 
                $('.promotion-info-box .arra i').text(0);
                $('.promotion-info-box').hide();
            }
            
        }
    });
}

function setTicketIcon(skuBestActMap)
{
    if(skuBestActMap){
        $.each(skuBestActMap, function(item, val){
            if(val.discountPriceDesc != '' && val.discountPriceDesc != null){
                var skuBestActMapObj = $('.ticket-list-box').find('li[ticketid='+item+']');
                if(skuBestActMapObj.length > 0){
                    skuBestActMapObj.each(function(){
                        var isSecTickets = $(this).hasClass('is-seckill-ticket');
                        var isStuTickets = $(this).hasClass('is_student_tickets');
                        var isPacTickets = $(this).hasClass('is_package_tickets');
                        var isYouTickets = $(this).hasClass('is_Young_tickets');
                        var isScoTickets = $(this).attr('ticket_ex_key') != undefined ? true : false;
                        if(!isSecTickets && !isStuTickets && !isPacTickets && !isYouTickets && !isScoTickets){
                            $(this).addClass('is-promotion-tickets special');
                            var pObj = $(this).find('p');
                            if(pObj.length == 0){
                                $(this).find('a').addClass('set');
                                $(this).find('a').append('<p>'+val.discountPriceDesc+'</p>');
                            }
                            $(this).find('a').append("<span class='hui'></span>");
                        } 
                    });
                }
            }
        });
    }
}

$('.promotion-info-box').on('click','.js-item-take-now',function(){
    var cid = $(this).attr('data-cid');
    if (cid)
    {
        if (!$(this).hasClass('geted'))
        {
            var thisElem = this;
            $.ajax({
                type:'POST',
                url:getCouponUrl,
                data:{cid:cid},
                dataType:'json',
                success:function(result)
                {
                    if (result.code=='ok')
                    {
                        $(thisElem).addClass('geted');
                        $(thisElem).text('已领取');
                    }
                    else if(result.code=='login')
                    {
                        login.init();
                    }
                    else
                    {
                        if (result.msg)
                        {
                            Dialog.alert(result.msg);
                        }
                        else
                        {
                            Dialog.alert('领取失败');
                        }
                        
                    }
                    
                }
            });
        }
    }
    else
    {
        var heightCss = $('.promotion-info-box #bankdiscountlist').css('height');
        if (heightCss=='28px')
        {
            $('.promotion-info-box .arra').click();
        }

        $(this).nextAll('.popover').slideToggle();
        
    }
    
});

$('.promotion-info-box').on('click','.js-hide',function(){
    $(this).parents('.popover').slideUp();
});
function PromotionsItemHtmlFactory(list)
{
    var html  = '';

    for(var k in list)
    {
        if (!list.hasOwnProperty(k))
        {
            continue;
        }
        var littleWindow = '';
        if (list[k].isGive.length>0)
        {
            var list1 = list[k].isGive;
            littleWindow += '<div style="display:none;" class="popover popover-orange margin20px">'+
                                '<div class="popover-title">'+
                                    '<span class="title-theme">'+list[k].activityTitle+'</span><span class="c-999">'+list[k].activityDesc+'</span>'+
                                    '<a class="close js-hide">X</a>'+
                                '</div>'+
                                '<div class="popover-inner">'+
                                    '<div class="discount-activity-wrap">'+
                                        '<div class="discount-activity-list">';
            for(var k1 in list1)
            {
                
                                littleWindow += '<ul class="item-list js-item-list">'+
                                                    '<input type="hidden" name="is_sale_give_4_1_4" value="51833" data-limitnum="-1">'+
                                                    '<li class="td-item">'+
                                                        '<div class="item-pic">'+
                                                            '<a class="link" href="javascript:;" title=""> <img class="item-img" src="'+imgDomain+list1[k1].pic+'" alt="">'+
                                                            '</a>'+
                                                        '</div>'+
                                                        '<div class="item-info">'+
                                                            '<div class="item-basic-info">'+
                                                                '<a class="item-title js-item-title" href="javascript:;">'+list1[k1].schedular_name+'</a>'+
                                                            '</div>'+
                                                            '<div class="item-other-info">'+
                                                                '<p class="c-666">时间：'+dateFormat.dateFormat('Y.m.d H:i',list1[k1].show_time)+'</p>'+
                                                                '<p class="c-666">场馆：'+list1[k1].venue_name+'</p>'+
                                                            '</div>'+
                                                        '</div>'+
                                                    '</li>'+
                                                    '<li class="td-amount">'+
                                                        '<p class="f-14px c-f67817 ">'+
                                                            '￥<s class="js-item-discount">'+parseFloat(list1[k1].ticket_pirce)+'</s>'+
                                                        '</p>'+
                                                        '<div class="edit-num sale-give">×'+
                                                            '<span class="num">'+parseFloat(list1[k1].ticket_num)+'</span>'+

                                                        '</div>'+
                                                    '</li>'+
                                                    //'<li class="td-option"><a class="item-take btn btn-small js-item-take" href="javascript:;">买赠</a></li>'+
                                                '</ul>';


                            
            }
                        littleWindow += '</div>'+
                                    '</div>'+
                                '</div>'+
                            '</div>';

        }
        html += '<li><span class="t">'+list[k].activityTitle+'</span>'+list[k].activityDesc+littleWindow+'</li>';
    }

    return html;       
}

if(parseInt(systemData.isAbolish) == 0)
{
    getSalePackage();
}

//获取搭售信息
function getSalePackage(tids)
{
    $.ajax({
        type:'POST',
        url:getSalePackageUrl,
        data:{scid:currentScid},
        dataType:'json',
        success:function(result)
        {
            if (result.code=='ok')
            {
                var html = [];
                var list = result.data;
                
                if (list.length<=0)
                {
                    return;
                }
              
                
                
                html = salePackageHtmlFactory(list);

                $('.Pwrapper .sale-package-tab-box ul').html(html.tabs);
                $('.Pwrapper').append(html.set);  
                $('.Pwrapper').show();
            }
            
        }
    });
}

function salePackageHtmlFactory(list)
{
    var n    = 1,
        tabs = '',
        set  = '',
        abolishNum = 0,
        salePackageNum = Object.keys(list).length;
   
    for(var k in list)
    {
        if (n==1)
        {
            tabs += '<li class="on">优惠套餐1<i></i></li>';
        }
        else
        {
            tabs += '<li>优惠套餐'+n+'<i></i></li>';
        }
        
        var setItemArr         = [],
            newTotalPrice      = 0,
            originalTotalPrice = 0,
            liCount            = 0,
            isCurrentAbolish   = 0,
            shopBtnTxt         = '购买套餐',
            shopBtnClass       = '';

        for(var k1 in list[k])
        {
            var newPrice = 0,
                item     = '',
                tyingLabel = '',
                tyingPriceLabel = '',
                originalPrice = parseFloat(list[k][k1].price);

                originalPrice = parseFloat(originalPrice.toFixed(2)) * parseInt(list[k][k1].num);
        
//            switch(list[k][k1].discount_type)
//            {
//                case '1':
//                    newPrice = originalPrice*parseFloat(list[k][k1].discount*10/100) ;
//                break;
//
//                case '2':
//                    
//                break;
//            }

            if(parseInt(list[k][k1].is_abolish) == 1)
            {
                abolishNum = parseInt(abolishNum) + 1;
          
                if(parseInt(salePackageNum) == abolishNum)
                {
                    $(".sale-package-box").remove();
                }
                
                isCurrentAbolish = 1;
                console.log(isCurrentAbolish);
            }
            
            newPrice = parseFloat(list[k][k1].sale_price) * list[k][k1].num;
            newPrice = parseFloat(newPrice.toFixed(2));

            tyingLabel = '一口价' + '：' + newPrice;
            tyingPriceLabel = '￥' + parseFloat(list[k][k1].price) +  'x' + list[k][k1].num;
         
            item = '<li>'+
                        '<a target="_blank" href="'+itemDomain+list[k][k1].id+'">'+
                            '<div class="img">' + 
                            '<img src="'+imgDomain+list[k][k1].pic+'" alt="'+list[k][k1].schedular_name+'">'+
                            '</div>' + 
                            
                            '<div class="right-txt">' +
                            '<p class="little">'+list[k][k1].schedular_name+'</p>' + 
                            '<p class="time">'+ dateFormat.dateFormat('Y.m.d H:i', list[k][k1].show_time) + '</p>' + 
                            '<p class="adress">'+list[k][k1].venue_name+'</p>' + 
                            '<p class="price-new">'+ tyingLabel +'<span class="price-old">'+tyingPriceLabel+'</span></p>' +
                            '</div>' + 
                            
                        '</a>'+
                        '<p class="ardd"></p>' + 
                    '</li>';
            setItemArr.push(item);
            newTotalPrice      += newPrice;
            originalTotalPrice += originalPrice;
            
            liCount++;

            var ticketStock = parseInt(list[k][k1].ticket_stock),
                itemNum     = parseInt(list[k][k1].num),
                tyingStock  = parseInt(list[k][k1].tying_stock);

            if(tyingStock < itemNum || ticketStock < itemNum)
            {
                shopBtnTxt = '已售罄';
                shopBtnClass = 'btn-ban';
            }

            if (isCurrentAbolish) 
            {
                shopBtnTxt = '已售罄';
                shopBtnClass = 'btn-ban';
            }
        }
        setItems = setItemArr.join('');
        var display = '';
        if (n>1)
        {
            display = 'style="display:none;"';
        }
        
        var prevBtn = '<a class="prev" href="javascript:;"></a>';
        var nextBtn = '<a class="next" href="javascript:;"></a>';
        if(liCount < 3)
        {
            prevBtn = '<a style="visibility:hidden" class="prev" href="javascript:;"></a>';
            nextBtn = '<a style="visibility:hidden" class="next" href="javascript:;"></a>';
        }
        
        set += '<div '+display+' class="Pbox sale-package-set-box">'+
                    '<div class="packbox">'+
                    prevBtn+
                        '<div class="hidebox">'+
                            '<ul class="on-show">'+
                                setItems+
                            '</ul>'+
                        '</div>'+
                        nextBtn+
                        '<div class="adprice">'+
                            '<h3>套餐价格<span>￥'+list[k][k1].tying_price+'</span></h3>'+
                            '<p class="old-price">原价：<span>￥'+list[k][k1].price_num+'</span></p>'+
                            '<p class="lastp">立即节省:￥'+parseFloat((list[k][k1].price_num-list[k][k1].tying_price).toFixed(2))+'</p>'+
                            '<a class="btn no-unl bg-fe5d36 buy-sale-package-btn '+shopBtnClass+'" data-is-abolish="'+ isCurrentAbolish +'" sale_package_id="'+k+'" href="javascript:;">'+shopBtnTxt+'</a>'+
                        '</div>'+
                    '</div>'+
                '</div>';
        n++;
    }

    return {tabs:tabs,set:set};       
}

//获取评分
(function(){
    $.ajax({
            type:'POST',
            url:getScheAvgScoreUrl,
            data:{scid:currentScid},
            dataType:'json',
            success:function(result)
            {
                if (result.code=='ok')
                {
                    var html = scheAvgScoreHtmlFactory(result.data);

                    $('.avg-score-wrap').html(html);
                    var avgScore  = result.data.avgScore;;
                    //由于父级节点宽度不为116px不方便采用百分比，改为下面的px方式
                    //var widthRate = (parseInt(avgScore/2))*(4/116)+(avgScore*10);//4为星星之间的间隔，116为图片宽度
                    //$('.avg-score-rate').css('width',widthRate+'%');

                    var widthRate = (parseInt(avgScore/2))*4 + ((avgScore/10) * (20*5));//4为星星之间的间隔，20为每颗星的宽度
                    $('.avg-score-rate').css('width',widthRate+'px');
                }
                
            }
        });
}());


//获取所有排期库存情况
(function(){
    $.ajax({
            type:'POST',
            url:getTicketsByScidsUrl,
            data:{scids:allScheIds},
            dataType:'json',
            success:function(result)
            {
                if (result.code=='ok')
                {
                    $('.schedular-list-box ul li a').each(function(){
                        var scid = $(this).attr('schedular_id');
                        if (!result.data[scid])
                        {
                            $(this).addClass('unable-tag');
                        }
                    });
                }
                
            }
        });
}());

function scheAvgScoreHtmlFactory(data)
{
    var html = data.avgScoreHead+'<span>.'+data.avgScoreFoot+'</span>';
    return html;       
}

//获取看了又看
(function(){
    return;//新需求已取消此功能，暂时return
    //屏蔽当前演出排期
    var noshowId = currentSid;
    $.ajax({
            type:'POST',
            url:getWatchedOverAgainUrl,
            data:{cityId:cityId,cate1Id:cate1Id,noshowId:noshowId},
            dataType:'json',
            success:function(result)
            {
                if (result.code=='ok')
                {
                    var html = '';
                    var list = result.data;
                    if (list.length<=0)
                    {
                        return;
                    }
                    html = WatchedOverAgainHtmlFactory(list);

                    $('.watched-over-again-box').html(html);
                }
                
            }
        });
}());


function WatchedOverAgainHtmlFactory(list)
{
    var html = '';

    for(var k in list)
    {
        html += '<li>'+
                    '<a class="img" target="_blank" href="/'+list[k].id+'">'+
                        '<img width="144" height="160" src="'+imgDomain+list[k].pic+'" alt="'+list[k].schedular_name+'" title="'+list[k].schedular_name+'">'+
                    '</a>'+
                    '<p class="name"><a target="_blank" href="/'+list[k].id+'">'+list[k].schedular_name+'</a></p>'+
                    '<div class="info">'+(list[k].min_price ? '<span class="price">￥'+parseFloat(list[k].min_price)+'</span>起':'票价待定')+'</div>'+
                '</li>';
    }

    return html;       
}

//获取巡演数据
(function(){
    $.ajax({
            type:'POST',
            url:getTourShowUrl,
            data:{sid:currentSid},
            dataType:'json',
            success:function(result)
            {
                if (result.code=='ok')
                {
                    var html = '';
                    var list = result.data;
                    if (list.length<=1)
                    {
                        return;
                    }
                    html = TourShowHtmlFactory(list);

                    $('.tour-show-box ul').html(html);
                    $('.tour-show-box').show();
                    if (list.length<=5)
                    {
                        $('.tour-show-box .bmore').hide();
                    }
                }
                
            }
        });
}());


function TourShowHtmlFactory(list)
{
    var html = '';

    for(var k in list)
    {
        if (!list.hasOwnProperty(k))
        {
            continue;
        }

        var active  = '',
            overdue = '',
            href = '/'+list[k].id;
        if (list[k].id == currentScid)
        {
            active = 'active';
            href   = 'javascript:void(0)';
            Ahtml  = '<a onclick="return false" target="_blank" href="'+href+'">';
        }
        else
        {
            Ahtml = '<a target="_blank" href="'+href+'">';
        }
        if (list[k].show_time <= time)
        {
            overdue = 'overdue';
        }
        html += '<li class="'+active+' '+overdue+'">'+Ahtml+
                        '<span class="line"></span>'+
                        '<span class="sact"></span>'+
                        '<span class="city">'+list[k].city_name+'</span>'+
                        '<span class="time">'+dateFormat.dateFormat('Y.m.d',list[k].show_time)+'</span>'+
                    '</a>'+
                '</li>';
    }

    return html;       
}


//获取主创团体数据
(function(){
    $.ajax({
            type:'POST',
            url:getStarInfoUrl,
            data:{sid:currentSid},
            dataType:'json',
            success:function(result)
            {
                if (result.code=='ok')
                {
                    var html = '';
                    var list = result.data;
                    if (list.length<=0)
                    {
                        return;
                    }
                    html = StarInfoHtmlFactory(list);

                    $('.star-info-box').append(html).show();
                }
                
            }
        });
}());


function StarInfoHtmlFactory(list)
{
    var html = '';

    for(var k in list)
    {
        if (!list.hasOwnProperty(k))
        {
            continue;
        }
        html += '<div class="team">'+
                    '<div class="tlogo">'+
                        '<a target="_blank" href="'+starDomain+'show/'+list[k].id+'"><span><img width="90" height="90" src="'+imgDomain+list[k].pic+'"></span></a>'+
                        '<p><a target="_blank" href="'+starDomain+'show/'+list[k].id+'">'+list[k].cn_name+'</p></a>'+
                    '</div>'+
                    '<div class="team-right">'+
                        '<p><span>'+list[k].total+'</span>场演出</p>'+
                        '<a target="_blank" href="'+starDomain+'show/'+list[k].id+'">查看>></a>'+
                        //<!-- <a href="javascript:;"><img src="http://basic.juooo.cn:801/Home/web/images/details/diny.png"></a> -->
                    '</div>'+
                '</div>';
    }

    return html;       
}


//判断是否支持部分积分兑换
function isSupportPartScoreExch(data){
	$.ajax({
        type:'POST',
        url:isSupportPartScoreExchUrl,
        data:data,
        dataType:'json',
        success:function(result)
        {
            if (result.code=='ok')
            {
                $('.part-score-exch-tag').removeClass('hide-tag').show();
                
            }else if(result.code=='fail'){
            	$('.part-score-exch-tag').addClass('hide-tag').hide();
            }
            //checkAndSetSupport();
            checkSupportTag();
        },
        error:function()
        {
            //checkAndSetSupport()
        }
    });
}



//获取热门专题
$.ajax({
    type:'POST',
    url:getHotTopicUrl,
    data:{sid:currentSid},
    dataType:'json',
    success:function(result)
    {
       if (result.code=='ok')
      {
    	   if(result.data == null){
    		   return false;
    	   }
    	   
            if (result.data.pic || result.data.url || result.data.name)
            {
                $('.hot-topic img').attr('src',imgDomain+result.data.pic);
                if (result.data.url)
                {
                    $('.hot-topic a').attr('href',result.data.url);
                }                
                $('.hot-topic ul li a').text(result.data.name);
                $('.hot-topic').show();
            }

        }
    }
});

//获取场馆数据
(function(){
    $.ajax({
            type:'POST',
            url:getVenueInfoUrl,
            data:{vid:venueId},
            dataType:'json',
            success:function(result)
            {
                if (result.code=='ok')
                {
                    html = VenueInfoHtmlFactory(result.data);

                    $('.venue-info-box').html(html);
                    $('.venue-info-block').show();
                    $('.main-info-venue .venue-name').text(result.data.name);
                    
                }
                
            }
        });
}());


function VenueInfoHtmlFactory(data)
{
    if(data.tel)
    {
        var telHtml ='<p class="tell"><span></span>'+(data.tel||'')+'</p>';
    }
    else
    {
        var telHtml = '';
    }
    var html =  '<span class="img" style="height:219px;"><a target=_blank href="'+venueDomain+'show/'+data.id+'"><img src="'+imgDomain+data.pic+'" width="219" height="219"></a></span>'+
                '<ul>'+
                    '<li><a target=_blank href="'+venueDomain+'show/'+data.id+'">'+data.name+'</a></li>'+
                '</ul>'+
                (data.address ? '<p class="adres"><span></span><a class="news-right">'+data.address+'</a></p>' : '')+
                telHtml+    
                (data.bus ? '<p class="transit"><span></span><a class="news-right">'+data.bus+'</a></p>' : '');

    return html;       
}

//获取剧照
(function(){
    $.ajax({
            type:'POST',
            url:getGallerysUrl,
            data:{sid:currentSid},
            dataType:'json',
            success:function(result)
            {
                if (result.code=='ok')
                {
                    var html = [];
                    var list = result.data;
                    if (list.length<=0)
                    {
                        return;
                    }
                    html = galleryHtmlFactory(list);

                    $('.gallerys-box ul').html(html);
                    $('.slidebox ul').html(html);
                    //$('.js-tabbar ul li').eq(3).find('.num').html('('+list.length+')');
                    $('.js-tabbar ul li.js-tab-photo').find('.num').html('('+list.length+')');
                    // 剧照播放
                    $(function(){
                        var li_index,
                            num = $('.stills li').length,
                            $oli = $('.slidebox li');
                        $('.stills').on('click','li',function(){
                            li_index = $(this).index();
                            $('.bg, .slidebox').css('display','block');
                            $oli.eq(li_index).addClass('on-show');
                            $('.s-page .zong').text(num);
                            $('.s-page .num').text(li_index+1);
                        });

                        $('.slidebox .prev').on('click',function(){
                            li_index = $('.slidebox .on-show').index();
                            $oli.removeClass('on-show');
                            if(li_index == 0){
                                $oli.eq($oli.length - 1).addClass('on-show');
                                $('.s-page .num').text(num);
                            }else{
                                $oli.eq(li_index - 1).addClass('on-show');
                                $('.s-page .num').text(li_index);
                            }
                        });

                        $('.slidebox .next').on('click',function(){
                            li_index = $('.slidebox .on-show').index();
                            $oli.removeClass('on-show');
                            if(li_index == $oli.length - 1){
                                $oli.eq(0).addClass('on-show');
                                $('.s-page .num').text(1);
                            }else{
                                $oli.eq(li_index + 1).addClass('on-show');
                                $('.s-page .num').text(li_index+2);
                            }
                        });

                        $('.slidebox .delete').on('click',function(){
                            $oli.removeClass('on-show');
                            $('.bg, .slidebox').css('display','none');
                        });
                    })
                    
                }
                
            }
        });
}());


function galleryHtmlFactory(list)
{
    var html = '';

    for(var k in list)
    {
        if (!list.hasOwnProperty(k))
        {
            continue;
        }

        html += '<li>'+
                    '<a href="javascript:;"><img src="'+imgDomain+list[k].img_url+'"></a>'+
                '</li>';
    }

    return html;       
}

var pageOptions = 
{
    siteBtnNum:2,
    ajaxDataUrl:'',
    //data:commentStaticData,
    pageListContainer:$('.comment-list-box')[0],
    pageToolContainer:$('#page_tool_wrap')[0],
    perPageNum:10,
    ajaxDataCallback:function(pageObj,page)
    {
        $.ajax({
            type:'POST',
            url:getCommentsUrl,
            data:{page:page,scid:currentScid},
            dataType:'json',
            success:function(result)
            {
                if (result.code=='ok')
                {
                    pageObj.onAjaxDataDone({list:result.data.list,boughtData:result.boughtData},result['data']['total'],page);
                    //$('.js-tabbar ul li').eq(1).find('.num').html('('+result['data']['total']+')');
                    $('.js-tabbar ul li.js-tab-comment').find('.num').html('('+result['data']['total']+')');
                }                    
            }
        });            
    },
    listItemFactory:function(data)
    {
        var html = commentItemHtmlFactory(data.list,data.boughtData);
        return html;
    }
};
var page = new Page(pageOptions);

//获取资讯
(function(){
    $.ajax({
            type:'POST',
            url:getNewsUrl,
            data:{sid:currentSid},
            dataType:'json',
            success:function(result)
            {
                if (result.code=='ok')
                {
                    var html = {};
                    var data = result.data;
                    if(data.length <= 0 )
                    {
                        return;
                    }
                    html = NewsItemHtmlFactory(data);
                    if (html.leftNewsHtml)
                    {
                        $('.news-block .information').html(html.leftNewsHtml);
                        $('.news-block').show();
                    }
                    
                    $('.news-tab').html(html.totalListHtml);

                    //$('.js-tabbar ul li').eq(2).find('.num').html('('+data.newsTotal+')');
                    $('.js-tabbar ul li.js-tab-news').find('.num').html('('+data.newsTotal+')');
                    
                }
                else{

                }
                
            }
        });
}());


function NewsItemHtmlFactory(data)
{
    var html          = '',
        leftNewsHtml  = '',
        totalListHtml = '';


    leftNewsHtml += '<a target="_blank" href="'+homeDomain+'news/show/'+data.leftNews.top.id+'"><span class="img"><img src="'+imgDomain+data.leftNews.top.image+'"></span></a>';

    leftNewsHtml += '<ul>'+
                        '<li><a target="_blank" href="'+homeDomain+'news/show/'+data.leftNews.top.id+'">'+data.leftNews.top.title+'</a></li>';
    var list = data.leftNews.list;
    for(var k in list)
    {
        if (!list.hasOwnProperty(k))
        {
            continue;
        }
        leftNewsHtml += '<li><a target="_blank" href="'+homeDomain+'news/show/'+list[k].id+'"> &nbsp; · &nbsp;'+list[k].title+'</a></li>';
    }
    leftNewsHtml += '</ul>';


    var tempList = data.totalList;
    list = [];
    var listKey = [];
    //先倒序
    for(var k in tempList)
    {
        list.push(tempList[k]);
        listKey.push(k);
    }

    list.reverse();
    listKey.reverse();

    for(var k in list)
    {
        if (!list.hasOwnProperty(k))
        {
            continue;
        }
        totalListHtml += '<div class="items">'+
                            '<div class="date"><sup>'+listKey[k].substr(4,2)+'</sup><sub>'+listKey[k].substr(0,4)+'</sub></div>'+
                            '<div class="date-right">';

                            var list1 = list[k];
                            for(var k1 in list1)
                            {
                                if (!list.hasOwnProperty(k) || k1=='indexOf')
                                {
                                    continue;
                                }
                                totalListHtml += '<div class="info ">'+
                                                    '<div class="tit"><a target="_blank" title="" href="'+homeDomain+'news/show/'+list1[k1].id+'">'+list1[k1].title+'</a></div>'+
                                                    '<div class="content">'+list1[k1].description+' <a target="_blank" href="'+homeDomain+'news/show/'+list1[k1].id+'">详情<i>>></i></a></div>'+
                                                '</div>';
                            }
        totalListHtml += '</div>'+
                        '</div>';
    }

    return {leftNewsHtml:leftNewsHtml,totalListHtml:totalListHtml};       
}

(function(){
    var yearCardSelectDialog = document.getElementById("yearCardSelectTemplate").innerHTML;
    $('body').append(yearCardSelectDialog);
         
    var params = {
        title:'请选择要使用的欢聚橙卡',
        content:$('.year-card-select-dialog-model').html(),
        width:1000,
        okBtnCallback:function(index){},
    }
    //Dialog.alert(params);


    //欢聚橙卡弹窗里的选择
    $(document).on('click','.js-year-card-list ul li',function(){
        $(this).siblings().removeClass('active');
        $(this).addClass('active');
    });

}());



//由于支持图标有异步请求形式的需要回调检测是否有支持的图标，没有就隐藏支持那行
function checkAndSetSupport()
{
    if ( ($('.support .ct .tag').length<=0) || ($('.support .ct .hide-tag').length >= $('.support .ct .tag').length) )
    {
        $('.gInfo .support').hide();
    }
}

function getAdvertInfo(scid,symbol)
{   
    //详情页小图广告
    $.ajax({
        type:'POST',
        url:systemData.getAdvertUrl,
        dataType:'jsonp',
        data:
            {
                scid   : scid,
                symbol : symbol,
                ajax_type : 'jsonp',
            },
        jsonp:'callback',
        async:false,
        success:function(result)
        {  
            var advertInfo = '';
            if(result.code == 1 && result.data)
            {
                advertInfo += '<a target="_blank" style="text-align:center;display: block;margin-top:0px;margin-bottom:10px;"';
                advertInfo += 'href="' + result.data.url + '">';
                advertInfo += '<img style="width:240px;heihgt:112px;"';
                advertInfo += 'src="' + imgDomain + result.data.pic + '" title="' + result.data.ad_name + '" alt="' + result.data.ad_name + '" >';
                advertInfo += '</a>';
            }
            $(".min-advert").append(advertInfo);
        }
    });
}


//学生票   2017.7.10
//获取已选学生票张数
function getStudentNum(){
    var studentNum = 0;
    $('.is-student-ticket').each(function(){
        studentNum += parseInt($(this).find('.ipt-num').val());
    });
    return studentNum;
}
//获取青年票张数
function getYoungNum(){
    var Num = 0;
    $(".dleft").find('.is-Young-ticket').each(function(){
        Num += parseInt($(this).find('.ipt-num').val());
    });
    return Num;
}
//已选则的票价中是否包含学生票
function isSelectStudent(){
    var studentFlag = 0;
    $('.selected-tickets li').each(function(){
        if($(this).hasClass('is-student-ticket')){
            studentFlag = 1;
        }
    });
    
    return studentFlag;
}
//已选则的票价中是否包含青年票
function isSelectYoung(){
    var youngFlag = 0;
    $('.selected-tickets li').each(function(){
        if($(this).hasClass('is-Young-ticket')){
            youngFlag = 1;
        }
    });
    return youngFlag;
}
//学生票 登录按钮
$(".login-btn").on('click', function(){
    login.init();
});
//青年票不在提示
$(".js-notice").on('click', function(){
    that = this;
    $.ajax({
        url:'/Index/limitNotice',
        type:'post',
        dataType:'json',
        data:{},
        success:function (res) {
            if(res.code == 200){
                $(that).parents('.code-content').remove();
            }
        }
    })
});

});