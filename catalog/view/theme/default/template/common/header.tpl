<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<!--
<nav id="top">
  <div class="container">
    <?php echo $currency; ?>
    <?php echo $language; ?>
    <div id="top-links" class="nav pull-right">
      <ul class="list-inline">
        <li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li>
        <?php if($telephone1) {?>
          <li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone1; ?></span></li>
        <?php }?>
        <?php if($telephone2) {?>
          <li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone2; ?></span></li>
        <?php }?>

        <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-right">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><i class="fa fa-user"></i> <?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><i class="fa fa-history"></i> <?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><i class="fa fa-history"></i> <?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><i class="fa fa-upload"></i> <?php echo $text_download; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><i class="fa fa-sign-out"></i> <?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><i class="fa fa-user-plus"></i> <?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><i class="fa fa-sign-in"></i> <?php echo $text_login; ?></a></li>
            <?php } ?>
          </ul>
        </li>
        <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
        <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>
        <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
      </ul>
    </div>
  </div>
</nav>
-->
<header>
  <div class="container">
    <div class="row">
      <div class="col-sm-2 col-xs-6">
        <div id="logo">
          <?php if ($logo) { ?>
            <?php if ($home == $og_url) { ?>
              <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" />
            <?php } else { ?>
              <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
            <?php } ?>
          <?php } else { ?>
            <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>

      <div class="col-lg-5 col-md-5  col-xs-6">
        <div class="row">
          <div class="col-lg-12 col-md-12 hidden-xs hidden-sm ">
            <ul class="nav navbar-nav">
              <li> <?php if ($open=="") {echo "";}
              else {echo "<i class='fa fa-clock-o' aria-hidden='true'></i><b>Время работы:&nbsp;"; echo $open."</b><br><b style='margin-left: 10px; color:  #ff0000; text-transform: uppercase;'>воскресенье: выходной</b>" ;} ?>
              </li>
            </ul>
          </div>
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-11">
            <span class="telephon-menu">
              <i class="fa fa-phone"></i> <span ><?php echo $telephone; ?></span>&nbsp;

              <?php if($telephone1) {?>
                <i class="fa fa-phone"></i> <span ><?php echo $telephone1; ?></span>&nbsp;
              <?php }?>
              <?php if($telephone2) {?>
                <i class="fa fa-phone"></i> <span ><?php echo $telephone2; ?></span>
              <?php }?>
            </span>
          </div>
        </div>
      </div>

      <nav class="navbar navbar-default col-sm-5 col-xs-12 menu-header">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <span class="visible-xs navbar-span"><?php echo $text_menu_header; ?></span>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
              <?php echo $links_header; ?>
          </ul>
        </div>
      </nav>

    </div>
  </div>
</header>
<nav id="top">
  <div class="container">
    <?php if ($categories) { ?>
      <div class="btn-group category-header col-md-2 hidden-xs hidden-sm">
      <button type="button" class="btn btn-navbar" data-toggle="dropdown"><span><?php echo $text_category; ?> <i class="fa fa-bars"></i></span></button>
        <ul class="dropdown-menu nav col-sm-12 col-xs-12">
          <?php foreach ($categories as $category) { ?>
            <?php if ($category['children']) { ?>
            <li class="dropdown-submenu"><a tabindex="-1" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                  <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                  <ul class="dropdown-menu">
                    <?php foreach ($children as $child) { ?>
                    <li><a tabindex="-1" href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                    <?php } ?>
                  </ul>
                  <?php } ?>
            </li>
            <?php } else { ?>
              <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          <?php } ?>
        </ul>
      </div>
      <div class="btn-group category-header col-sm-12 col-xs-12 hidden-lg hidden-mg" style="margin-bottom: 10px !important;">

      <button type="button" class="btn btn-navbar" data-toggle="modal" data-target="#modal-1"><span><?php echo $text_category; ?> <i class="fa fa-bars"></i></span></button>
      <div class="modal" id="modal-1">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <b aria-hidden="true">&times;</b>
              </button>
              <h3 class="modal-title"><center><?php echo $text_category; ?></center></h3>
            </div>
            <div class="modal-body">
              <ul class="nav">
                <?php $i=0; foreach ($categories as $category) { ?>

                  <?php if ($category['children']) { $i++;?>

                  <li class="open_down"><b <?php echo "class='collapsed' role='button' data-toggle='collapse' data-parent='#accordion' href='#collapse_$i' aria-expanded='false' aria-controls='collapse_$i'"; ?> tabindex="-1" ><?php echo $category['name']; ?></b></li>

                        <?php echo "<ul id='collapse_$i' class='collapse' role='tabpanel' aria-labelledby='heading_$i'>"; ?>
                          <li class="mod"><a tabindex="-1" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                          <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                          <?php foreach ($children as $child) { ?>
                          <li class="mod"><a tabindex="-1" href="<?php echo $child['href']; ?>"> <?php echo $child['name']; ?></a></li>
                          <?php } ?>
                        </ul>
                      <?php } ?>

                  <?php } else { ?>
                    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                  <?php } ?>

                <?php }?>
              </ul>
            </div>

          </div>
        </div>
      </div>

      </div>
    <?php } ?>
    <div class="col-sm-5 col-xs-12"><?php echo $search; ?></div>
    <div class="col-sm-3 col-xs-12 panel-links">
      <?php if ($logged) { ?>
        <a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i></a> <?php echo $text_logged; ?>&nbsp<a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></a>
      <?php } else { ?>
        <a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <?php echo $text_account; ?><span class="caret"></span></a>
      <?php } ?>
      <ul class="dropdown-menu">
        <?php if ($logged) { ?>
          <li><a href="<?php echo $account; ?>"><i class="fa fa-user"></i> <?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><i class="fa fa-history"></i> <?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $transaction; ?>"><i class="fa fa-history"></i> <?php echo $text_transaction; ?></a></li>
          <li><a href="<?php echo $download; ?>"><i class="fa fa-upload"></i> <?php echo $text_download; ?></a></li>
          <li><a href="<?php echo $logout; ?>"><i class="fa fa-sign-out"></i> <?php echo $text_logout; ?></a></li>
          <li><a href="<?php echo $shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <?php echo $text_shopping_cart; ?></a></li>
          <li><a href="<?php echo $checkout; ?>"><i class="fa fa-share"></i> <?php echo $text_checkout; ?></a></li>
        <?php } else { ?>
          <li><a href="<?php echo $register; ?>"><i class="fa fa-user-plus"></i> <?php echo $text_register; ?></a></li>
          <li><a href="<?php echo $login; ?>"><i class="fa fa-sign-in"></i> <?php echo $text_login; ?></a></li>
        <?php } ?>
      </ul>
      <a href="<?php echo $compare; ?>" id="compare-total" title="<?php echo $title_compare; ?>"><i class="fa fa-balance-scale"></i> <span class="total1"><?php echo $text_compare; ?></span></a>
      <a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $title_wishlist; ?>"><i class="fa fa-heart"></i> <span class="total"><?php echo $text_wishlist; ?></span></a>
    </div>
    <div class="col-sm-2 col-xs-12">
          <?php echo $cart; ?>
    </div>
  </div>
</nav>
