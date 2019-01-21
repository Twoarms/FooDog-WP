


<?php
/**
 * Post rendering content according to caller of get_template_part.
 *
 * @package understrap
 */

if ( ! defined( 'ABSPATH' ) ) {
    exit; // Exit if accessed directly.
}
?>


<article class="col-12 mb-5 d-flex" <?php post_class(); ?> id="post-<?php the_ID(); ?>">
    <div class="container-fluid ">
        <div class="row">
            <div class="entry-header col-4 m-0 p-0 ">
                <?php echo get_the_post_thumbnail( $post->ID, 'large' ); ?> <!--Image-->
            </div>
            <!--div image -->
            <div class="entry-content col-6 p-0">
                <div class="mb-3 mt-3 col-12 p-0">
                    <?php echo single_cat_title();?>
                </div>
                <div class="mb-5 mt-3 col-12 p-0 ">
                    <?php
                    the_title(
                        sprintf( '<h2 class="entry-title col-12 titre p-0 "><a href="%s" rel="bookmark" >', esc_url( get_permalink() ) ),
                        '</a></h2>'
                        );
                    ?>
                    <!--Titre de l'article -->
                </div>
                 <div class="m-0 mt-5 col-12 p-0 ">
                    <?php the_excerpt(); ?>
                </div>
                <div class="row">
                    <div><i class="fa fa-share fa-lg border rounded-circle offset-5"></i></div>
                    <p class="gray ml-4 mt-0">Share</p>
                    </div>
            </div><!-- .entry-content -->
        </div>
    </div> 
</article><!-- #post-## -->