<?php
/**
 * The Template for displaying product archives, including the main shop page which is a post type archive
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/archive-product.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see        https://docs.woocommerce.com/document/template-structure/
 * @author        WooThemes
 * @package    WooCommerce/Templates
 * @version     2.0.0
 */
if (!defined('ABSPATH')) {
    exit; // Exit if accessed directly
}

get_header('shop');
$dataCat = get_queried_object();
$cur = isset($_REQUEST['c']) ? is_numeric($_REQUEST['c']) ? $_REQUEST['c'] : 1 : 1;
$display = isset($_REQUEST['d']) ? is_numeric($_REQUEST['d']) ? $_REQUEST['d'] : DISPLAY_D : DISPLAY_D;
$keyword = isset($_REQUEST['s']) ? $_REQUEST['s'] : "";
$oDer = isset($_REQUEST['od']) ? is_numeric($_REQUEST['od']) ? $_REQUEST['od'] : 0 : 0;

$page = ceil($dataCat->count / $display);
if ($cur > $page || $cur < 1) {
    $cur = 1;
}
$offset = ($cur - 1) * $display;
$min = "";
$max = 0;
$arrOpHome = get_option('my_option_name');
?>

<div class="block-sp-featured ">
    <div class="block-title">
        <span class="title"><?php woocommerce_page_title(); ?></span>
    </div>
    <div class="block-content">
        <div class="owl-list-sp">
            <div class="item">
        <?php if (!empty($dataCat)) : ?>

            <?php
            $orderby = 'name';
            if ($oDer == 1 || $oDer == 0) {
                $orderby = 'date';
            } else if ($oDer == 2 || $oDer == 3) {
                $orderby = 'name';
            } else if ($oDer == 4 || $oDer == 5) {
                $orderby = 'price_sale';
            }
            if ($oDer % 2 == 0) {
                $order = 'ASC';
            } else {
                $order = 'DESC';
            }
            if ($page == "") {
                $display = 10000;
            }
            if ($keyword != "") {
                $params = array(
                    'posts_per_page' => $offset + $display,
                    'post_type' => 'product',
                    's'=>$keyword,
                    'post_status' => 'publish',
                    'orderby'     => 'title',
                    'offset' => $offset
                );
            } else {
                $params = array(
                    'offset' => $offset,
                    'posts_per_page' => $offset + $display,
                    'product_cat' => $dataCat->name,
                    'post_type' => 'product',
                    'orderby' => $orderby,
                    'order' => $order,
                );
            }

            $wc_query = new WP_Query($params);
            if ($wc_query->have_posts()) :
                while ($wc_query->have_posts()) :
                    $wc_query->the_post();
                    $_product = wc_get_product();
                    ?>
                    <div class="item-sp">
                        <div class="item-info">
                            <div class="item-photo showSp<?php echo $dataCate->term_id;?><?php the_ID(); ?>">
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
                            <div class="popover-content-<?php echo $dataCate->term_id;?><?php the_ID(); ?> popover-content">
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
                                jQuery(".showSp<?php echo $dataCate->term_id;?><?php the_ID(); ?>").popover({
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
            else:
                ?>
                <div class="col-md-12">
                    <p>Không có dữ liệu 2.</p>
                </div>
                <?php
            endif;
            ?>
        <?php elseif (!woocommerce_product_subcategories(array('before' => woocommerce_product_loop_start(false), 'after' => woocommerce_product_loop_end(false)))) : ?>

            <?php wc_get_template('loop/no-products-found.php'); ?>

        <?php endif; ?>
    </div>
    </div>
    </div>
    <?php if ($page > 1): ?>
        <ul class="pagination">
            <?php for ($numb = 1; $numb <= $page; $numb++) { ?>
                <li <?php if ($cur == $numb): ?>class="active"<?php endif; ?>><a
                            href="<?php echo get_category_link($dataCat->term_id) ?>?c=<?php echo $numb ?>&d=<?php echo $display; ?>"><?php echo $numb; ?></a>
                </li>
            <?php } ?>
        </ul>
    <?php endif; ?>
</div>

<?php get_footer('shop'); ?>
