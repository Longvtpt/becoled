<?php
/**
 * Checkout billing information form
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/checkout/form-billing.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woothemes.com/document/template-structure/
 * @author  WooThemes
 * @package WooCommerce/Templates
 * @version 2.1.2
 */
if (!defined('ABSPATH')) {
    exit; // Exit if accessed directly
}
/** @global WC_Checkout $checkout */
?>
<style>
    .detailkh textarea {
        //display: none !important;
        border: 1px solid#007382;
        border-radius: 10px;
        width: 80%;
        margin-top: 10px;
        color: #999;
        padding: 10px;
    }
    #createaccount{
        height: 15px !important;
        width: 15px !important;
    }
</style>
<?php if (wc_ship_to_billing_address_only() && WC()->cart->needs_shipping()) : ?>



<?php else : ?>


<?php endif; ?>

<?php do_action('woocommerce_before_checkout_billing_form', $checkout); ?>

<div class="hovaten detailkh" style="float: left;margin-top: 10px; width:100%">
    <?php foreach ($checkout->checkout_fields['billing'] as $key => $field) : ?>

        <?php woocommerce_form_field($key, $field, $checkout->get_value($key)); ?>

    <?php endforeach; ?>

    <?php do_action('woocommerce_after_checkout_billing_form', $checkout); ?>

    <?php if (!is_user_logged_in() && $checkout->enable_signup) : ?>

        <?php if ($checkout->enable_guest_checkout) : ?>

            <p class="form-row form-row-wide create-account">
                <input class="input-checkbox" id="createaccount" <?php checked(( true === $checkout->get_value('createaccount') || ( true === apply_filters('woocommerce_create_account_default_checked', false) )), true) ?> type="checkbox" name="createaccount" value="1" /> <label for="createaccount" class="checkbox"><?php _e('Tạo tài khoản mới?', 'woocommerce'); ?></label>
            </p>

        <?php endif; ?>

        <?php do_action('woocommerce_before_checkout_registration_form', $checkout); ?>

        <?php if (!empty($checkout->checkout_fields['account'])) : ?>

            <div class="create-account">

                <p><?php _e('', 'woocommerce'); ?></p>

                <?php foreach ($checkout->checkout_fields['account'] as $key => $field) : ?>

                    <?php woocommerce_form_field($key, $field, $checkout->get_value($key)); ?>

                <?php endforeach; ?>

                <div class="clear"></div>

            </div>

        <?php endif; ?>

        <?php do_action('woocommerce_after_checkout_registration_form', $checkout); ?>

    <?php endif; ?>
</div>
