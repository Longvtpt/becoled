<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$dataCat = get_queried_object();
$cur = isset($_REQUEST['c']) ? is_numeric($_REQUEST['c']) ? $_REQUEST['c'] : 1 : 1;
$display = isset($_REQUEST['d']) ? is_numeric($_REQUEST['d']) ? $_REQUEST['d'] : DISPLAY_D : DISPLAY_D;

$page = ceil($dataCat->count / $display);
if ($cur > $page || $cur < 1) {
    $cur = 1;
}
$offset = ($cur - 1) * $display;
$arrPost = get_posts(array(
    'category' => $cat_id,
    'offset' => $offset,
    'posts_per_page' => $offset + $display,
    'orderby' => 'name',
    'order' => 'ASC'
        ));
?>
    <div class="block-sp-featured ">
        <div class="block-title">
            <span class="title"><?php echo $cat_name; ?></span>
        </div>
            <div class="row">
                <?php
            if (!empty($arrPost)) {
                foreach ($arrPost as $dataPost) {
                    ?>
                    <div class="col-md-4 col-sm-12">
                        <div class="item-product2">
                            <div class="img-product">
                                <a href="<?php echo esc_url(get_permalink($dataPost)); ?>">
                                    <?php echo get_the_post_thumbnail($dataPost->ID, 'small'); ?>
                                </a>
                            </div>
                            <div class="caption">
                                <a href="<?php echo esc_url(get_permalink($dataPost)); ?>" class="name-product"><?php echo $dataPost->post_title; ?></a>
                                <p><?php echo cutText(getplaintextintrofromhtml($dataPost->post_content), 250); ?></p>
                                <a href="<?php echo esc_url(get_permalink($dataPost)); ?>" class="more">Xem thêm.....</a>
                            </div>
                        </div>
                    </div>
                    <?php
                }
            } else {
                ?>
                <img style="width: 500px;margin: 10px 25%;" alt="" src="http://theleatherworld.net/images/noresult.png"/>
                <?php
            }
            ?>
            </div>
            <?php if ($page > 1): ?>
                <ul class="pagination">
                    <?php for ($numb = 1; $numb <= $page; $numb++) { ?>
                        <li <?php if ($cur == $numb): ?>class="active"<?php endif; ?>><a href="<?php echo get_category_link($dataCat->term_id) ?>?c=<?php echo $numb ?>&d=<?php echo $display; ?>" ><?php echo $numb; ?></a></li> 
                    <?php } ?>
                </ul>
            <?php endif; ?>
    </div>