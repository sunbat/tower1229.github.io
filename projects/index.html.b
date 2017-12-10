<!doctype html>
<html lang="zh-cn">

<head>
    <meta charset="utf-8">
    <title>前端作品 | 前端路上</title>
    <meta content="雅X共赏,前端路上,前端作品" name="Keywords">
    <meta content="雅X共赏前端作品展示" name="Description">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <meta name="renderer" content="webkit">
    <link href="./asset/ui.css" rel="stylesheet">
    <style>
        /* mystyle */
@font-face {
    font-family: 'Consolas';
    src: url('asset/consola.woff') format('woff'),
         url('asset/consola.ttf') format('truetype');
    font-weight: normal;
    font-style: normal;
}
html,body{height: 100%;}
.full{position: absolute;z-index: 1;top: 0;left: 0;width: 100%;height: 100%;filter: blur(10px);}
.bg{background: url(./asset/img2.jpg) no-repeat;}

.contain{position: relative;z-index: 2;height: 100%;}
.card{height: 400px;height: 38.2vh;margin: 20px;transition: all ease 1s;text-align: center;color: #eee;box-shadow: 0 0 12px rgba(0, 0, 0, .3);}
.card p{transition: opacity ease 1s;opacity: 0;color: rgba(0, 0, 0, .6);}
.card .url{font-family: tahoma;visibility: hidden;margin-bottom: -2em;transition: opacity ease 1s;opacity: 0;color: rgba(0, 0, 0, .5);}
.card .check:checked + .url{visibility: visible;opacity: 1;}
.card:hover{color: #fff;box-shadow: 0 0 24px rgba(0, 0, 0, .5);}
.card:hover p{opacity: 1;}

.codepen{position: absolute;left: 0;width:100%;bottom:0;z-index: 3; text-align: center;overflow: hidden;}
.codepen li{ display: inline-block;width:3em;height: 3em;overflow: hidden;line-height: 3em;border-radius: 50%;background:#f0de50;color:#fff;
margin:.5em;user-select:none;font-size: 18px;font-family: "Consolas", serif;}
.codepen li a{display: block;}
.codepen ._toggle{background:url(asset/codepoet.png) center no-repeat #ddd;background-size:contain; position: relative;cursor: pointer;}

.codepen ._code{}
@media only screen and (max-device-width: 1200px ) {
    .wrap{padding-left:2%;padding-right:2%;width: auto;min-width: 0; padding-top: 50px;padding-bottom: 50px;overflow-y: auto;box-sizing: border-box;}
    .card{min-width: 320px;}
}
    </style>
    <script>
        var _hmt = _hmt || [];
        (function() {
          var hm = document.createElement("script");
          hm.src = "https://hm.baidu.com/hm.js?f10103677155b485824f29def715eb5d";
          var s = document.getElementsByTagName("script")[0]; 
          s.parentNode.insertBefore(hm, s);
        })();
    </script>
</head>

<body style="min-width: 0">
    <div class="bg full">
        <h1 class="hide">雅X共赏前端作品展示</h1>
    </div>
    <h2 class="hide">前端作品</h2>
    <ul class="codepen">
        <li class="_toggle" title="返回首页">
            <a href="/" title="前端技术博客" style="opacity: 0">refined-x</a>
        </li>
        <li class="_code">
            <a href="codes/startmenu.html" title="HTML5拖拽布局">drag</a>
        </li>
        <li class="_code">
            <a href="codes/snake.html" title="贪吃蛇游戏">snake</a>
        </li>
        <li class="_code">
            <a href="codes/tracking.html" title="人脸识别-提取-合成">tracking</a>
        </li>
    </ul>
    <div class="contain">
        <h2 class="hide">开源项目</h2>
        <div class="flex-row align-center flex-wrap wrap" style="height: 100%;">
                <a href="http://refined-x.com/Flow-UI/" target="_blank" class="flex-1 card bg flex-col justify-center">
                    <h3>Flow-UI</h3>
                    <p>轻量级的前端UI框架</p>
                </a>
                <a href="http://refined-x.com/Flow-CLI/" target="_blank" class="flex-1 card bg flex-col justify-center">
                    <h3>Flow-CLI</h3>
                    <p>基于Nodejs的前端自动化工具</p>
                </a>
                <a href="http://refined-x.com/WidgetsPlayground/" target="_blank" class="flex-1 card bg flex-col justify-center">
                    <h3>WidgetsPlayground</h3>
                    <p>前端组件开发平台</p>
                </a>
                <a href="http://refined-x.com/HybridStart/" target="_blank" class="flex-1 card bg flex-col justify-center">
                    <h3>HybridStart</h3>
                    <p>混合应用开发框架</p>
                </a>
        </div>
    </div>

    <script src="./asset/sea.js" id="seajsnode"></script>
    <script>
    seajs.config({
        base: "http://static-zt.oss-cn-qingdao.aliyuncs.com/modules",
        alias: {
            "audio": "audio/audio",
            "copy": "copy/ZeroClipboard",
            "flv": "flv/flv",
            "hook": "hook/hook",
            "jquery": "jquery/1/jquery",
            "validform": "validform/validform",
            "My97DatePicker": "My97DatePicker/WdatePicker",
            "raty": "raty/raty",
            "upload": "upload/upload",
            "makethumb": "upload/makethumb",
            "localResizeIMG": "upload/localResizeIMG",
            "video": "video/video",
            "webuploader": "webuploader/webuploader"
        },
        localcache: {
            timeout: 2e4
        }
    });
    </script>
    <script>
    define('demo', function(require) {
        var $ = require('jquery');
        var base = require('base');
        if(base.browser.ie<10){
            require.async('box',function(){
                $.box.alert('推荐使用Chrome浏览器');
            });
        }
        var setbg = function() {
            var requestAnimationFrame = window.requestAnimationFrame || function(cb) {
                setTimeout(cb, 0);
            };
            $('.card').each(function(i, e) {
                var offset = $(e).offset();
                var style = '-' + offset.left + 'px -' + offset.top + 'px';
                requestAnimationFrame(function() {
                    $(e).get(0).style.backgroundPosition = style;
                });
            });
        };
        require.async('img-ready',function(ready){
            ready('./asset/img2.jpg',function(){},setbg);
        });
        $(window).on('resize', setbg);
        
    });
    seajs.use('demo');
    </script>
    <script type="text/javascript" src="//push.zhanzhang.baidu.com/push.js"></script>

</body>

</html>
