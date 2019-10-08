<?php
/**
 * Login form
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/global/form-login.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see 	    https://docs.woocommerce.com/document/template-structure/
 * @author 		WooThemes
 * @package 	WooCommerce/Templates
 * @version     2.1.0
 */
if (!defined('ABSPATH')) {
    exit; // Exit if accessed directly
}

if (is_user_logged_in()) {
    return;
}
?>
<form method="post" class="login" <?php if ($hidden) echo 'style="display:none;"'; ?>>
    
<?php do_action('woocommerce_login_form_start'); ?>
    
    <?php if ($message) echo wpautop(wptexturize($message)); ?>

    <div class="tendangnhap">
        <input type="text" class="input-text" placeholder="Tài khoản đăng nhập" name="username" id="username" />
    </div>
    <p class="hovaten">
        <input class="input-text" type="password" placeholder="Mật khẩu" name="password" id="password" />
    </p>
    <div class="clear"></div>

<?php do_action('woocommerce_login_form'); ?>

    <p class="form-row">
<?php wp_nonce_field('woocommerce-login'); ?>
        <input style="margin-left: 15px;" type="submit" class="btntieptuc" name="login" value="<?php esc_attr_e('Đăng nhập', 'woocommerce'); ?>" />
        <input type="hidden" name="redirect" value="<?php echo esc_url($redirect) ?>" />
        <label for="rememberme" class="inline">
            <input name="rememberme" type="checkbox" id="rememberme" value="forever" /> <?php _e('Ghi nhớ mật khẩu', 'woocommerce'); ?>
        </label>
    </p>
    <p class="vuilongnhaptt" style="padding-left: 5px">
        <a href="<?php echo esc_url(wp_lostpassword_url()); ?>"><?php _e('Bạn quên mật khẩu?', 'woocommerce'); ?></a>
    </p>

    <div class="clear"></div>

<?php do_action('woocommerce_login_form_end'); ?>

</form>
