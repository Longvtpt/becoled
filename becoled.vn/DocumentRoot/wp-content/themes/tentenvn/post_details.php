<?php
if (is_page(array('cart'))) {
    // Do something.
    require_once 'woocommerce/cart/cart.php';
} elseif (is_page(array('checkout', 'my-account', 'product', 'category'))) {
    ?>
    <?php

    if (have_posts()) {
        while (have_posts()) {
            the_post();
            the_content();
        }
    }
    ?>
    <?php
} else {
    $dataPost = get_post($post_id);
    ?>

    <?php
    function search_by_title($search, $wp_query)
    {
        if (!empty($search) && !empty($wp_query->query_vars['search_terms'])) {
            global $wpdb;

            $q = $wp_query->query_vars;
            $n = !empty($q['exact']) ? '' : '%';

            $search = array();

            foreach ((array)$q['search_terms'] as $term)
                $search[] = $wpdb->prepare("$wpdb->posts.post_name LIKE %s", $n . $wpdb->esc_like($term) . $n);


            $search = ' AND ' . implode(' AND ', $search);
        }

        return $search;
    }

    ?>
    <div class="block-sp-featured ">
        <div class="block-title">
            <span class="title"><?php echo $dataPost->post_title; ?></span>
        </div>

        <div class="block-content">
            <?php echo $dataPost->post_content; ?>
        </div>
        <div id="comments">
            <div class="fb-comments" data-href="<{$smarty.const.SITE_URL}><{$url_h}>" data-width="828"
                 data-numposts="5"></div>
        </div>
    </div>
    <?php
}
?>