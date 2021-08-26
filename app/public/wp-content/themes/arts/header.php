<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <?php wp_head(); ?>
</head>

<?php
    $navbar_scheme   = get_theme_mod( 'navbar_scheme', 'navbar-light bg-gray' ); // Get custom meta-value.
    $navbar_position = get_theme_mod( 'navbar_position', 'static' ); // Get custom meta-value.

    $search_enabled  = get_theme_mod( 'search_enabled', '1' ); // Get custom meta-value.
?>

<body <?php body_class(); ?>>

<?php wp_body_open(); ?>

<a href="#main" class="visually-hidden-focusable"><?php esc_html_e( 'Skip to main content', 'arts-and-science-theme' ); ?></a>
<div id="wrapper">
    <header class="bg-gray" style="margin-top:-10px;git ">
        <div class="container pt-2">
            <div class="my-2 ml-auto">
                    <ul class="header-text d-flex flex-row list-unstyled justify-content-end">
                        <li class=" px-2">&#128269;<span class="px-1">Search</span></li>
                        <li class=" px-2">Login</li>
                        <li class="">Covid-19 Info</li>
                    </ul>
            </div>
        </div>
        <nav id="header" class="navbar navbar-expand-md <?php echo esc_attr( $navbar_scheme ); if ( isset( $navbar_position ) && 'fixed_top' === $navbar_position ) : echo ' fixed-top'; elseif ( isset( $navbar_position ) && 'fixed_bottom' === $navbar_position ) : echo ' fixed-bottom'; endif; if ( is_home() || is_front_page() ) : echo ' home'; endif; ?>">
            
            <div class="container">
                <a class="navbar-brand" href="<?php echo esc_url( home_url() ); ?>" title="<?php echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>" rel="home">
                    <?php
                        $header_logo = get_theme_mod( 'header_logo' ); // Get custom meta-value.

                        if ( ! empty( $header_logo ) ) :
                    ?>
                        <img src="<?php echo esc_url( $header_logo ); ?>" alt="<?php echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>" />
                    <?php
                        else :
                            echo esc_attr( get_bloginfo( 'name', 'display' ) );
                        endif;
                    ?>
                </a>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar" aria-controls="navbar" aria-expanded="false" aria-label="<?php esc_attr_e( 'Toggle navigation', 'arts-and-science-theme' ); ?>">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div id="navbar" class="collapse navbar-collapse ">
                    <?php
                        // Loading WordPress Custom Menu (theme_location).
                        wp_nav_menu(
                            array(
                                'theme_location' => 'main-menu',
                                'container'      => '',
                                'menu_class'     => 'navbar-nav d-flex justify-content-end ms-auto text-uppercase ',
                                'fallback_cb'    => 'WP_Bootstrap_Navwalker::fallback',
                                'walker'         => new WP_Bootstrap_Navwalker(),
                            )
                        );

                    ?>
                    
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container -->
        </nav><!-- /#header -->
    </header>
    <div class="hero " style = "position: relative; text-align: center;" >
        <?php  if(get_field('hero_image')): ?> 
                <img class="img-fluid w-100"  src="<?php  the_field('hero_image'); ?>" alt="Hero" />
        <?php endif; ?>
        <div class="text-white font-size" style="position: absolute;top: 50%;left: 50%;transform: translate(-50%, -50%);">
            <h1><?php  the_field('hero_text'); ?></h1>
            <ul class="hero-text list-unstyled d-flex flex-row text-white">
                <li><a href="#"><?php  the_field('who_we_are'); ?></a></li>
                <li><a href="#"><?php  the_field('sustainable_design'); ?></a></li>
                <li><a href="#"><?php  the_field('our_portfolio'); ?></a></li>
            </ul>
       </div>
    </div>
    <main id="main" class="container"<?php if ( isset( $navbar_position ) && 'fixed_top' === $navbar_position ) : echo ' style="padding-top: 100px;"'; elseif ( isset( $navbar_position ) && 'fixed_bottom' === $navbar_position ) : echo ' style="padding-bottom: 100px;"'; endif; ?>>
       
   
       <?php
            // If Single or Archive (Category, Tag, Author or a Date based page).
            if ( is_single() || is_archive() ) :
        ?>
            <div class="row">
                <div class="col-md-8 col-sm-12">
        <?php
            endif;
        ?>
