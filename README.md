<!DOCTYPE html>
<!--[if IE 6]><html class="ie lt-ie8"><![endif]-->
<!--[if IE 7]><html class="ie lt-ie8"><![endif]-->
<!--[if IE 8]><html class="ie ie8"><![endif]-->
<!--[if IE 9]><html class="ie ie9"><![endif]-->
<!--[if !IE]><!--> <html> <!--<![endif]-->

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0,user-scalable=no">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
    <meta name="description"  content="简单自定制各种酷炫点击效果效果图：GitHub地址：github.com/HuangGY1993/GYTableView">
  <meta property="wb:webmaster" content="294ec9de89e7fadb" />
  <meta property="qc:admins" content="104102651453316562112116375" />
  <meta property="qc:admins" content="11635613706305617" />
  <meta property="qc:admins" content="1163561616621163056375" />
  <meta name="google-site-verification" content="cV4-qkUJZR6gmFeajx_UyPe47GW9vY6cnCrYtCHYNh4" />
  <meta name="google-site-verification" content="HF7lfF8YEGs1qtCE-kPml8Z469e2RHhGajy6JPVy5XI" />
  <meta http-equiv="mobile-agent" content="format=html5; url=http://www.jianshu.com/p/7f21f7511f0a">
    <!--  Meta for Smart App Banner -->
  <meta name="apple-itunes-app" content="app-id=888237539, app-argument=jianshu://notes/5222508">
  <!-- End -->

  <!--  Meta for Twitter Card -->
  <meta content="summary" property="twitter:card">
  <meta content="@jianshucom" property="twitter:site">
  <meta content="自定义UITableView点击动画效果" property="twitter:title">
  <meta content="简单自定制各种酷炫点击效果效果图：GitHub地址：github.com/HuangGY1993/GYTableView" property="twitter:description">
  <meta content="http://www.jianshu.com/p/7f21f7511f0a" property="twitter:url">
  <!-- End -->

  <!--  Meta for OpenGraph -->
  <meta property="fb:app_id" content="865829053512461">
  <meta property="og:site_name" content="简书">
  <meta property="og:title" content="自定义UITableView点击动画效果">
  <meta property="og:type" content="article">
  <meta property="og:url" content="http://www.jianshu.com/p/7f21f7511f0a">
  <meta property="og:description" content="简单自定制各种酷炫点击效果效果图：GitHub地址：github.com/HuangGY1993/GYTableView">
  <!-- End -->

  <!--  Meta for Facebook Applinks -->
  <meta property="al:ios:url" content="jianshu://notes/5222508" />
  <meta property="al:ios:app_store_id" content="888237539" />
  <meta property="al:ios:app_name" content="简书" />

  <meta property="al:android:url" content="jianshu://notes/5222508" />
  <meta property="al:android:package" content="com.jianshu.haruki" />
  <meta property="al:android:app_name" content="简书" />
  <!-- End -->

  <title>自定义UITableView点击动画效果 - 简书</title>
  <meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="6HZ+N+Wt++oJ294N1NH+8XPiFQkShkZ8Zi6VMgrfVCBhnSJEEE3jbd+QpkdxJdOUGLUsBTLT6LKIaR2iHLnNtA==" />
  <!--[if lte IE 8]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
  <link rel="stylesheet" media="all" href="http://cdn-qn0.jianshu.io/assets/base-28859e35d389885d08837bc971ff742c.css" />

    <link rel="stylesheet" media="all" href="http://cdn-qn0.jianshu.io/assets/reading-note-cc35f3caf1b79498ea4800b856bcf8a6.css" />
  <link rel="stylesheet" media="all" href="http://cdn-qn0.jianshu.io/assets/base-read-mode-64acccf6966299cfa3d580140a2582fe.css" />
  <script src="http://cdn-qn0.jianshu.io/assets/modernizr-613ea63b5aa2f0e2a1946e9c28c8eedb.js"></script>
  <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
  <!--[if IE 8]><link rel="stylesheet" media="all" href="http://cdn-qn0.jianshu.io/assets/scaffolding/for_ie-7f1c477ffedc13c11315103e8787dc6c.css" /><![endif]-->
  <!--[if lt IE 9]><link rel="stylesheet" media="all" href="http://cdn-qn0.jianshu.io/assets/scaffolding/for_ie-7f1c477ffedc13c11315103e8787dc6c.css" /><![endif]-->
  <link href="http://baijii-common.b0.upaiyun.com/icons/favicon.ico" rel="icon">
      <link rel="apple-touch-icon-precomposed" href="http://cdn-qn0.jianshu.io/assets/apple-touch-icons/57-b426758a1fcfb30486f20fd073c3b8ec.png" sizes="57x57" />
      <link rel="apple-touch-icon-precomposed" href="http://cdn-qn0.jianshu.io/assets/apple-touch-icons/72-feca4b183b9d29fd188665785dc7a7f1.png" sizes="72x72" />
      <link rel="apple-touch-icon-precomposed" href="http://cdn-qn0.jianshu.io/assets/apple-touch-icons/76-ba757f1ad3421192ce7192170393d2b0.png" sizes="76x76" />
      <link rel="apple-touch-icon-precomposed" href="http://cdn-qn0.jianshu.io/assets/apple-touch-icons/114-8dae53b3bcea3f06bb139e329d1edab3.png" sizes="114x114" />
      <link rel="apple-touch-icon-precomposed" href="http://cdn-qn0.jianshu.io/assets/apple-touch-icons/120-fa315ee0177dba4c55d4f66d4129b47f.png" sizes="120x120" />
      <link rel="apple-touch-icon-precomposed" href="http://cdn-qn0.jianshu.io/assets/apple-touch-icons/152-052f5799bec8fb3aa624bdc72ef5bd1d.png" sizes="152x152" />

    <meta id="current_user_id" value="2699846"></meta>
    <meta id="current_user_slug" value="55ba331846e4"></meta>

  <!-- Growing.io -->
    <script type='text/javascript'>
    var _vds = _vds || [];
    window._vds = _vds;
    (function(){
      _vds.push(['setAccountId', '81aa392bc97abf45']);
      (function() {
        var vds = document.createElement('script');
        vds.type='text/javascript';
        vds.async = true;
        vds.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'dn-growing.qbox.me/vds.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(vds, s);
      })();
    })();
  </script>

</head>

<body class="post output zh cn mac reader-day-mode reader-font2 " data-js-module="note-show" data-locale="zh-CN">
  
  <div class="navbar navbar-jianshu shrink">
  <div class="dropdown">
    <a class="dropdown-toggle logo" id="dLabel" role="button" data-toggle="dropdown" data-target="#" href="javascript:void(0)">
      简
    </a>
    <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
      <li><a href="/"><i class="fa fa-home"></i> 首页</a></li>
      <li><a href="/collections"><i class="fa fa-th"></i> 专题</a></li>
      <li><a href="/user_invitations"><i class="fa fa-money"></i> 发钱啦</a></li>
        <li><a href="/timeline"><i class="fa fa-users"></i> 简友圈</a></li>
        <li><a href="/writer#/"><i class="fa fa-pencil"></i> 写文章</a></li>
    </ul>
  </div>
</div>
<div class="navbar-user">
    <a class="user avatar" data-toggle="dropdown" href="javascript:void(0)">
      <img src="http://upload.jianshu.io/users/upload_avatars/2699846/4d32d9375a68.png?imageMogr/thumbnail/90x90/quality/100" alt="100" /> <b class="caret"></b>
</a>    <ul class="dropdown-menu arrow-top" role="menu" aria-labelledby="dLabel">
      <li>
  <a href="/writer#/"><i class="fa fa-pencil"></i> 写文章</a>
</li>
<li>
  <a target="_blank" href="/users/55ba331846e4"><i class="fa fa-user"></i> 我的主页</a>
</li>
  <li>
    <a href="/favourites">
      <i class="fa fa-heart"></i> 我喜欢的
</a>  </li>
  <li>
    <a href="/bookmarks">
      <i class="fa fa-bookmark"></i> 我的收藏
</a>  </li>
  <li>
    <a href="/notifications">
      <i class="fa fa-bell"></i> 提醒
</a>  </li>
  <li>
    <a href="/chats">
      <i class="fa fa-envelope"></i> 简信
</a>  </li>
  <li><a href="/settings"><i class="fa fa-cogs"></i> 设置</a></li>
  <li>
    <a href="/wallet">
      <i class="fa fa-credit-card"></i> 钱包
</a>  </li>
  <li class="dropdown-submenu">
    <a tabindex="-1" href="#"><i class="fa fa-question-circle"></i> 帮助</a>
    <ul class="dropdown-menu">
      <li><a href="http://www.jianshu.com/notebooks/547/latest" target="_blank">帮助中心</a></li>
      <li><a target="_blank" href="/contact">联系我们</a></a></li>
    </ul>
  </li>
  <li>
    <a rel="nofollow" data-method="DELETE" href="/sign_out">
      <i class="fa fa-sign-out"></i> 登 出
</a>  </li>

    </ul>
    <a class="daytime set-view-mode pull-right" href="javascript:void(0)"><i class="fa fa-moon-o"></i></a>
</div>
<div class="navbar navbar-jianshu expanded">
  <div class="dropdown">
      <a class="active logo" role="button" data-original-title="个人主页" data-container="div.expanded" href="/">
        <b>简</b><i class="fa fa-home"></i><span class="title">首页</span>
</a>      <a data-toggle="tooltip" data-placement="right" data-original-title="专题" data-container="div.expanded" href="/collections">
        <i class="fa fa-th"></i><span class="title">专题</span>
</a>        <a data-toggle="tooltip" data-placement="right" data-original-title="简友圈" data-container="div.expanded" href="/timeline">
          <i class="fa fa-users"></i><span class="title">简友圈</span>
</a>        <a data-toggle="tooltip" data-placement="right" data-original-title="写文章" data-container="div.expanded" href="/writer#/">
          <i class="fa fa-pencil"></i><span class="title">写文章</span>
</a>    <a class="ad-selector" href="/apps">
      <i class="fa fa-mobile"></i><span class="title">下载手机应用</span>
</a>    <div class="ad-container ad-container-signed">
      <div class="ad-pop">
        <img class="ad-logo" src="http://cdn-qn0.jianshu.io/assets/apple-touch-icons/114-8dae53b3bcea3f06bb139e329d1edab3.png" alt="114" />
        <p class="ad-title">简书</p>
        <p class="ad-subtitle">交流故事，沟通想法</p>
        <img class="ad-qrcode" src="http://cdn-qn0.jianshu.io/assets/app-page/download-app-qrcode-053849fa25f9b44573ef8dd3c118a20f.png" alt="Download app qrcode" />
        <div>
          <a class="ad-link" href="https://itunes.apple.com/cn/app/jian-shu/id888237539?ls=1&amp;mt=8">iOS</a>·
          <a class="ad-link" href="http://downloads.jianshu.io/apps/haruki/JianShu-1.11.1.apk">Android</a>
        </div>
      </div> 
    </div>
  </div>
  <div class="nav-user">
      <a data-toggle="tooltip" data-placement="right" data-original-title="我的主页" data-container="div.expanded" href="/users/55ba331846e4">
        <i class="fa fa-user"></i><span class="title">我的主页</span>
</a>
        <a data-toggle="tooltip" data-placement="right" data-original-title="我的收藏" data-container="div.expanded" href="/bookmarks">
          <i class="fa fa-bookmark"></i><span class="title">我的收藏</span>
</a>
        <a data-toggle="tooltip" data-placement="right" data-original-title="提醒" data-container="div.expanded" href="/notifications">

          <i id="notify-icon" class="fa fa-bell"></i><span class="title">提醒</span>
</a>
        <a data-toggle="tooltip" data-placement="right" data-original-title="简信" data-container="div.expanded" href="/chats">
            <i id="chat-message-icon" class="fa fa-envelope"></i><span class="title">简信</span>
</a>
        <a href='#view-mode-modal' data-toggle='modal'><i class="fa fa-font"></i><span class="title">显示模式</span></a>

        <a data-toggle="tooltip" data-placement="right" data-original-title="设置" data-container="div.expanded" href="/settings">
          <i class="fa fa-cogs"></i><span class="title">设置</span>
</a>
        <a data-toggle="tooltip" data-placement="right" data-original-title="登 出" data-container="div.expanded" rel="nofollow" data-method="delete" href="/sign_out">
          <i class="fa fa-sign-out"></i><span class="title">登 出</span>
</a>
          </div>
  </div>

  
    <div class="fixed-btn">
    <a class="go-top hide-go-top" href="#"> <i class="fa fa-angle-up"></i></a>
    <a class="qrcode" data-target="#bottom-qrcode" data-toggle="modal" href="javascript:void(0)"><i class="fa fa-qrcode"></i></a>
    <a class="writer" href="/writer#/" data-toggle="tooltip" data-placement="left" title="写篇文章"><i class="fa fa-pencil"></i></a>
    <!-- qrcode modal -->
    <div id="bottom-qrcode" class="modal panel-modal hide fade" tabindex="-1" role="dialog" aria-hidden="true">
      <h4>下载简书移动应用</h4>
      <div class="panel-body"><img src="http://cdn-qn0.jianshu.io/assets/app-page/download-app-qrcode-053849fa25f9b44573ef8dd3c118a20f.png" alt="Download app qrcode" /></div>
    </div>
  </div>


  <div id="show-note-container">
    
<div class="post-bg" id="flag">
  <div class="wrap-btn">
    <!-- Notebook and collections button upper left -->
      <div class="article-related pull-left">
          <a data-toggle="tooltip" data-placement="bottom" data-original-title="未加入专题" href="javascript:void(null);">
            <i class="fa fa-th"></i>
</a>          <a class="notebooks-menu-btn" data-toggle="modal" data-target="#notebooks-menu" href="javascript:void(null);"><i class="fa fa-list-ul"></i></a>
        <div class="related-avatar-group activities"></div>
      </div>
    <!-- ******* -->

      <a class="user avatar" data-toggle="dropdown" href="javascript:void(0)">
    <img src="http://upload.jianshu.io/users/upload_avatars/2699846/4d32d9375a68.png?imageMogr/thumbnail/90x90/quality/100" alt="100" /> <b class="caret"></b>
</a>  <ul class="dropdown-menu arrow-top" role="menu" aria-labelledby="dLabel">
    <li>
  <a href="/writer#/"><i class="fa fa-pencil"></i> 写文章</a>
</li>
<li>
  <a target="_blank" href="/users/55ba331846e4"><i class="fa fa-user"></i> 我的主页</a>
</li>
  <li>
    <a href="/favourites">
      <i class="fa fa-heart"></i> 我喜欢的
</a>  </li>
  <li>
    <a href="/bookmarks">
      <i class="fa fa-bookmark"></i> 我的收藏
</a>  </li>
  <li>
    <a href="/notifications">
      <i class="fa fa-bell"></i> 提醒
</a>  </li>
  <li>
    <a href="/chats">
      <i class="fa fa-envelope"></i> 简信
</a>  </li>
  <li><a href="/settings"><i class="fa fa-cogs"></i> 设置</a></li>
  <li>
    <a href="/wallet">
      <i class="fa fa-credit-card"></i> 钱包
</a>  </li>
  <li class="dropdown-submenu">
    <a tabindex="-1" href="#"><i class="fa fa-question-circle"></i> 帮助</a>
    <ul class="dropdown-menu">
      <li><a href="http://www.jianshu.com/notebooks/547/latest" target="_blank">帮助中心</a></li>
      <li><a target="_blank" href="/contact">联系我们</a></a></li>
    </ul>
  </li>
  <li>
    <a rel="nofollow" data-method="DELETE" href="/sign_out">
      <i class="fa fa-sign-out"></i> 登 出
</a>  </li>

  </ul>


    <!-- Buttons upper right -->
      <div class="btn-group editor-article">
                  <a class='daytime set-view-mode' href='javascript:void(0)'><i class="fa fa-moon-o"></i></a>
        <span>
          
          
          <a class="btn" href="/writer#/notebooks/5582836/notes/5222508">
            <i class="fa fa-pencil-square-o"></i>
</a>
            <a href='javascript:void(null)' class='btn add-collection' data-toggle='modal' data-target='#contribute-modal'>
              <i class="fa fa-plus"></i><span><span class="translation_missing" title="translation missing: zh-CN.notes.show.add_to_collection">Add To Collection</span></span>
            </a>

            <a data-type="json" data-mcomponent="easy-bookmark" class="bookmark" data-remote="true" rel="nofollow" data-method="post" href="/notes/5222508/bookmark">
    <i class="fa fa-bookmark-o"></i><span>收藏文章</span>
</a>
        </span>
      </div>
    <!-- ******* -->
  </div>

  <div class="container">
    <!-- Article activities for width under 768px -->
    <div class="related-avatar-group activities"></div>
      <div class="article">
        <div class="preview">
          <div class="author-info">
            
            <a class="avatar" href="/users/55ba331846e4">
              <img src="http://upload.jianshu.io/users/upload_avatars/2699846/4d32d9375a68.png?imageMogr/thumbnail/90x90/quality/100" alt="100" />
</a>            <span class="label">
                作者
            </span>
            <a class="author-name blue-link" href="/users/55ba331846e4">
              <span>Genie_GY</span>
</a>              <span>2016.08.11 15:55</span>
            <div>
              <span>写了221字</span>，<span>被0人关注</span>，<span>获得了1个喜欢</span>
            </div>
          </div>
          <h1 class="title">自定义UITableView点击动画效果</h1>
          <div class="meta-top">
            <span class="wordage"></span>
            <span class="views-count"></span>
            <span class="comments-count"></span>
            <span class="likes-count"></span>
          </div>

          <!-- Collection/Bookmark/Share for width under 768px -->
          <div class="article-share"></div>
          <!-- -->

          <div class="show-content"><h1>GYTableView</h1><hr><p>简单自定制各种酷炫点击效果</p><p>效果图：<br></p><div class="image-package">
<img src="http://upload-images.jianshu.io/upload_images/2699846-c1a3ac12fe6297e0.gif?imageMogr2/auto-orient/strip" data-original-src="http://upload-images.jianshu.io/upload_images/2699846-c1a3ac12fe6297e0.gif?imageMogr2/auto-orient/strip" data-image-slug="c1a3ac12fe6297e0" data-width="280" data-height="497"><br><div class="image-caption"></div>
</div><p>GitHub地址：<a href="https://github.com/HuangGY1993/GYTableView" target="_blank">github.com/HuangGY1993/GYTableView</a></p></div>
        </div>
      </div>

      <div class="visitor_edit">
        <!-- further readings -->
        <div id="further-readings" data-user-slug="55ba331846e4" data-user-nickname="Genie_GY">
          <div id="further-reading-line" class="hide further-reading-line"></div>
          <ul id="further-readings-list" class="reading-list unstyled"></ul>
          <div id="further-reading-new" class="reading-edit">
              <a id="further-reading-new-prompt" href="javascript:void(null)">
                <i class="fa fa-plus-circle"></i> 推荐拓展阅读
</a>            <div id="further-reading-form"></div>
          </div>
        </div>
        <div class="pull-right">
          <!-- copyright -->
          <div class="author-copyright pull-right" data-toggle="tooltip" data-html="true" title="转载请联系作者获得授权，并标注“简书作者”。">
            <a><i class="fa fa-copyright"></i> 著作权归作者所有</a>
          </div>
        </div>
      </div>

      <!-- Reward / Support Author -->
        <div class="support-author">
          <p>如果觉得我的文章对您有用，请随意打赏。您的支持将鼓励我继续创作！</p>
            <span>本文已收到 <a class="rewards-total-count" data-toggle="modal" href="#rewards-modal">javascript:void(null)</a> 次打赏</span>
          <div class="avatar-list"></div>
        </div>

      <!-- article meta bottom -->
      <div class="meta-bottom clearfix">
        <!--  Like Button -->
        <div class="like ">
            <div class="like-button">
              <a class="like-content" data-remote="true" rel="nofollow" data-method="post" href="/notes/5222508/like">
                <i class="fa fa-heart-o"></i>  喜欢
</a></div>          <span id="likes-count" data-toggle="tooltip" data-placement="right" title="查看所有喜欢的用户">
            <i class="fa fa-spinner fa-pulse"></i>
</span>        </div>
        <!--  share group -->
        <div class="share-group pull-right">
          <a href="javascript:void((function(s,d,e,r,l,p,t,z,c){var%20f=&#39;http://v.t.sina.com.cn/share/share.php?appkey=1881139527&#39;,u=z||d.location,p=[&#39;&amp;url=&#39;,e(u),&#39;&amp;title=&#39;,e(t||d.title),&#39;&amp;source=&#39;,e(r),&#39;&amp;sourceUrl=&#39;,e(l),&#39;&amp;content=&#39;,c||&#39;gb2312&#39;,&#39;&amp;pic=&#39;,e(p||&#39;&#39;)].join(&#39;&#39;);function%20a(){if(!window.open([f,p].join(&#39;&#39;),&#39;mb&#39;,[&#39;toolbar=0,status=0,resizable=1,width=440,height=430,left=&#39;,(s.width-440)/2,&#39;,top=&#39;,(s.height-430)/2].join(&#39;&#39;)))u.href=[f,p].join(&#39;&#39;);};if(/Firefox/.test(navigator.userAgent))setTimeout(a,0);else%20a();})(screen,document,encodeURIComponent,&#39;&#39;,&#39;&#39;,&#39;&#39;, &#39;我写了新文章《自定义UITableView点击动画效果》（ 分享自 @简书 ）&#39;,&#39;http://www.jianshu.com/p/7f21f7511f0a&#39;,&#39;页面编码gb2312|utf-8默认gb2312&#39;));" data-name="weibo">
            <i class="fa fa-weibo"></i><span>分享到微博</span>
          </a>
          <a data-toggle="modal" href="#share-weixin-modal" data-name="weixin">
            <i class="fa fa-weixin"></i><span>分享到微信</span>
          </a>
          <div class="more">
            <a href="javascript:void(0)" data-toggle="dropdown">更多分享<i class="fa fa-caret-down"></i></a>
            <ul class="dropdown-menu arrow-top">
                <li>
                  <a data-name="tweibo" href="javascript:void(function(){var d=document,e=encodeURIComponent,r=&#39;http://share.v.t.qq.com/index.php?c=share&amp;a=index&amp;url=&#39;+e(&#39;http://www.jianshu.com/p/7f21f7511f0a&#39;)+&#39;&amp;title=&#39;+e(&#39;我写了新文章《自定义UITableView点击动画效果》（ 分享自 @jianshuio ）&#39;),x=function(){if(!window.open(r,&#39;tweibo&#39;,&#39;toolbar=0,resizable=1,scrollbars=yes,status=1,width=600,height=600&#39;))location.href=r};if(/Firefox/.test(navigator.userAgent)){setTimeout(x,0)}else{x()}})();">
                    <img src="http://baijii-common.b0.upaiyun.com/social_icons/32x32/tweibo.png" alt="Tweibo" /> 分享到腾讯微博
</a>                </li>
                <li>
                  <a data-name="qzone" href="javascript:void(function(){var d=document,e=encodeURIComponent,r=&#39;http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=&#39;+e(&#39;http://www.jianshu.com/p/7f21f7511f0a&#39;)+&#39;&amp;title=&#39;+e(&#39;我写了新文章《自定义UITableView点击动画效果》&#39;),x=function(){if(!window.open(r,&#39;qzone&#39;,&#39;toolbar=0,resizable=1,scrollbars=yes,status=1,width=600,height=600&#39;))location.href=r};if(/Firefox/.test(navigator.userAgent)){setTimeout(x,0)}else{x()}})();">
                    <img src="http://baijii-common.b0.upaiyun.com/social_icons/32x32/qzone.png" alt="Qzone" /> 分享到QQ空间
</a>                </li>
                <li>
                  <a data-name="twitter" href="javascript:void(function(){var d=document,e=encodeURIComponent,r=&#39;https://twitter.com/share?url=&#39;+e(&#39;http://www.jianshu.com/p/7f21f7511f0a&#39;)+&#39;&amp;text=&#39;+e(&#39;我写了新文章《自定义UITableView点击动画效果》（ 分享自 @jianshucom ）&#39;)+&#39;&amp;related=&#39;+e(&#39;jianshucom&#39;),x=function(){if(!window.open(r,&#39;twitter&#39;,&#39;toolbar=0,resizable=1,scrollbars=yes,status=1,width=600,height=600&#39;))location.href=r};if(/Firefox/.test(navigator.userAgent)){setTimeout(x,0)}else{x()}})();">
                    <img src="http://baijii-common.b0.upaiyun.com/social_icons/32x32/twitter.png" alt="Twitter" /> 分享到Twitter
</a>                </li>
                <li>
                  <a data-name="facebook" href="javascript:void(function(){var d=document,e=encodeURIComponent,r=&#39;https://www.facebook.com/dialog/share?app_id=483126645039390&amp;display=popup&amp;href=http://www.jianshu.com/p/7f21f7511f0a&#39;,x=function(){if(!window.open(r,&#39;facebook&#39;,&#39;toolbar=0,resizable=1,scrollbars=yes,status=1,width=450,height=330&#39;))location.href=r};if(/Firefox/.test(navigator.userAgent)){setTimeout(x,0)}else{x()}})();">
                    <img src="http://baijii-common.b0.upaiyun.com/social_icons/32x32/facebook.png" alt="Facebook" /> 分享到Facebook
</a>                </li>
                <li>
                  <a data-name="google_plus" href="javascript:void(function(){var d=document,e=encodeURIComponent,r=&#39;https://plus.google.com/share?url=&#39;+e(&#39;http://www.jianshu.com/p/7f21f7511f0a&#39;),x=function(){if(!window.open(r,&#39;google_plus&#39;,&#39;toolbar=0,resizable=1,scrollbars=yes,status=1,width=450,height=330&#39;))location.href=r};if(/Firefox/.test(navigator.userAgent)){setTimeout(x,0)}else{x()}})();">
                    <img src="http://baijii-common.b0.upaiyun.com/social_icons/32x32/google_plus.png" alt="Google plus" /> 分享到Google+
</a>                </li>
                <li>
                  <a data-name="douban" href="javascript:void(function(){var d=document,e=encodeURIComponent,s1=window.getSelection,s2=d.getSelection,s3=d.selection,s=s1?s1():s2?s2():s3?s3.createRange().text:&#39;&#39;,r=&#39;http://www.douban.com/recommend/?url=&#39;+e(&#39;http://www.jianshu.com/p/7f21f7511f0a&#39;)+&#39;&amp;title=&#39;+e(&#39;自定义UITableView点击动画效果&#39;)+&#39;&amp;sel=&#39;+e(s)+&#39;&amp;v=1&#39;,x=function(){if(!window.open(r,&#39;douban&#39;,&#39;toolbar=0,resizable=1,scrollbars=yes,status=1,width=450,height=330&#39;))location.href=r+&#39;&amp;r=1&#39;};if(/Firefox/.test(navigator.userAgent)){setTimeout(x,0)}else{x()}})()">
                    <img src="http://baijii-common.b0.upaiyun.com/social_icons/32x32/douban.png" alt="Douban" /> 分享到豆瓣
</a>                </li>
            </ul>
          </div>
        </div>
      </div>

      <!-- Modals -->
      <div id="share-weixin-modal" class="modal hide fade share-weixin-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
  </div>
  <div class="modal-body">
    <h5>打开微信“扫一扫”，打开网页后点击屏幕右上角分享按钮</h5>
  </div>
</div>

      <div id="contribute-modal" tabindex="-1" class="arrow-top user-editor-actions modal hide fade">
  <div class="modal-header">
    <b>
      向专题投稿
      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    </b>
  </div>
  <div class="modal-body">
    <div class="search">
      <input type="text" name="search_term" id="search_term" class="input-large search-query" placeholder="搜索更多专题投稿" data-search-collections-url="/collections/search?note_id=5222508" />
    </div>
    <ul class="add-list"></ul>
  </div>
</div>

      <div id="notebooks-menu" class="panel notebooks-menu arrow-top modal hide fade"><img class="loader-tiny" src="http://baijii-common.b0.upaiyun.com/loaders/tiny.gif" alt="Tiny" /></div>
      <div id="collection-menu" class="panel collection-menu arrow-top modal hide fade"><img class="loader-tiny" src="http://baijii-common.b0.upaiyun.com/loaders/tiny.gif" alt="Tiny" /></div>
      <div id="rewards-modal" class="modal modal_new support_list-modal fullscreen hide fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3>读者打赏</h3>
      </div>
      <div class="modal-body">
        <ul class="unstyled users">
          <img class="loader-tiny editor-loading" src="http://baijii-common.b0.upaiyun.com/loaders/tiny.gif" alt="Tiny" />
        </ul>
      </div>
    </div>
  </div>
</div>

      <div id="likes-modal" class="modal modal_new support_list-modal fullscreen hide fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3>喜欢的用户</h3>
      </div>
      <div class="modal-body">
        <ul class="unstyled users">
        </ul>
      </div>
    </div>
  </div>
</div>



    <!-- Comments -->
    <div id="comments" class="comment-list clearfix">
        <div class="comment-head clearfix">
          0条评论
          <span class="order">
            （
            <a data-order="asc" class="active" href="javascript:void(0)">按时间正序</a>·
            <a data-order="desc" href="javascript:void(0)">按时间倒序</a>·
            <a data-order="likes_count" href="javascript:void(0)">按喜欢排序</a>
            ）
          </span>
            <a href="javascript:void(null)" class="goto-comment pull-right"><i class="fa fa-pencil"></i>添加新评论</a>
            <a class="close-comment pull-right" disable_with="请等待..." data-remote="true" rel="nofollow" data-method="put" href="/notes/7f21f7511f0a/toggle_comment">关闭评论</a>
        </div>
        <div id="comment-list">
          <img class="loader-tiny" src="http://baijii-common.b0.upaiyun.com/loaders/tiny.gif" alt="Tiny" />
        </div>
          <form class="new_comment" id="new_comment" data-type="json" action="/notes/5222508/comments" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="&#x2713;" />
    <div class="comment-text">
      <textarea maxlength="2000" placeholder="写下你的评论…" class="mousetrap" name="comment[content]" id="comment_content">
</textarea>
      <div>
        <input type="submit" name="commit" value="发 表" class="btn btn-info" data-disable-with="提交中..." />
          <div class="emoji">
    <a href="#emoji-modal" data-toggle="modal"><i class="fa fa-smile-o"></i></a>
    <div id="emoji-modal" class="emoji-modal arrow-top hide" tabindex="-1" aria-hidden="true">
      <ul id="emojiTab" class="emoji-nav-tabs modal-header">
          <li class="active"><a href="#emoji-pane-1" data-toggle="tab">1</a></li>
          <li class=""><a href="#emoji-pane-2" data-toggle="tab">2</a></li>
          <li class=""><a href="#emoji-pane-3" data-toggle="tab">3</a></li>
          <li class=""><a href="#emoji-pane-4" data-toggle="tab">4</a></li>
      </ul>
      <div id="emojiTabContent" class="tab-content">
          <div class="tab-pane fade active in" id="emoji-pane-1">
          <ul>
          </ul>
        </div>
          <div class="tab-pane fade  in" id="emoji-pane-2">
          <ul>
          </ul>
        </div>
          <div class="tab-pane fade  in" id="emoji-pane-3">
          <ul>
          </ul>
        </div>
          <div class="tab-pane fade  in" id="emoji-pane-4">
          <ul>
          </ul>
        </div>
      </div>
    </div>
  </div>

          <span class="hotkey">⌘+Return 发表</span>
        <span class="warning" style="display: none"><i class="fa fa-exclamation-circle"></i><span class="warning-text"></span></span>
      </div>
    </div>
</form>
    </div>
    <!-- -->

  </div>

  <script type='application/json' data-name='note'>
    {"id":5222508,"abbr":"简单自定制各种酷炫点击效果效果图：GitHub地址：github.com/HuangGY1993/GYTableView","slug":"7f21f7511f0a","url":"http://www.jianshu.com/p/7f21f7511f0a","image_url":null,"wordage":26,"has_further_readings":false,"views_count":0,"likes_count":0,"comments_count":0,"rewards_total_count":0}
  </script>

  <script type='application/json' data-name='uuid'>
    {"uuid":"8f651d47-fcb3-4457-bdcd-cf6c332e1f34"}
  </script>

  <script type='application/json' data-name='author'>
    {"id":2699846,"nickname":"Genie_GY","slug":"55ba331846e4","public_notes_count":2,"followers_count":0,"total_likes_count":1,"is_current_user":true,"is_signed_author":false}
  </script>

    <script type='application/json' data-name='current-user'>
      {"id":2699846,"slug":"55ba331846e4","nickname":"Genie_GY","avatar_url":"http://upload.jianshu.io/users/upload_avatars/2699846/4d32d9375a68.png?imageMogr/thumbnail/90x90/quality/100","blocked_by_author":false,"blocked_user_ids":[],"balance_in_cent":0,"is_a_collection_editor":false}
    </script>

    <script type='application/json' data-name='comment-participants'>
      []
    </script>


      <script type='application/json' data-name='reward'>
        {"rewards":[]}
      </script>


  <!-- Modal -->
    <div class="modal pay-modal text-center hide fade" id="pay-modal">
  <div class="modal-header clearfix">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  </div>
  <form id="new_reward" class="new_reward" target="_blank" action="/notes/5222508/rewards" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="wwcXeoHk24scyECpDKucqmDf5Xflj4BWdHmVxlrFQPxK7EsJdATDDMqDOOOpX7HPC4jce8XaLpiaPh1WTKPZaA==" />
    <div class="modal-body">
      <a href="/users/55ba331846e4">
        <div class="avatar"><img src="http://upload.jianshu.io/users/upload_avatars/2699846/4d32d9375a68.png?imageMogr/thumbnail/90x90/quality/100" alt="100" /></div>
</a>      <p><i class="fa fa-quote-left pull-left"></i>如果觉得我的文章对您有用，请随意打赏。您的支持将鼓励我继续创作！<i class="fa fa-quote-right pull-right"></i></p>
      <div class="main-inputs text-left">
        <div class="control-group">
          <label for="reward_amount">打赏金额</label><i class="fa fa-yen"></i>
          <input value="2.00" type="text" name="reward[amount_in_yuan]" id="reward_amount_in_yuan" />
        </div>
        <div class="control-group message">
          <textarea placeholder="给Ta留言" name="reward[message]" id="reward_message">
</textarea>
        </div>
      </div>
      <div class="choose-pay text-left">
        <h5>选择支付方式：</h5>
        <div>
          <label for="reward_channel_alipay">
            <input type="radio" value="alipay" checked="checked" name="reward[channel]" id="reward_channel_alipay" />
            <span class="alipay-bg"></span>
</label>
          <label for="reward_channel_balance">
            <input type="radio" value="balance" name="reward[channel]" id="reward_channel_balance" />
            简书余额（ 余额：¥ 0.00 ）
</label>
          <label for="reward_channel_wx_pub_qr">
            <input type="radio" value="wx_pub_qr" name="reward[channel]" id="reward_channel_wx_pub_qr" />
            微信支付
</label>        </div>
      </div>
    </div>
    <div class="modal-footer">
      <button name="button" type="submit" class="btn btn-large btn-pay">立即支付</button>
    </div>
</form></div>

    <div class="modal success-pay text-center hide fade" id="success-pay">
  <div class="modal-header clearfix">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  </div>
  <div class="modal-body">
    <h3><i class="icon-ok"></i>打赏成功</h3>
    <img src="http://cdn-qn0.jianshu.io/assets/complete-pay-25426877089eb23bd76d9d0e6aad89c1.png" alt="Complete pay" />
  </div>
  <div class="modal-footer">
    <a class="blue-link" href="/wallet">查看打赏记录</a>
  </div>
</div>

</div>

  </div>
  <div id="flash" class="hide"></div>
  
  <div id="view-mode-modal" tabindex="-1" class="modal hide read-modal" aria-hidden="false" data-js-module='view-mode-modal'>
    <div class="btn-group change-background" data-toggle="buttons-radio">

      <a class="btn btn-daytime active" data-mode="day" data-remote="true" rel="nofollow" data-method="put" href="/preferences?read_mode=day">
        <i class="fa fa-sun-o"></i>
</a>      <a class="btn btn-nighttime " data-mode="night" data-remote="true" rel="nofollow" data-method="put" href="/preferences?read_mode=night">
        <i class="fa fa-moon-o"></i>
</a>    </div>
    <div class="btn-group change-font" data-toggle="buttons-radio">
      <a class="btn font " data-font="font1" data-remote="true" rel="nofollow" data-method="put" href="/preferences?default_font=font1">宋体</a>
      <a class="btn font hei active" data-font="font2" data-remote="true" rel="nofollow" data-method="put" href="/preferences?default_font=font2">黑体</a>
    </div>
    <div class="btn-group change-locale" data-toggle="buttons-radio">
      <a class="btn font active" data-locale="zh-CN" data-remote="true" rel="nofollow" data-method="put" href="/preferences/set_locale?locale=zh-CN">简</a>
      <a class="btn font hei " data-locale="zh-TW" data-remote="true" rel="nofollow" data-method="put" href="/preferences/set_locale?locale=zh-TW">繁</a>
    </div>
  </div>

  <div id="report-modal" class="modal hide fade modal_report fullscreen" tabindex="-1" role="dialog"
  aria-labelledby="reportModal" aria-hidden="true" data-js-module="report-modal">
  <form id="report-form" data-type="json" action="javascript:void(0)" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="&#x2713;" />
    <input type="hidden" name="type" id="type" value="other" />

    <div class="modal-header">
      <b>举报原因</b>
    </div>
    <div class="modal-body">
      <textarea name="content" id="content" maxlength="2000" placeholder="写下你的举报原因...">
</textarea>
    </div>
    <div class="modal-footer">
      <a class="btn" data-dismiss="modal" aria-hidden="true" href="javascript:void(0)">取消</a>
      <input type="submit" name="commit" value="确认" class="btn btn-info" />
    </div>
</form></div>


  <script src="http://cdn-qn0.jianshu.io/assets/base-ded41764c207f7ff545c28c670922d25.js"></script>
  
  <script src="http://cdn-qn0.jianshu.io/assets/reading-base-0028299ec0c770293c0f07e2f338b48f.js"></script>
  <script src="http://cdn-qn0.jianshu.io/assets/reading/module_sets/note_show-1805bf39f59948b52870922039360dbb.js"></script>
  <script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-35169517-1']);
  _gaq.push(['_setCustomVar', 2, 'User Type', 'Member', 1 ]);
  _gaq.push(['_trackPageview']);

  

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>

</body>
</html>
