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
<section class="row justify-content-md-center my-5 inspiration">
	<div class="row justify-content-center mb-5">
		<h1 class="text-center inspiration">Inspiration</h1>
	 	<div class="horizontal-ruler" ></div>
	</div>
	 
		<?php 
		// Define our WP Query Parameters
		$query = new WP_Query( 'posts_per_page=4' ); ?>
		
		<?php 
		// Start our WP Query
		while ($query -> have_posts()) : $query -> the_post(); 
		// Display the Post Title with Hyperlink
		?>
		<div class="col-lg-3 col-md-6 p-2 justify-content-center">
			<div class="post-thumbnail p-2">
			<?php
				if ( has_post_thumbnail() ) { ?>
						<div class="position-relative img-fluid"> <?php the_post_thumbnail('full'); ?>
						<div class="position-absolute  translate-middle vertical-ruler px-3 pt-4 align-bottom">INSIGHT</div>
					    </div>
						
					<?php } ?>
				<h5 class="mt-5 post-title"><a href="<?php the_permalink() ?>"><?php the_title(); ?></a></h5>
				<div class="text-justify text-break pe-3" ><?php the_excerpt(__('(more…)')); ?></div>
			</div>	
		</div>
		<?php 
		// Repeat the process and reset once it hits the limit
		endwhile;
		wp_reset_postdata();
		?>

</section>
<section class="call-to-action row  d-lg-block d-none mb-5 px-5">
		<div class="row my-5 mb-5 px-5" >
			<?php  if(get_field('alternating_calls_to_action')): ?> 
				<div class="col-8 d-lg-block ">
					<img class="img-fluid w-100"  src="<?php  the_field('alternating_calls_to_action'); ?>" alt="alternating_calls_to_action" />
				</div>           
			<?php endif; ?>
			<div class="col-4 d-lg-block ">	
				<div class="call-to-action-text py-5" style="margin-left:-130px;padding:25px;">
					<div class="w-100 top-0 start-0 horizontal-ruler-no-width" ></div>
					<p class="bg-white p-4 mt-4 text-end fs-2 text"><?php the_field('calls_to_action_text'); ?></p>
					<a href="#" class="btn btn-primary round-0 float-end">VIEW OUR SERVICES</a>
				</div>
			</div>
		</div>
		<div class="row my-5 px-5">
			<div class="large-call-to-action-text col-lg-4 d-lg-block  " style="margin-right:-130px; padding:25px;z-index:2 ">
				<div class=" py-5" >
					<div class="w-100 top-0 start-0 horizontal-ruler-no-width"></div>
					<p class="bg-white p-4 mt-4 fs-3 text"><?php  the_field('action_section_text'); ?></p> 
					<a href="#" class="btn btn-primary round-0">LEARN MORE</a>
				</div>
			</div>
		<?php  if(get_field('action_section_image')): ?> 
			<div class="col-lg-8 d-lg-block">
				<img class="img-fluid w-100"  src="<?php  the_field('action_section_image'); ?>" alt="Hero" />
			</div>           
		<?php endif; ?>
			
		</div>
</section>
<!--  For mobile screen -->
<section class="d-xl-none d-lg-none d-md-block">
<div class="row my-5 px-2">
<?php  if(get_field('alternating_calls_to_action')): ?> 
    <div class=" d-md-block col-md-12 mb-4">
		<img class=" w-100"  src="<?php  the_field('alternating_calls_to_action'); ?>" alt="Hero" />
	</div>           
<?php endif; ?>
    <div class=" d-md-block col-md-12">	
        <div class="w-100" style="">
			<div class="w-100 horizontal-ruler-no-width" ></div>
            <p class="bg-white py-4 mt-2 text-end"><?php  the_field('calls_to_action_text'); ?></p>
			<a href="#" class="btn btn-primary round-0">VIEW OUR SERVICES</a>
       </div>
	</div>
</div>
<div class="row my-5 px-2">
<div class=" d-md-block col-md-12 " style="padding: 25px; ">
        <div class="w-100 ">
		<div class="horizontal-ruler-no-width"></div>
           <p class="bg-white py-4 mt-2"><?php  the_field('action_section_text'); ?></p> 
		   <a href="#" class="btn btn-primary round-0">LEARN MORE</a>
       </div>
	</div>
<?php  if(get_field('action_section_image')): ?> 
    <div class=" d-md-block col-md-12">
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
