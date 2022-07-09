<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
    <head>
      <title>Bootstrap Example</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
      <Style>
          *{box-sizing:border-box; -moz-box-sizing:border-box; -webkit-box-sizing:border-box;}body{background: #f0f0f0;}.content{width: 260px; margin: 100px auto;}.colors{width: 260px; float: left; margin: 20px auto;}.colors a{width: 43.3px; height: 30px; float: left;}.colors .default{background: #414956;}.colors .blue{background: #4A89DC;}.colors .green{background: #03A678;}.colors .red{background: #ED5565;}.colors .white{background: #fff;}.colors .black{background: #292929;}

@import url(http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700);.jquery-accordion-menu,.jquery-accordion-menu *{font-family:'Open Sans',sans-serif;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;outline:0}.jquery-accordion-menu{min-width:260px;float:left;position:relative;box-shadow:0 20px 50px #333}.jquery-accordion-menu .jquery-accordion-menu-footer,.jquery-accordion-menu .jquery-accordion-menu-header{width:100%;height:50px;padding-left:22px;float:left;line-height:50px;font-weight:600;color:#f0f0f0;background:#414956}.jquery-accordion-menu ul{margin:0;padding:0;list-style:none}.jquery-accordion-menu ul li{width:100%;display:block;float:left;position:relative}.jquery-accordion-menu ul li a{width:100%;padding:14px 22px;float:left;text-decoration:none;color:#f0f0f0;font-size:13px;background:#414956;white-space:nowrap;position:relative;overflow:hidden;-o-transition:color .2s linear,background .2s linear;-moz-transition:color .2s linear,background .2s linear;-webkit-transition:color .2s linear,background .2s linear;transition:color .2s linear,background .2s linear}.jquery-accordion-menu>ul>li.active>a,.jquery-accordion-menu>ul>li:hover>a{color:#fff;background:#3b424d}.jquery-accordion-menu>ul>li>a{border-bottom:solid 1px #3b424d}.jquery-accordion-menu ul li a i{width:34px;float:left;line-height:18px;font-size:16px;text-align:left}.jquery-accordion-menu .submenu-indicator{float:right;right:22px;position:absolute;line-height:19px;font-size:20px;-o-transition:transform .3s linear;-moz-transition:transform .3s linear;-webkit-transition:transform .3s linear;-ms-transition:transform .3s linear}.jquery-accordion-menu ul ul.submenu .submenu-indicator{line-height:16px}.jquery-accordion-menu .submenu-indicator-minus>.submenu-indicator{-ms-transform:rotate(45deg);-moz-transform:rotate(45deg);-webkit-transform:rotate(45deg);transform:rotate(45deg)}.jquery-accordion-menu ul ul.submenu,.jquery-accordion-menu ul ul.submenu li ul.submenu{width:100%;display:none;position:static}.jquery-accordion-menu ul ul.submenu li{clear:both;width:100%}.jquery-accordion-menu ul ul.submenu li a{width:100%;float:left;font-size:11px;background:#383838;border-top:none;position:relative;border-left:solid 6px transparent;-o-transition:border .2s linear;-moz-transition:border .2s linear;-webkit-transition:border .2s linear;transition:border .2s linear}.jquery-accordion-menu ul ul.submenu li:hover>a{border-left-color:#414956}.jquery-accordion-menu ul ul.submenu>li>a{padding-left:30px}.jquery-accordion-menu ul ul.submenu>li>ul.submenu>li>a{padding-left:45px}.jquery-accordion-menu ul ul.submenu>li>ul.submenu>li>ul.submenu>li>a{padding-left:60px}.jquery-accordion-menu ul li .jquery-accordion-menu-label,.jquery-accordion-menu ul ul.submenu li .jquery-accordion-menu-label{min-width:20px;padding:1px 2px 1px 1px;position:absolute;right:18px;top:14px;font-size:11px;font-weight:800;color:#555;text-align:center;line-height:18px;background:#f0f0f0;border-radius:100%}.jquery-accordion-menu ul ul.submenu li .jquery-accordion-menu-label{top:12px}.ink{display:block;position:absolute;background:rgba(255,255,255,.3);border-radius:100%;-webkit-transform:scale(0);-moz-transform:scale(0);-ms-transform:scale(0);-o-transform:scale(0);transform:scale(0)}.animate-ink{-webkit-animation:ripple .5s linear;-moz-animation:ripple .5s linear;-ms-animation:ripple .5s linear;-o-animation:ripple .5s linear;animation:ripple .5s linear}@-webkit-keyframes ripple{100%{opacity:0;-webkit-transform:scale(2.5)}}@-moz-keyframes ripple{100%{opacity:0;-moz-transform:scale(2.5)}}@-o-keyframes ripple{100%{opacity:0;-o-transform:scale(2.5)}}@keyframes ripple{100%{opacity:0;transform:scale(2.5)}}.blue.jquery-accordion-menu .jquery-accordion-menu-footer,.blue.jquery-accordion-menu .jquery-accordion-menu-header,.blue.jquery-accordion-menu ul li a{background:#4A89DC}.blue.jquery-accordion-menu>ul>li.active>a,.blue.jquery-accordion-menu>ul>li:hover>a{background:#3e82da}.blue.jquery-accordion-menu>ul>li>a{border-bottom-color:#3e82da}.blue.jquery-accordion-menu ul ul.submenu li:hover>a{border-left-color:#3e82da}.green.jquery-accordion-menu .jquery-accordion-menu-footer,.green.jquery-accordion-menu .jquery-accordion-menu-header,.green.jquery-accordion-menu ul li a{background:#03A678}.green.jquery-accordion-menu>ul>li.active>a,.green.jquery-accordion-menu>ul>li:hover>a{background:#049372}.green.jquery-accordion-menu>ul>li>a{border-bottom-color:#049372}.green.jquery-accordion-menu ul ul.submenu li:hover>a{border-left-color:#049372}.red.jquery-accordion-menu .jquery-accordion-menu-footer,.red.jquery-accordion-menu .jquery-accordion-menu-header,.red.jquery-accordion-menu ul li a{background:#ED5565}.red.jquery-accordion-menu>ul>li.active>a,.red.jquery-accordion-menu>ul>li:hover>a{background:#DA4453}.red.jquery-accordion-menu>ul>li>a{border-bottom-color:#DA4453}.red.jquery-accordion-menu ul ul.submenu li:hover>a{border-left-color:#DA4453}.white.jquery-accordion-menu .jquery-accordion-menu-footer,.white.jquery-accordion-menu .jquery-accordion-menu-header,.white.jquery-accordion-menu ul li a{background:#fff;color:#555}.white.jquery-accordion-menu>ul>li.active>a,.white.jquery-accordion-menu>ul>li:hover>a{background:#f0f0f0}.white.jquery-accordion-menu>ul>li>a{border-bottom-color:#f0f0f0}.white.jquery-accordion-menu ul ul.submenu li:hover>a{border-left-color:#f0f0f0}.white.jquery-accordion-menu ul ul.submenu li a{color:#f0f0f0}.white.jquery-accordion-menu>ul>li>a>.ink{background:rgba(0,0,0,.1)}.black.jquery-accordion-menu .jquery-accordion-menu-footer,.black.jquery-accordion-menu .jquery-accordion-menu-header,.black.jquery-accordion-menu ul li a{background:#292929}.black.jquery-accordion-menu>ul>li.active>a,.black.jquery-accordion-menu>ul>li:hover>a{background:#222}.black.jquery-accordion-menu>ul>li>a{border-bottom-color:#222}.black.jquery-accordion-menu ul ul.submenu li:hover>a{border-left-color:#222}

      </Style>
    </head>
    
    <body>
        <div class="content">
		
			<div id="jquery-accordion-menu" class="jquery-accordion-menu">
				<div class="jquery-accordion-menu-header ">Lab2 </div>
				<ul>
					<li><a  href="/ctrl/ok" name="btnbai1"><i class="fa fa-home"></i>bai 1 </a></li>
					<li><a href="/param/form"  name="btnbai2"><i class="fa fa-glass"></i>bai2 </a></li>
					<li><a href="/product/form" name="btnbai3"><i class="fa fa-file-image-o"></i>bai3 </a></li>
					<li><a href="/productbai4/form2" name="btnbai4"><i class="fa fa-cog"></i>bai4 </a></li>
					<li><a href="/a" name="btnbai5"><i class="fa fa-newspaper-o"></i>bai5 </a></li>
					
				</ul>
				<div class="jquery-accordion-menu-footer">java5</div>
			</div>
		</div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>    
    </body>
</html>
