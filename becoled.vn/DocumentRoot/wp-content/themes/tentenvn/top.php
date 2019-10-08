<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
?>
<div class="block-banner">
    <section class="owl-list-sp">
        <?php
        $args = [
            'post_type' => 'slick_slider',
            'tax_query' => [
                [
                    'taxonomy' => 'wpsisac_slider-category',
                    'terms' => 13,
                ],
            ],
            // Rest of your arguments
        ];
        $arrPost = get_posts($args);
        foreach ($arrPost as $dataPost) {
            ?>
            <div class="item">
                <a href="<?php echo esc_url(get_permalink($dataPost)); ?>">
                    <?php echo get_the_post_thumbnail($dataPost->ID, 'full'); ?>
                </a>
                <div class="caption">
                    <?php echo get_the_title($dataPost->ID); ?>
                </div>
            </div>
            <?php
        }
        ?>
    </section>
</div>
<div class="block-list-sp">
        <?php
        $taxonomy = 'product_cat';
        $orderby = 'name';
        $show_count = 0;      // 1 for yes, 0 for no
        $pad_counts = 0;      // 1 for yes, 0 for no
        $hierarchical = 1;      // 1 for yes, 0 for no  
        $title = '';
        $empty = 0;
        $args = array(
            'taxonomy' => $taxonomy,
            'orderby' => $orderby,
            'show_count' => $show_count,
            'pad_counts' => $pad_counts,
            'hierarchical' => $hierarchical,
            'title_li' => $title,
            'hide_empty' => $empty
        );
        $all_categories = get_categories($args);
        foreach ($all_categories as $dataCate) {
            if ($dataCate->parent == 0) {
                ?>
                <div class="block-title">
                    <span class="title"><?php echo $dataCate->name; ?></span>
                        <a href="<?php echo get_term_link($dataCate->slug, 'product_cat');?>"  class="btn-more">Xem thêm</a>
                    </div>
    <div class="block-content">
        <div class="owl-list-sp">
            <div class="item">
                        <?php
                        $params = array(
                            'offset' => 0,
                            'posts_per_page' => 4,
                            'product_cat' => $dataCate->name,
                            'post_type' => 'product',
                            'orderby' => 'date',
                        );
                         $wc_query = new WP_Query($params);
                        if ($wc_query->have_posts()) :
                            while ($wc_query->have_posts()) :
                                $wc_query->the_post();
                                $_product = wc_get_product();
                                ?>
                                <div class="item-sp">
                                    <div class="item-info">
                                        <div class="item-photo showSp<?php echo $dataCate->id;?><?php the_ID(); ?>">
                                            <span class="img"><a href="<?php the_permalink(); ?>"><?php the_post_thumbnail(); ?></a></span>
                                            <span class="model"><?php echo $_product->get_sku(); ?></span>
                                        </div>
                                        <div class="item-detail">
                                            <a href="<?php the_permalink(); ?>" class="item-name"><?php the_title(); ?> </a>
                                            <div class="caption">
                                                <?php the_excerpt(); ?>
                                            </div>
                                            <div class="price">
                                                <span>Giá: <?php echo number_format($_product->get_sale_price(), 0, ".", ",") . get_woocommerce_currency_symbol(); ?> </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="popover">
                                        <div class="popover-content-<?php echo $dataCate->id;?><?php the_ID(); ?> popover-content">
                                            <div class="block-quickview">
                                                <div class="block-title"><?php the_title(); ?></div>
                                                <div class="block-content">
                                                    <div class="img">
                                                        <a href="<?php the_permalink(); ?>"><?php the_post_thumbnail(); ?></a>
                                                    </div>
                                                    <div class="caption">
                                                        <?php the_excerpt(); ?>
                                                    </div>
                                                    <div class="item-detail clearfix">
                                                        <div class="price">
                                                            <span>Giá: <?php echo number_format($_product->get_sale_price(), 0, ".", ",") . get_woocommerce_currency_symbol(); ?> </span>
                                                        </div>
                                                        <span class="model"><?php echo $_product->get_sku(); ?></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <script type="text/javascript">
                                        jQuery(document).ready(function() {
                                                jQuery(".showSp<?php echo $dataCate->id;?><?php the_ID(); ?>").popover({
                                                    content: $('.popover-content-<?php echo $dataCate->id;?><?php the_ID(); ?>').html(),
                                                    placement: 'auto left',
                                                    trigger: 'hover',
                                                    container: 'body',
                                                    html: true
                                                });
                                            });
                                    </script>
                                </div>       
                                <?php
                            endwhile;
                        endif;
                        ?>
                    </div>
        </div>
    </div>
                </section> 
                <?php
            }
        }
        ?>
    </div>

