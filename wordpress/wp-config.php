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
define('DB_NAME', 'basededonnee');

/** MySQL database username */
define('DB_USER', 'nouveaucompteuser');

/** MySQL database password */
define('DB_PASSWORD', 'password');

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
define('AUTH_KEY',         'mVWEqfK.+mK+--2(q^qpDkKoIbgFXU;FE0=g@SmZ.+ Y.Skzh:i%l7%F7)HjYc;P');
define('SECURE_AUTH_KEY',  'No7J,bPJHww;[; ( mR3$WUTtc{%xqez>*Wh :V,z?P^l$0^2b6bRO#| u74?.1%');
define('LOGGED_IN_KEY',    '(@Of!GZQPi`)dWF]uR,[p1@&1I<KA{{jsT9^uEOT$G0nBmNoMzcwslAB#fOFyw4p');
define('NONCE_KEY',        '&gX%vX^/9CH>/8TpjKgzpftl&rks cno6gO&E*o$(v;F7Q]D(eBV h A@kj^q>:A');
define('AUTH_SALT',        '|| ^FA//7s;H<}fKW6B];G&20P=Qb$LQA**u0O[T>sUN,~I=ItHrT(?nx!}a  Vk');
define('SECURE_AUTH_SALT', 'v02Kum#M,NUr@2#u$E.=hJ3Z+XA&wH6o|KZfWzN}CzSXG:mypGpVEFzCfZ hb-X:');
define('LOGGED_IN_SALT',   'oSd|L9]%-Z%D8%wa$$Z.CFbH&D&$!lVF*&qp[e)-G~{qM@etz(A;,TH,)TF(zJW,');
define('NONCE_SALT',       ']{+)/+!nR3CJCGZY:m2BIx}qMYFw9JR.1[Ln/aQfnjii>y9KYdNEY2fuNSA4T$*#');

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
