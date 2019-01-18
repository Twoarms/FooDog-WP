<footer>
	<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after
 *
 * @package understrap
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly.
}

$container = get_theme_mod( 'understrap_container_type' );
?>

	<?php get_template_part( 'sidebar-templates/sidebar', 'footerfull' ); ?>

	<div class="wrapper" id="wrapper-footer">

		<div class="<?php echo esc_attr( $container ); ?>">

			<div class="row">

				<div class="col-md-12">

					<div class="site-footer" id="colophon">

						<div class="site-info">

							<?php understrap_site_info(); ?>

						</div><!-- .site-info -->

					</div><!-- #colophon -->

				</div>
				<!--col end -->

			</div><!-- row end -->

		</div><!-- container end -->

	</div><!-- wrapper end -->

	<div class="footernav">
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="footertitle">CATAGORIES</div>
					<?php wp_nav_menu('footer-menu')
			?>
				</div>
				<div class="col-sm">
					<div class="footertitle">POPULAR POST</div>
					<?php

				$recentPosts = new WP_Query();

				$sticky = get_option('sticky_posts');

				$args = array(
				
				'order' => 'DSC',
				
				'orderby' => 'date',
				
				'post__in' => $sticky,
				
				);

				$recentPosts->query($args);

				?>

					<div class="row">
						<?php $i = 0; while ($recentPosts->have_posts() && $i < 3) : $recentPosts->the_post();?>
						<article class="col-sm-12">
							<div class="row">
								<?php if ( has_post_thumbnail()) : ?>
								<a href="" title=»<?php the_title_attribute(); ?> » >
									<?php the_post_thumbnail(‘large’); ?></a>
								<div class="col-sm-6">
									<h3><a href="" title=»<?php the_title_attribute(); ?> »>
											<?php the_title(); ?></a></h3>
								</div>
								<?php endif ?>
						</article>




						<?php $i++; endwhile ?>
					</div>
				</div>
				<div class="col-sm-">
					<div class="footertitle">INSTAGRAM</div>

					<!-- InstaWidget http://instawidget.net/generate -->
					<a href="https://instawidget.net/v/tag/animauxdroles" id="link-ca731a9b0baf219e286ae73a9ab88120b275698bbce51c31a0b928682d973777">#animauxdroles</a>
					<script src="https://instawidget.net/js/instawidget.js?u=ca731a9b0baf219e286ae73a9ab88120b275698bbce51c31a0b928682d973777&width=300px"></script>
				</div>
			</div>
		</div>
	</div>
	<div class="footernav2" id="footerfin1">
		<div class="container">
			<div class="row">
				<div id="footerfin" class="footerarrow col-sm-12 col-lg-12">
					<div class="m-0 p-0 d-flex justify-content-center"></div>
					<a href="#"><i class="fab fa-instagram"></i></a>
					<a href="#"><i class="fab fa-twitter"></i></a>
					<a href="#"><i class="fab fa-facebook-f"></i></a>
				</div>
			</div>
		</div>
	</div>
	</div>

	</div>
	<?php wp_footer(); ?>
	</div><!-- #page we need this extra closing tag here -->
</footer>

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="wp-content/themes/understrap_child/js/arrow.js"></script>
</body>

</html>