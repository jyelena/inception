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
define( 'DB_NAME', DB_NAME );

/** MySQL database username */
define( 'DB_USER', DB_USER );

/** MySQL database password */
define( 'DB_PASSWORD', DB_PASSWORD );

/** MySQL hostname */
define( 'DB_HOST', DB_HOST );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'c5Iv:?pX<tnlteI}]f-5z:.hOM~>OQ[8C]X7XrVuMS2pG(l$)a8C[S@+O@q=tRdd' );
define( 'SECURE_AUTH_KEY',  'YvvCKVy6l.a21wzNvB~>}bFFaKnOdu@d#z{.c<xg3Pd^Zxa.;qQLf|w?]aCFljG[' );
define( 'LOGGED_IN_KEY',    'o_wDtFUOq>=?K&#!bO@GA-}lct_k7Y~icwx@}xeDsbn@(}3*Nc @w+Is>IP0nBJm' );
define( 'NONCE_KEY',        'pTO%P1)fl=s/v[.:XuPT)X?R{m|GKy8:jPn|MGki#xGD8o*m}WKS`+.FiaiW+}Wj' );
define( 'AUTH_SALT',        'u:4/3)sGhwk|{|j,>Z$|y3 7T!bjk&piFVJ?l/-F_Ki>]81D,Q,_4k[7vo1CW1-+' );
define( 'SECURE_AUTH_SALT', '{LTH?^kzk74Qy{8c^?MBPn^.%nIfFBXdHc2;Lm7RuP=R:Hz-h%v6;n:0geS<MrER' );
define( 'LOGGED_IN_SALT',   'R}1^RH[`qyTCIN%YHKF[Z];>#=d:nMP:VtL5oF^?_}ur4h9~qn4NbyDo(xg%ZSv3' );
define( 'NONCE_SALT',       '+wpXwMz^25tsz%f|Q~!*Zxb??0DQKoYs(BMT[BdwG`,~A1|HdCn&c.17]PCPzNOa' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';