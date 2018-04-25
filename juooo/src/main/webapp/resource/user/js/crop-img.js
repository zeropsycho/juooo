/*
* @Author: dengkai
* @Date:   2016-07-12 16:42:37
* @Last Modified by:   dengkai
* @Last Modified time: 2016-07-28 10:55:30
*/

'use strict';
var count = 0;
$(function() {
    $("#upload-file").change(function() {
        var $file = $(this),
            fileObj = $file[0],
            windowURL = window.URL || window.webkitURL,
            dataURL,
            html;
        count = 0;
        $("#target").html('');
        html = '<img id="preview">';
        $("#target").append(html);
        var $img = $("#preview");
        if (fileObj && fileObj.files && fileObj.files[0]) {
            dataURL = windowURL.createObjectURL(fileObj.files[0]);
            $img.attr('src', dataURL);
            $('.preview-container img').attr('src', dataURL);
        } else {
            // dataURL = $file.val();
            // var imgObj = document.getElementById("preview");
            // imgObj.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
            // imgObj.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = dataURL;
            var file_upl = document.getElementById('upload-file');
            file_upl.select();
            file_upl.blur();
            var dataURL = document.selection.createRange().text;
            var imgObj = document.getElementById("preview");
            imgObj.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
            imgObj.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = dataURL;
            for (var i = 0; i < $('.preview-container img').length; i++) {
                $('.preview-container img')[i].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
                $('.preview-container img')[i].filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = dataURL;
            }
        }
        var _Jw = ($("#target").width() - 120) / 2,
            _Jh = ($("#target").height() - 120) / 2,
            _Jw2 = _Jw + 120,
            _Jh2 = _Jh + 120;

        $('#target').Jcrop({
            setSelect: [_Jw, _Jh, _Jw2, _Jh2],
            onChange: showPreview,
            onSelect: showPreview,
            bgFade: true,
            bgColor: "white",
            bgOpacity: .5
        });
    });
});

$(function() {
    //默认图像居中显示
    cutImage($(".jcrop-w>img"));
    $("#idLeft").click(function(e) {
        imgRotate(-90);
        return false;
    });
    $("#idRight").click(function(e) {
        imgRotate(90);
        return false;
    });
    $("#idBig").click(function(e) {
        if($('#preview').attr('src') == '') return;
        if(count >= 10) return;
        count++;
        imgToSize(20);
        return false;
    });
    $("#idSmall").click(function(e) {
        if($('#preview').attr('src') == '') return;
        if(count <= -10) return;
        count--;
        imgToSize(-20);
        return false;
    });
});
//图片旋转
function imgRotate(deg) {
    var img1 = $(".jcrop-w>img"),
        _data = parseInt($(".jc-demo-box").attr("data"));
    if (!$.support.leadingWhitespace) {
        var sin = Math.sin(Math.PI / 180 * (_data + deg)),
            cos = Math.cos(Math.PI / 180 * (_data + deg));
        var _filter = "progid:DXImageTransform.Microsoft.Matrix(M11=" + cos + "," + "M12=" + (-sin) + ",M21=" + sin + ",M22=" + cos + ",SizingMethod='auto expand')";
        img1.css({
            filter: _filter
        });
        $('.pre-1 img,.pre-2 img,.pre-3 img').css({
            filter: _filter
        });

    } else {
        var _deg = deg + _data;
        var _val = "rotate(" + _deg + "deg)";
        img1.css({
            "-webkit-transform": _val,
            "-moz-transform": _val,
            "-ms-transform": _val,
            "-o-transform": _val,
            "transform": _val
        });
        $('.pre-1 img,.pre-2 img,.pre-3 img').css({
            "-webkit-transform": _val,
            "-moz-transform": _val,
            "-ms-transform": _val,
            "-o-transform": _val,
            "transform": _val
        });
    }

    var fiw = $('.jcrop-w>img').width(),
        fih = $('.jcrop-w>img').height(),
        ow = Math.floor((300 - fiw) / 2),
        oh = Math.floor((300 - fih) / 2),
        cx = $("#small").position().left,
        cy = $("#small").position().top,
        rx = 120 / $("#small").width(),
        ry = 120 / $("#small").height(),
        rx1 = 48 / $("#small").width(),
        ry1 = 48 / $("#small").height(),
        rx2 = 20 / $("#small").width(),
        ry2 = 20 / $("#small").height();



    if (!$.support.leadingWhitespace) {
        pre_img2($('.pre-1 img'), rx, fih, ry, fiw, cx, cy, ow, oh);
        pre_img2($('.pre-2 img'), rx1, fih, ry1, fiw, cx, cy, ow, oh);
        pre_img2($('.pre-3 img'), rx2, fih, ry2, fiw, cx, cy, ow, oh);
    } else {
        pre_img2($('.pre-1 img'), rx, fiw, ry, fih, cx, cy, ow, oh);
        pre_img2($('.pre-2 img'), rx1, fiw, ry1, fih, cx, cy, ow, oh);
        pre_img2($('.pre-3 img'), rx2, fiw, ry2, fih, cx, cy, ow, oh);
    }

    $(".jcrop-w img").css({
        left: ow,
        top: oh
    });

    if (deg > 0) {
        if (_data == 270) {
            _data = 0;
        } else {
            _data = _data + 90;
        }
    } else {
        if (_data == 0) {
            _data = 270;
        } else {
            _data = _data - 90;
        }
    }
    $("#d").val(_data);
    $(".jc-demo-box").attr("data", _data);
}

//放大缩小图片
function imgToSize(size) {
    var iw = $('.jcrop-w>img').width(),
        ih = $('.jcrop-w>img').height(),
        _data = $(".jc-demo-box").attr("data"),
        _w = Math.round(iw + size),
        _h = Math.round(((iw + size) * ih) / iw);

    if ((!$.support.leadingWhitespace) && (_data == 90 || _data == 270)) {
        $('.jcrop-w>img').width(_h).height(_w);
    } else {
        $('.jcrop-w>img').width(_w).height(_h);
    }

    var fiw = $('.jcrop-w>img').width(),
        fih = $('.jcrop-w>img').height(),
        ow = (300 - fiw) / 2,
        oh = (300 - fih) / 2,
        cx = $("#small").position().left,
        cy = $("#small").position().top,
        rx = 120 / $("#small").width(),
        ry = 120 / $("#small").height(),
        rx1 = 48 / $("#small").width(),
        ry1 = 48 / $("#small").height(),
        rx2 = 20 / $("#small").width(),
        ry2 = 20 / $("#small").height();

    if ((!$.support.leadingWhitespace) && (_data == 90 || _data == 270)) {
        pre_img2($('.pre-1 img'), rx, fih, ry, fiw, cx, cy, ow, oh);
        pre_img2($('.pre-2 img'), rx1, fih, ry1, fiw, cx, cy, ow, oh);
        pre_img2($('.pre-3 img'), rx2, fih, ry2, fiw, cx, cy, ow, oh);
    } else {
        pre_img2($('.pre-1 img'), rx, fiw, ry, fih, cx, cy, ow, oh);
        pre_img2($('.pre-2 img'), rx1, fiw, ry1, fih, cx, cy, ow, oh);
        pre_img2($('.pre-3 img'), rx2, fiw, ry2, fih, cx, cy, ow, oh);
    }
    $(".jcrop-w img").css({
        left: ow,
        top: oh
    });

};

//
function pre_img2(obj, rx, iw, ry, ih, cx, cy, ow, oh) {
    obj.css({
        width: Math.round(rx * iw) + 'px',
        height: Math.round(ry * ih) + 'px'
    });
    if (cy >= oh && cx >= ow) {
        obj.css({
            marginLeft: '-' + Math.round(rx * (cx - ow)) + 'px',
            marginTop: '-' + Math.round(ry * (cy - oh)) + 'px'
        });
    } else if (cy <= oh && cx >= ow) {
        obj.css({
            marginLeft: "-" + Math.round(rx * (cx - ow)) + 'px',
            marginTop: Math.round(ry * (oh - cy)) + 'px'
        });
    } else if (cy >= oh && cx <= ow) {
        obj.css({
            marginLeft: Math.round(rx * (ow - cx)) + 'px',
            marginTop: '-' + Math.round(ry * (cy - oh)) + 'px'
        });
    } else if (cy <= oh && cx <= ow) {
        obj.css({
            marginLeft: Math.round(rx * (ow - cx)) + 'px',
            marginTop: Math.round(ry * (oh - cy)) + 'px'
        });
    }

};
//默认图像位置
function cutImage(obj) {
    var w = 300,
        h = 300,
        iw = obj.width(),
        ih = obj.height();
    if (iw > w || ih > h) {
        if (iw / ih > w / h) {
            obj.css({
                width: w,
                height: w * ih / iw,
                top: (h - (w * ih / iw)) / 2,
                left: 0
            });
        } else {
            obj.css({
                height: h,
                width: h * iw / ih,
                top: 0,
                left: (w - (h * iw / ih)) / 2
            });
        }
    } else {
        obj.css({
            left: (w - iw) / 2,
            top: (h - ih) / 2
        });
    }
}

function showPreview(c) {
    var iw = $('.jcrop-w>img').width(),
        ih = $('.jcrop-w>img').height(),
        ow = (300 - iw) / 2,
        oh = (300 - ih) / 2,
        rx = 120 / c.w,
        ry = 120 / c.h,
        rx1 = 48 / c.w,
        ry1 = 48 / c.h,
        rx2 = 20 / c.w,
        ry2 = 20 / c.h,
        _data = $(".jc-demo-box").attr("data");

    // if((!$.support.leadingWhitespace) && (_data == 90 || _data == 270)){
    //     pre_img2($('.pre-1 img'), rx, ih, ry, iw, c.x, c.y, ow, oh);
    //     pre_img2($('.pre-2 img'), rx1, ih, ry1, iw, c.x, c.y, ow, oh);
    //     pre_img2($('.pre-3 img'), rx2, ih, ry2, iw, c.x, c.y, ow, oh);
    // }else{
    pre_img2($('.pre-1 img'), rx, iw, ry, ih, c.x, c.y, ow, oh);
    pre_img2($('.pre-2 img'), rx1, iw, ry1, ih, c.x, c.y, ow, oh);
    pre_img2($('.pre-3 img'), rx2, iw, ry2, ih, c.x, c.y, ow, oh);
    // }
    $('#x').val(c.x);
    $('#y').val(c.y);
    $('#w').val(c.w);
    $('#h').val(c.h);
}