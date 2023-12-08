#!/bin/bash

# Exit if any command fails.
set -e

# Setup the environment
npm run wp-env start

# Update wp configs
npm run wp-env run cli wp config set JETPACK_DEV_DEBUG true
npm run wp-env run cli wp config set WPORG_SANDBOXED true

# Activate plugins
#npm run wp-env run cli wp plugin activate edit-flow jetpack wordpress-importer wporg-learn/wporg-learn.php

# Activate theme
npm run wp-env run cli wp theme activate wptvblog2

# Install dependencies
npm install

# Activate jetpack modules
#npm run wp-env run cli wp jetpack module activate contact-form

# Change permalinks
#npm run wp-env run cli wp rewrite structure '/%postname%/'

# Import tables
npm run wp-env run cli wp db import wp-content/uploads/wordpress_tv_wp_env.sql

# Import content
#npm run wp-env run cli "php bin/import-test-content.php"
