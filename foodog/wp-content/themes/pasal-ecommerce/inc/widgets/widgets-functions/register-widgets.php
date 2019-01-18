<?php
/**
 *
 * @package Pasal-ecommerce
 * @since Pasal Ecommerce 1.0
 */
/**************** Pasal Ecommerce REGISTER WIDGETS ***************************************/
if (! function_exists('pasal_ecommerce_widgets_init')) {
	add_action('widgets_init', 'pasal_ecommerce_widgets_init');
	function pasal_ecommerce_widgets_init() {

		register_sidebar(array(
				'name' => __('Right Sidebar', 'pasal-ecommerce'),
				'id' => 'pasal_ecommerce_main_sidebar',
				'description' => __('Shows widgets at Main Sidebar.', 'pasal-ecommerce'),
				'before_widget' => '<aside id="%1$s" class="widget %2$s">',
				'after_widget' => '</aside>',
				'before_title' => '<h2 class="widget-title">',
				'after_title' => '</h2>',
			));
	}
}

   


if (in_array( 'woocommerce/woocommerce.php', apply_filters( 'active_plugins', get_option( 'active_plugins' ) ) ) ):
	if (! function_exists('pasal_ecommerce_woocommerce_sidebar')) {
		add_action('widgets_init', 'pasal_ecommerce_woocommerce_sidebar');
		function pasal_ecommerce_woocommerce_sidebar() {
			register_sidebar(array(
					'name' => __('WooCommerce Sidebar', 'pasal-ecommerce'),
					'id' => 'pasal_ecommerce_woocommerce_sidebar',
					'description' => __('Add WooCommerce Widgets Only', 'pasal-ecommerce'),
					'before_widget' => '<div id="A%1$s" class="widget %2$s">',
					'after_widget' => '</div>',
					'before_title' => '<h2 class="widget-title">',
					'after_title' => '</h2>',
				));
		}
	}
endif;