<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '5tL3J2Cq7T8VL/V7gnQPoNfm5/8S3WCAzmWvOqEXL9cNbGsBkUOeOM8dQ5qWb/OO2gF2FAzyUjSaPl3l6YCBfw==');
define('SECURE_AUTH_KEY',  'PYZX8bEHEeXbQvqQ16/2TktTn60JGhVwzbvGJwaVNVIRHd/UfA74Lc0gEkkRKtCBTAbc5ydQ2R/ux33M+2jqOw==');
define('LOGGED_IN_KEY',    'yv0JcA3OsyPpb03tL+Atuu3RLt+smmdJX/Gp/QC3BIu122KIXIhKnU5x+/DJZImHoPbz6u/ZFtzN2H4PH5vk2w==');
define('NONCE_KEY',        'IRKWpgZ6TidbGA1mg9ESUyNwrULHWVQnOn8Wi7YHDbKDP08df0AXlbnprl/DmFsoFu8OVTALo2abEVJLoBAR3w==');
define('AUTH_SALT',        'BDM0h99GkgWZpTXYG2935tAzIVOfapiWilfSAy+ivsK7zI8W/QMRLLADoWkwgz8kBI4idtRWNzEgAsLbqdpc0Q==');
define('SECURE_AUTH_SALT', '5JqPVaBOo/M0kkK5Thw5/4byFWkFyAW8h6w9yZ36qtv+gjrYA59fFWWRYlQVCmcDqBcf5ClrAVvGNBiJ2gw85w==');
define('LOGGED_IN_SALT',   'BPs0qh1XPCW5+RBsksBqsLcwS7WXww00NqgBaYCeBuiCJdADfKTI8EmVSyKFfZ3psEmehQNr84agP8gUwITVvA==');
define('NONCE_SALT',       '6wZ2Zv479uQGUrWk4NuU9M7QjQmCOxvgI3EnGqKwxJfl8R3m8h6mliArzJ/2RtFhZxlEq8p2fky5/IyvYzsTwA==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
