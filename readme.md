# WordPress.tv local development environment

The details below will walk you through getting set up to contribute to the **code** behind https://wordpress.tv.

## Prerequisites
- [Docker](https://docs.docker.com/get-docker/)
- [Node/NPM](https://nodejs.org/en/download/)
- [Composer](https://getcomposer.org/download/)
- [SVN](https://subversion.apache.org/packages.html)

## Setup
1. `npm install`
2. `npm run create`
3. Visit site at `localhost:8888`

## Stopping Environment
run `npm run wp-env stop`

## Removing Environment
run `npm run wp-env destroy`

## Admin

Since the local environment uses [wp-env](https://developer.wordpress.org/block-editor/reference-guides/packages/packages-env/), it automatically comes with an admin user, with `admin`/`password` for the credentials.

## Contributing

If you'd like to contribute to the project, please read the [code contribution guidelines](https://make.wordpress.org/training/handbook/training-team-how-to-guides/code-contributions/) in our team handbook. 
