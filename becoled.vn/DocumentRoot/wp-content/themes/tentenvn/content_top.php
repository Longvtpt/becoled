<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$cat_id = 0;
$post_id = 0;
if (is_category()) {
    if (is_single()) {
        $cats = get_the_category();
        $cat = $cats[0];
    } else {
        $cat = get_category(get_query_var('cat'));
    }
    $cat_id = isset($cat->term_id) ? $cat->term_id : 0;
    $cat_name = isset($cat->name) ? $cat->name : "Không tên";
} else {
    $postAr = get_the_ID();
    if (is_numeric($postAr)) {
        $post_id = $postAr;
    } else {
        $post_id = isset($postAr->term_id) ? $postAr->term_id : 0;
    }
}
?>
<?php if ($cat_id > 0): ?>
    <?php
    require_once 'category_list.php';
    ?>
<?php elseif (is_home()):
    require_once 'top.php';
elseif (is_page()):
    require_once 'post_details.php';
else:
    require_once 'post_details.php';
endif;
?>
