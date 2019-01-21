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
define('DB_NAME', 'foodog');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'user');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '._S^.lp/BVqy?g+&Kze8wWy]dW.e-nZ)pkZme?=f_[:Y5DJ&*^xI68mv]]7SQiAi');
define('SECURE_AUTH_KEY',  'Pu,T/$Gg_a$vF@Fl(y@+W!9{/]5+22&&w.`3uq#?ID1OP7hqQ&T<7[27!H9?y..6');
define('LOGGED_IN_KEY',    'ogeVuj~).s$R9F& H:&vfa]mIx9pX<J$udS^s:-i^|*hRO%h408__k1wb.E!!qLb');
define('NONCE_KEY',        'JiZ^*)>:*ZL*vueB8c:$BZ_Q%{?}|YY.UiOwHBW6h3#sYKA1&5l)fCy>yqjEn^fQ');
define('AUTH_SALT',        'FHDMK*S?eH+)YpY-a6N Wx[8SlMsI@i367g8lV]{}?Snu i.O6x&V4|@i^hlCMBA');
define('SECURE_AUTH_SALT', '&B(fyx|k$_!b,KZ>h)F>pL{-G+D_Q)Fy!|<9rpM(%HpIU2}JwqMPWz9s!A#Ut/t>');
define('LOGGED_IN_SALT',   'w`AqqSx0Z,N>_[j<-/:WP;}PI4w):mcw/eHtCv=b?p_9d2/$EAZm|sHS5tSBQFCp');
define('NONCE_SALT',       'o51v..ImS$d[jk8Gp@^m/<dL_eG)D3ToHuZeb,$KEFo9@hG6[=+]n<rM=-@n;>+K');
define('FS_METHOD', 'direct');
/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');