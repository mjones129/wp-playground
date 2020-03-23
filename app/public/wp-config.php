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
 * @link https://codex.wordpress.org/Editing_wp-config.php
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
define('AUTH_KEY',         'VCR2A0rb0PDKMOe4fpRPht9klDnocZKVI+LG1kakwtb6Mk2qGf//kg3XLn6msVwyjZhl0+yO+3pfYtEHh3Yx2Q==');
define('SECURE_AUTH_KEY',  '6kCrj+GXPCMzgnQBr8KsQn7u3lLb/KrVEuE2/z0MVqOfj/iqHZ5QA2IaSPJm8rm1YyjEcUdVYLBt72Mgbyt8/Q==');
define('LOGGED_IN_KEY',    'ua9o40j/zmVNYcbjbkScgdyO80EAKHRx6JYJBM9DyqjA8jmEMuomTI4jlGT54ISEpR0+5elTuaJMDlrNHM2q3w==');
define('NONCE_KEY',        'RY4BiH2hOmsFH0MwEw2ZIgwgE4JqaZozNqXTxGdfMta4+clipXK2Dyl/tCTGM58PMcL4ebzGQsF1nFQvKykKeg==');
define('AUTH_SALT',        'l8dnvCZy5cS7V/5UYEvZSht4XXeN7danxQBZCfwa4Mdt1KIazLQEXmlCTUPfQhw641oqKFADATJRMzZMv7kP8w==');
define('SECURE_AUTH_SALT', 'TG5yJI8dqEI65EEyFjEcbRuo8G43y3vNRef3TI2wK3z9gSFj8RB1GO2NM/cgvIEsIiRDRSAvS+7ss57knMRK8w==');
define('LOGGED_IN_SALT',   '6GidSVk1i8RwaFY6TaBqMmxjq6FcUVp/tgqeRkbRyISqz8ghK0iY2OgKYMXRy+y8Hhx1fP/seMwJwBpdV6wcvg==');
define('NONCE_SALT',       'wwuTBm7wWLIWtyXXvlu7SqIM8QUKwjjLgCxqI9FE33wzML7DPG4aDnTrQp6mdCTfOh3XXNxQ6ZInuMRq/Paibg==');

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
