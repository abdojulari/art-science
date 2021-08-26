			<?php
				// If Single or Archive (Category, Tag, Author or a Date based page).
				if ( is_single() || is_archive() ) :
			?>
					</div><!-- /.col -->

					<?php
						get_sidebar();
					?>

				</div><!-- /.row -->
			<?php
				endif;
			?>
		</main><!-- /#main -->
		<style>
          .watermark-container {
			background-image: url(<?php echo get_template_directory_uri(); ?>/images/watermark-norr.svg); background-repeat: no-repeat;
			border-top: 2px solid #ffa500;
		  }
		  
		</style>
		<footer id="footer">
		<div class="footer" style = "position: relative;" >
			<?php  if(get_field('footer_calls_to_action')): ?> 
					<img class="w-100"  style="height: 22.5em" src="<?php  the_field('footer_calls_to_action'); ?>" alt="footer" />
			<?php endif; ?>
			<div class="row " style="position: absolute;top: 50%;left: 50%;transform: translate(-50%, -50%);">
					<div class="col bg-white m-3 p-3 " >
						<p class="footer-font"><?php  the_field('contacts'); ?></p>
						<a href="#" class="btn btn-primary rounded-0 mt-2">CONTACT <span>&#62;</span></a>
				   </div>
					<div class="col  bg-white m-3 p-3 ">
						<p class="footer-font"><?php  the_field('join_us'); ?></p>
						<a href="#" class="btn btn-primary rounded-0 mt-2">JOIN US <span>&#62;</span></a>
					</div>
			</div>
       </div>
	   <div class="container-fluid watermark-container">
			<div class="container-fluid">
				<div class="row " >
					<div class="col py-4 px-4 mr-auto">
						<img  src="<?php echo get_template_directory_uri(); ?>/images/logo-norr.svg" alt="">	
					</div>
					<div class="col  py-4 px-2 align-self-end ">
						<ul class="justify-content-end d-flex flex-row">
							<li><a class="mx-2" href="#" ><img  src="<?php echo get_template_directory_uri(); ?>/images/icon-facebook.svg" alt="facebook"></a></li>
							<li><a class="mx-2" href="#" ><img  src="<?php echo get_template_directory_uri(); ?>/images/icon-twitter.svg" alt="twitter"></a></li>
							<li><a class="mx-2" href="#" ><img  src="<?php echo get_template_directory_uri(); ?>/images/icon-instagram.svg" alt="instagram"></a></li>
							<li><a class="mx-2" href="#" ><img  src="<?php echo get_template_directory_uri(); ?>/images/icon-linkedin.svg" alt="facebook"></a></li>
							<li><a class="" href="#" ><img  src="<?php echo get_template_directory_uri(); ?>/images/icon-youtube.svg" alt="facebook"></a></li>
						</ul>	
					</div>
				</div>
			</div>
				<div class="row">
					<?php
						if ( has_nav_menu( 'footer-menu' ) ) : // See function register_nav_menus() in functions.php
							/*
								Loading WordPress Custom Menu (theme_location) ... remove <div> <ul> containers and show only <li> items!!!
								Menu name taken from functions.php!!! ... register_nav_menu( 'footer-menu', 'Footer Menu' );
								!!! IMPORTANT: After adding all pages to the menu, don't forget to assign this menu to the Footer menu of "Theme locations" /wp-admin/nav-menus.php (on left side) ... Otherwise the themes will not know, which menu to use!!!
							*/
							wp_nav_menu(
								array(
									'theme_location'  => 'footer-menu',
									'container'       => 'nav',
									'container_class' => 'offset-md-6 col-md-6',
									'fallback_cb'     => '',
									'items_wrap'      => '<ul class="menu nav pb-3 text-white justify-content-end">%3$s</ul>',
									//'fallback_cb'    => 'WP_Bootstrap4_Navwalker_Footer::fallback',
									'walker'          => new WP_Bootstrap4_Navwalker_Footer(),
								)
							);
						endif;

						if ( is_active_sidebar( 'third_widget_area' ) ) :
					?>
						<div class="col-md-12">
							<?php
								dynamic_sidebar( 'third_widget_area' );
								if ( current_user_can( 'manage_options' ) ) :
							?>
								<span class="edit-link"><a href="<?php echo esc_url( admin_url( 'widgets.php' ) ); ?>" class="badge badge-secondary"><?php esc_html_e( 'Edit', 'arts-and-science-theme' ); ?></a></span><!-- Show Edit Widget link -->
							<?php
								endif;
							?>
						</div>
					<?php
						endif;
					?>
				</div><!-- /.row -->
			</div><!-- /.container -->
			<div class="container-fluid copy-right no-gutter">
				<div class="row justify-content-end">
					<div class="offset-md-8 col-md-4">
						<p class="text-right pt-2"><?php printf( esc_html__( '&copy; %1$s %2$s | Website by Art & Science', 'arts-and-science-theme' ), date_i18n( 'Y' ), get_bloginfo( 'name', 'display' ) ); ?></p>		
					</div>
				</div>
			</div>
		</footer><!-- /#footer -->	
		
	</div><!-- /#wrapper -->

	<?php
		wp_footer();
	?>
</body>
</html>
