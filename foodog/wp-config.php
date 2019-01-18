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
define('DB_NAME', 'foodog2');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

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
define('AUTH_KEY',         '-+4r}$mJ:<ax`20rjy?6.3:GRvi1*w;(Fk@^.`}?>*R7APm.3]j)Tm$(Cf^{*35+');
define('SECURE_AUTH_KEY',  ' Nan~J2YH75zv[5?X2setvuh(u**7s0;V[ebA?kaBNQ&tGu(en^.].g|pbiZ[9Ur');
define('LOGGED_IN_KEY',    '([8$N+yWE]^<-KWT#j4)4[39a!hdUSx_(Pwn-Tj?+x]+@xtQp;F~/g@F+5P<@pUZ');
define('NONCE_KEY',        'K2MO|I22|V@)EG7V%mkS#?{jw(V4FTB[DPH@:)Lp?7cLQMw|x~[-]>aWT4q &dtD');
define('AUTH_SALT',        'rdZZ~s{Pbe_Smj1i4*=!*Ha>9}0uAW)W|K&*V%kPJ]3.f82d/gLP^#!.tj1n{vSH');
define('SECURE_AUTH_SALT', 'T&&l##axCxE4;|Ri)Hqg4Hk3j~.KwFBj6xF3wTmr{Ub eSAXJ]lZ(;NT!R{lGF b');
define('LOGGED_IN_SALT',   'KPKRYwfL/+@+H)=b*]|4&m};>}h6}VSyW%g40d0:;XdNTo{m)JLmf5zkud%PO^|u');
define('NONCE_SALT',       'J$WKc|o%?_Ksb[BhGGKK$qkX{Gi8x}GzP~,<g&uU[a>zP(xI-RF91tnE-ML=Q{Nd');

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
