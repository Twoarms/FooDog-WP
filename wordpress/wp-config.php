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
define('DB_USER', 'twoarms');

/** MySQL database password */
define('DB_PASSWORD', 'Alt1234');

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
define('AUTH_KEY',         '76Fm^>Rm9Q+_svV s?K.0T);/|]6J]{g]Q~7_829MjBKF*>cw pNsd3E%NsR}X~ ');
define('SECURE_AUTH_KEY',  ',EODNP:yzc?ahp6)88{v#E7 i%]E{WCX4csLtPR(3a3OqZ{A9$w|$S]qPibTm/K`');
define('LOGGED_IN_KEY',    'eH?{f+{xVz=]erUC8((}|@VV){:6|!4WI:sWt>~os6^]?I+7*-%4`b}D-);[-!eU');
define('NONCE_KEY',        'g[w`ViY3A/^0BzXd$hi$[tv0d}4p(d/]-jlO)RaPjF# A8WG,|dt1!GQ v06E{L$');
define('AUTH_SALT',        'DZHD@IQ+^mQ)JiOrH X2fn=o}6F 1?>(Y&BOgLFQ^utQOx!]0AK`?=6P ]._uPU1');
define('SECURE_AUTH_SALT', 'q/1bvc*6kS v*vmo!tlulu^+:$ `@]0UL@we&93-5k^8/#JfiD/S|Wo2W0T<^QiU');
define('LOGGED_IN_SALT',   'e#PF`f=X)UUzGg$c0F1;IS%!M6f$X.|k)O0|gTol/iLig6Tgtu07et6oakW3%L2T');
define('NONCE_SALT',       ']J;Ls*o#ncdl +?v$$WOeqpbB([_?{@X_~GBDYS#<G1hi.G;_c5l3ALYj9=s#3ON');

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
