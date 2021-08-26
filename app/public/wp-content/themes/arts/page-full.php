<?php
/**
 * Template Name: Page (Full width)
 * Description: Page template full width.
 *
 */

get_header();

the_post();
?>
<div id="post-<?php the_ID(); ?>" <?php post_class( 'content' ); ?>>
	<h1 class="entry-title"><?php // the_ID(); ?></h1>


	<?php
		the_content();

		wp_link_pages( array(
			'before' => '<div class="page-links">' . __( 'Pages:', 'arts-and-science-theme' ),
			'after'  => '</div>',
		) );
		edit_post_link( __( 'Edit', 'arts-and-science-theme' ), '<span class="edit-link">', '</span>' );
	?>
</div><!-- /#post-<?php the_ID(); ?> -->
<section class="row justify-content-center my-5 inspiration">
	<div class="row justify-content-center mb-5">
		<h2 class="text-center inspiration">Inspiration</h2>
	 	<div class="horizontal-ruler" ></div>
	</div>
	 
		<?php 
		// Define our WP Query Parameters
		$the_query = new WP_Query( 'posts_per_page=4' ); ?>
		
		<?php 
		// Start our WP Query
		while ($the_query -> have_posts()) : $the_query -> the_post(); 
		// Display the Post Title with Hyperlink
		?>
		<div class="col-lg-3 ">
			<div class="w-100 m-2 p-2 post-thumbnail">
			<?php
				if ( has_post_thumbnail() ) { ?>
						<div class="position-relative"> <?php the_post_thumbnail('full'); ?>
						<div class="position-absolute  translate-middle vertical-ruler px-3 pt-4 align-bottom">INSIGHT</div>
					    </div>
						
					<?php } ?>
				<h5 class="mt-4 post-title"><a href="<?php the_permalink() ?>"><?php the_title(); ?></a></h5>
				<p><?php the_excerpt(__('(more…)')); ?></p>
			</div>	
		</div>
		<?php 
		// Repeat the process and reset once it hits the limit
		endwhile;
		wp_reset_postdata();
		?>

</section>
<section class="row mb-5">
<div class="row my-5 px-5">
<?php  if(get_field('alternating_calls_to_action')): ?> 
    <div class="col-lg-8 d-lg-block d-none">
		<img class="img-fluid w-100"  src="<?php  the_field('alternating_calls_to_action'); ?>" alt="Hero" />
	</div>           
<?php endif; ?>
    <div class="col-lg-4 d-lg-block d-none position-relative ">	
        <div class=" position-absolute top-50 start-0 translate-middle" style="">
			<div class="position-absolute w-100 top-0 start-0 horizontal-ruler-no-width" ></div>
            <p class="bg-white p-4 mt-4"><?php  the_field('calls_to_action_text'); ?></p>
			<a href="#" class="btn btn-primary round-0 float-end">VIEW OUR SERVICES</a>
       </div>
	</div>
</div>
<div class="row my-5 px-5">
<div class="col-lg-4 d-lg-block d-none position-relative" style="padding: 25px; ">
        <div class="w-100 position-absolute top-50 start-100 translate-middle">
		<div class="position-absolute w-100 top-0 start-0 horizontal-ruler-no-width"></div>
           <p class="bg-white p-4 mt-4"><?php  the_field('action_section_text'); ?></p> 
		   <a href="#" class="btn btn-primary round-0">LEARN MORE</a>
       </div>
	</div>
<?php  if(get_field('action_section_image')): ?> 
    <div class="col-lg-8 d-lg-block d-none">
		<img class="img-fluid w-100"  src="<?php  the_field('action_section_image'); ?>" alt="Hero" />
	</div>           
<?php endif; ?>
    
</div>
</section>
<!--  For mobile screen -->
<section class="row d-xl-none d-lg-none d-md-block">
<div class="row my-5 px-5">
<?php  if(get_field('alternating_calls_to_action')): ?> 
    <div class="d-xl-none d-lg-none d-md-block col-md-12 mb-4">
		<img class="img-fluid w-100"  src="<?php  the_field('alternating_calls_to_action'); ?>" alt="Hero" />
	</div>           
<?php endif; ?>
    <div class="d-xl-none d-lg-none d-md-block col-md-12">	
        <div class="" style="">
			<div class="w-100 horizontal-ruler-no-width" ></div>
            <p class="bg-white py-4 mt-2"><?php  the_field('calls_to_action_text'); ?></p>
			<a href="#" class="btn btn-primary round-0">VIEW OUR SERVICES</a>
       </div>
	</div>
</div>
<div class="row my-5 px-5">
<div class="d-xl-none d-lg-none d-md-block col-md-12 " style="padding: 25px; ">
        <div class="w-100 ">
		<div class="horizontal-ruler-no-width"></div>
           <p class="bg-white py-4 mt-2"><?php  the_field('action_section_text'); ?></p> 
		   <a href="#" class="btn btn-primary round-0">LEARN MORE</a>
       </div>
	</div>
<?php  if(get_field('action_section_image')): ?> 
    <div class="d-xl-none d-lg-none d-md-block col-md-12">
		<img class="img-fluid w-100"  src="<?php  the_field('action_section_image'); ?>" alt="Hero" />
	</div>           
<?php endif; ?>
    
</div>
</section>
<!-- end of mobile screen -->
<?php
	// If comments are open or we have at least one comment, load up the comment template.
	if ( comments_open() || get_comments_number() ) :
		comments_template();
	endif;

get_footer();
