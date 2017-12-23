<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h2><?php echo $text_my_account; ?></h2>
      <ul class="list-unstyled" id="my_account">
        <li><a href="<?php echo $edit; ?>"><i class="fa fa-pencil-square"></i><?php echo $text_edit; ?></a></li>
        <li><a href="<?php echo $password; ?>"><i class="fa fa-unlock"></i><?php echo $text_password; ?></a></li>
        <li><a href="<?php echo $address; ?>"><i class="fa fa-home"></i><?php echo $text_address; ?></a></li>
        <li><a href="<?php echo $wishlist; ?>"><i class="fa fa-star"></i><?php echo $text_wishlist; ?></a></li>
        <li><a href="<?php echo $newsletter; ?>"><i class="fa fa-star"></i><?php echo $text_newsletter; ?></a></li>
      </ul>
      <h2><?php echo $text_my_orders; ?></h2>
      <ul class="list-unstyled" id="my_account">
        <li><a href="<?php echo $order; ?>"><i class="fa fa-shopping-cart"></i><?php echo $text_order; ?></a></li>
        <li><a href="<?php echo $download; ?>"><i class="fa fa-download"></i><?php echo $text_download; ?></a></li>
        <?php if ($reward) { ?>
        <li><a href="<?php echo $reward; ?>"><i class="fa fa-ticket"></i><?php echo $text_reward; ?></a></li>
        <?php } ?>
        <li><a href="<?php echo $return; ?>"><i class="fa fa-refresh"></i><?php echo $text_return; ?></a></li>
        <li><a href="<?php echo $transaction; ?>"><i class="fa fa-history"></i><?php echo $text_transaction; ?></a></li>
        <li><a href="<?php echo $recurring; ?>"><i class="fa fa-credit-card"></i><?php echo $text_recurring; ?></a></li>
      </ul>
      <?php if ($credit_cards) { ?>
      <h2><?php echo $text_credit_card; ?></h2>
      <ul class="list-unstyled">
        <?php foreach ($credit_cards as $credit_card) { ?>
          <li><a href="<?php echo $credit_card['href']; ?>"><?php echo $credit_card['name']; ?></a></li>
        <?php } ?>
      </ul>
      <?php } ?>

      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
