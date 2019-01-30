<?php
/**
 * The main template file.
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 * Learn more: http://codex.wordpress.org/Template_Hierarchy
 *
 * @package understrap
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly.
}

get_header();

$container = get_theme_mod( 'understrap_container_type' );
?>

<?php
include 'pub.php';
?>

<?php if ( is_front_page() && is_home() ) : ?>
	<?php get_template_part( 'global-templates/hero' ); ?>
<?php endif; ?>

<div class="wrapper" id="index-wrapper">

	<div class="<?php echo esc_attr( $container ); ?>" id="content" tabindex="-1">

		<div class="row">

			<!-- Do the left sidebar check and opens the primary div -->
			<?php get_template_part( 'global-templates/left-sidebar-check' ); ?>

			<main class="site-main" id="main">
			

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
						<?php $i = 0; while ($recentPosts->have_posts() && $i < 5) : $recentPosts->the_post();?>
						<div class="col-sm-12">
							<?php if ( has_post_thumbnail()) : ?>
								<div class="col-sm-6">
								<a href="" title=»<?php the_title_attribute(); ?> » >
								<?php the_post_thumbnail(‘large’); ?></a></div>
								<!-- <a href="" title=»<?php the_title_attribute(); ?> » > -->
								<!-- <div class="col-sm-12">
									<h3><a href="" title=»<?php the_title_attribute(); ?> »>
											<?php the_title(); ?></a></h3>
								</div> -->
								<?php endif ?>
						<?php $i++; endwhile ?>


						<?php $i = 0; while ($recentPosts->have_posts() && $i < 0) : $recentPosts->the_post();?>
						<article class="col-sm-12">
							<?php if ( has_post_thumbnail()) : ?>
								<div class="col-sm-3">
								<a href="" title=»<?php the_title_attribute(); ?> » >
								<?php the_post_thumbnail(‘large’); ?></a></div>
								<!-- <a href="" title=»<?php the_title_attribute(); ?> » > -->
								<!-- <div class="col-sm-12">
									<h3><a href="" title=»<?php the_title_attribute(); ?> »>
											<?php the_title(); ?></a></h3>
								</div> -->
								<?php endif ?>


								</div>
						<?php $i++; endwhile ?>
					</div>
				</div>

			</main><!-- #main -->

			<!-- The pagination component -->
			<?php understrap_pagination(); ?>

			<!-- Do the right sidebar check -->
			<?php get_template_part( 'global-templates/right-sidebar-check' ); ?>

		</div><!-- .row -->

<?php dynamic_sidebar( 'right-sidebar' ); ?>

</div><!-- #right-sidebar -->
</div>
	</div><!-- #content -->

</div><!-- #index-wrapper -->




<?php get_footer(); ?>
