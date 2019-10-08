<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class MySettings {

    /**
     * Holds the values to be used in the fields callbacks
     */
    private $options;

    /**
     * Start up
     */
    public function __construct() {
        add_action('admin_menu', array($this, 'add_plugin_page'));
        add_action('admin_init', array($this, 'page_init'));
    }

    /**
     * Add options page
     */
    public function add_plugin_page() {
        // This page will be under "Settings"
        add_options_page(
                'Settings Admin', 'Cài đặt trang chủ', 'manage_options', 'my-setting-admin', array($this, 'create_admin_page')
        );
    }

    /**
     * Options page callback
     */
    public function create_admin_page() {
        // Set class property
        $this->options = get_option('my_option_name');
        ?>
        <div class="wrap">
            <h1>Cài đặt trang chủ</h1>
            <form method="post" action="options.php">
                <?php
                // This prints out all hidden setting fields
                settings_fields('my_option_group');
                do_settings_sections('my-setting-admin');
                submit_button();
                ?>
            </form>
        </div>
        <?php
    }

    /**
     * Register and add settings
     */
    public function page_init() {
        register_setting(
                'my_option_group', // Option group
                'my_option_name', // Option name
                array($this, 'sanitize') // Sanitize
        );

        add_settings_section(
                'setting_section_id', // ID
                'Cài đặt thông tin hiển thị trên website.', // Title
                array($this, 'print_section_info'), // Callback
                'my-setting-admin' // Page
        );

        add_settings_field(
                'hotline', 'Hotline', array($this, 'hotline_callback'), 'my-setting-admin', 'setting_section_id'
        );
        add_settings_field(
                'hotline2', 'Hotline 2', array($this, 'hotline2_callback'), 'my-setting-admin', 'setting_section_id'
        );
        add_settings_field(
                'email_home', 'Email', array($this, 'email_home_callback'), 'my-setting-admin', 'setting_section_id'
        );
        add_settings_field(
                'link_face', 'Link Fanpage', array($this, 'link_face_callback'), 'my-setting-admin', 'setting_section_id'
        );
        add_settings_field(
                'link_twitter', 'Link Twitter', array($this, 'link_twitter_callback'), 'my-setting-admin', 'setting_section_id'
        );
        add_settings_field(
                'link_youtobe', 'Link Youtube', array($this, 'link_youtube_callback'), 'my-setting-admin', 'setting_section_id'
        );
        add_settings_field(
                'link_instagram', 'Link Instagram', array($this, 'link_instagram_callback'), 'my-setting-admin', 'setting_section_id'
        );
        add_settings_field(
                'link_google', 'Link Google+', array($this, 'link_google_callback'), 'my-setting-admin', 'setting_section_id'
        );
        add_settings_field(
                'link_footer1', 'Link Cộng đồng google yêu thích', array($this, 'link_footer1_callback'), 'my-setting-admin', 'setting_section_id'
        );
        add_settings_field(
                'img_footer1', 'Link hình ảnh Cộng đồng google ( 280 x *)', array($this, 'img_footer1_callback'), 'my-setting-admin', 'setting_section_id'
        );
        add_settings_field(
                'link_footer2', 'Khuyến mại hot', array($this, 'link_footer2_callback'), 'my-setting-admin', 'setting_section_id'
        );
        add_settings_field(
                'img_footer2', 'Link hình ảnh Khuyến mại hot ( 280 x *)', array($this, 'img_footer2_callback'), 'my-setting-admin', 'setting_section_id'
        );
        add_settings_field(
                'link_qcao1', 'Link Quảng cáo 1', array($this, 'link_qcao1_callback'), 'my-setting-admin', 'setting_section_id'
        );
        add_settings_field(
                'qcao1', 'Link hình ảnh Quảng cáo 1 ( 280 x *)', array($this, 'qcao1_callback'), 'my-setting-admin', 'setting_section_id'
        );
        add_settings_field(
                'link_qcao1', 'Link Quảng cáo 1', array($this, 'link_qcao1_callback'), 'my-setting-admin', 'setting_section_id'
        );
        add_settings_field(
                'qcao1', 'Link hình ảnh Quảng cáo 1 ( 280 x *)', array($this, 'qcao1_callback'), 'my-setting-admin', 'setting_section_id'
        );
        add_settings_field(
                'link_qcao2', 'Link Quảng cáo 2', array($this, 'link_qcao2_callback'), 'my-setting-admin', 'setting_section_id'
        );
        add_settings_field(
                'qcao2', 'Link hình Quảng cáo 2 ( 1120 x *)', array($this, 'qcao2_callback'), 'my-setting-admin', 'setting_section_id'
        );
        add_settings_field(
                'video', 'Mã nhúng video', array($this, 'video_callback'), 'my-setting-admin', 'setting_section_id'
        );
        add_settings_field(
                'footer', 'Footer', array($this, 'footer_callback'), 'my-setting-admin', 'setting_section_id'
        );
    }

    /**
     * Sanitize each setting field as needed
     *
     * @param array $input Contains all settings fields as array keys
     */
    public function sanitize($input) {
        $new_input = array();
        if (isset($input['hotline']))
            $new_input['hotline'] = sanitize_text_field($input['hotline']);

        if (isset($input['hotline2']))
            $new_input['hotline2'] = sanitize_text_field($input['hotline']);

        if (isset($input['email_home']))
            $new_input['email_home'] = sanitize_text_field($input['email_home']);

        if (isset($input['link_face']))
            $new_input['link_face'] = sanitize_text_field($input['link_face']);

        if (isset($input['link_twitter']))
            $new_input['link_twitter'] = sanitize_text_field($input['link_twitter']);

        if (isset($input['link_youtobe']))
            $new_input['link_youtobe'] = sanitize_text_field($input['link_youtobe']);

        if (isset($input['link_instagram']))
            $new_input['link_instagram'] = sanitize_text_field($input['link_instagram']);

        if (isset($input['link_google']))
            $new_input['link_google'] = sanitize_text_field($input['link_google']);

        if (isset($input['video']))
            $new_input['video'] = $input['video'];

        if (isset($input['qcao1']))
            $new_input['qcao1'] = sanitize_text_field($input['qcao1']);
        
        if (isset($input['link_qcao2']))
            $new_input['link_qcao2'] = sanitize_text_field($input['link_qcao2']);
        
        if (isset($input['link_footer1']))
            $new_input['link_footer1'] = sanitize_text_field($input['link_footer1']);
        
        if (isset($input['img_footer1']))
            $new_input['img_footer1'] = ($input['img_footer1']);
        
        if (isset($input['link_footer2']))
            $new_input['link_footer2'] = sanitize_text_field($input['link_footer2']);
        
        if (isset($input['img_footer2']))
            $new_input['img_footer2'] = $input['img_footer2'];
        
        if (isset($input['link_qcao1']))
            $new_input['link_qcao1'] = sanitize_text_field($input['link_qcao1']);

        if (isset($input['qcao2']))
            $new_input['qcao2'] = sanitize_text_field($input['qcao2']);

        if (isset($input['footer']))
            $new_input['footer'] = $input['footer'];

        return $new_input;
    }

    /**
     * Print the Section text
     */
    public function print_section_info() {
        print 'Bạn vui lòng nhập các thông tin sau:';
    }

    /**
     * Get the settings option array and print one of its values
     */
    public function footer_callback() {
        $content = isset($this->options['footer']) ? $this->options['footer'] : '';
        $editor_id = 'footer';
        $settings = array(
            'textarea_name' => 'my_option_name[footer]',
        );
        wp_editor($content, $editor_id, $settings);
    }

    public function link_twitter_callback() {
        printf(
                '<input class="form-control" type="text" id="link_twitter" name="my_option_name[link_twitter]" value="%s" />', isset($this->options['link_twitter']) ? esc_attr($this->options['link_twitter']) : ''
        );
    }

    public function link_youtube_callback() {
        printf(
                '<input class="form-control" type="text" id="link_youtobe" name="my_option_name[link_youtobe]" value="%s" />', isset($this->options['link_youtobe']) ? esc_attr($this->options['link_youtobe']) : ''
        );
    }

    public function link_instagram_callback() {
        printf(
                '<input class="form-control" type="text" id="link_instagram" name="my_option_name[link_instagram]" value="%s" />', isset($this->options['link_instagram']) ? esc_attr($this->options['link_instagram']) : ''
        );
    }

    public function link_face_callback() {
        printf(
                '<input class="form-control" type="text" id="link_face" name="my_option_name[link_face]" value="%s" />', isset($this->options['link_face']) ? esc_attr($this->options['link_face']) : ''
        );
    }

    public function link_google_callback() {
        printf(
                '<input class="form-control" type="text" id="link_google" name="my_option_name[link_google]" value="%s" />', isset($this->options['link_google']) ? esc_attr($this->options['link_google']) : ''
        );
    }

    public function hotline2_callback() {
        printf(
                '<input class="form-control" type="text" id="hotline2" name="my_option_name[hotline2]" value="%s" />', isset($this->options['hotline2']) ? esc_attr($this->options['hotline2']) : ''
        );
    }

    public function hotline_callback() {
        printf(
                '<input class="form-control" type="text" id="hotline" name="my_option_name[hotline]" value="%s" />', isset($this->options['hotline']) ? esc_attr($this->options['hotline']) : ''
        );
    }

    public function qcao1_callback() {
        printf(
                '<input class="form-control" type="text" id="qcao1" name="my_option_name[qcao1]" value="%s" />', isset($this->options['qcao1']) ? esc_attr($this->options['qcao1']) : ''
        );
    }

    public function link_footer1_callback() {
        printf(
                '<input class="form-control" type="text" id="link_footer1" name="my_option_name[link_footer1]" value="%s" />', isset($this->options['link_footer1']) ? esc_attr($this->options['link_footer1']) : ''
        );
    }
    public function img_footer1_callback() {
        printf(
                '<input class="form-control" type="text" id="img_footer1" name="my_option_name[img_footer1]" value="%s" />', isset($this->options['img_footer1']) ? esc_attr($this->options['img_footer1']) : ''
        );
    }
    
    public function link_footer2_callback() {
        printf(
                '<input class="form-control" type="text" id="link_footer1" name="my_option_name[link_footer1]" value="%s" />', isset($this->options['link_footer1']) ? esc_attr($this->options['link_footer1']) : ''
        );
    }
    public function img_footer2_callback() {
        printf(
                '<input class="form-control" type="text" id="img_footer2" name="my_option_name[img_footer2]" value="%s" />', isset($this->options['img_footer2']) ? esc_attr($this->options['img_footer2']) : ''
        );
    }
    public function qcao2_callback() {
        printf(
                '<input class="form-control" type="text" id="qcao2" name="my_option_name[qcao2]" value="%s" />', isset($this->options['qcao2']) ? esc_attr($this->options['qcao2']) : ''
        );
    }
    public function link_qcao2_callback() {
        printf(
                '<input class="form-control" type="text" id="link_qcao2" name="my_option_name[link_qcao2]" value="%s" />', isset($this->options['link_qcao2']) ? esc_attr($this->options['link_qcao2']) : ''
        );
    }
    public function link_qcao1_callback() {
        printf(
                '<input class="form-control" type="text" id="link_qcao1" name="my_option_name[link_qcao1]" value="%s" />', isset($this->options['link_qcao1']) ? esc_attr($this->options['link_qcao1']) : ''
        );
    }

    public function video_callback() {
        printf(
                '<textarea style="height:110px" class="form-control" id="video" name="my_option_name[video]">%s</textarea>', isset($this->options['video']) ? esc_attr($this->options['video']) : ''
        );
    }

    /**
     * Get the settings option array and print one of its values
     */
    public function email_home_callback() {
        printf(
                '<input class="form-control" type="text" id="email_home" name="my_option_name[email_home]" value="%s" />', isset($this->options['email_home']) ? esc_attr($this->options['email_home']) : ''
        );
    }

}
