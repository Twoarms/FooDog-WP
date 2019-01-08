<form method="get" id="searchform" action="<?php bloginfo('home'); ?>">
    <div>
        <input type="text" name="s" id="s" value="<?php the_search_query(); ?>">
        <input type="submit" id="searchsubmit" value="Chercher">
    </div>
</form>