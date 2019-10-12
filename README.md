# Serverless Blueprint

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

![Test Status](https://github.com/jluterek/serverless-blueprint/workflows/deploy/badge.svg)

This repository was used in conjunction with a conference session at [All Things Open](https://allthingsopen.org/). All Things Open is an amazing tech conference located in Raleigh, NC focused on open-source code, hardware, and community.

TODO: SLIDESHOW IMAGE
TODO: SLIDESHOW LINK

## About

TODO: ARCHITECTURE DIAGRAM

This application is structured as a monorepo which means all the different packages sits under the same GitHub repository.

It makes it easier to have CI/CD and automate dependency management.

For example, under `frontend` sits the React application which consumes the services under `services`.

Since the endpoint urls for the services change between environments (dev/qa/prod) we need to setup the frontend app correctly.

Since all of our code sits in the same repository, we can update the frontend app environment based on the services deployment with ease.

This application uses `Auth0` for authentication, `Sendgrid` for sending emails, `CircleCI` for deployment and `AWS` as a cloud provider.

## Prerequisites

- [Nodejs](https://nodejs.org/en/)
- [Yarn](https://yarnpkg.com/lang/en/)
- [Amazon AWS Account](https://aws.amazon.com/)
- [Amazon (CLI) Command Line Interface](https://aws.amazon.com/cli/)
- [Serverless](https://serverless.com/)

**CI/CD Service**

- [Github Actions](https://github.com/features/actions)

**Other**

- [commercetools](http://www.commercetools.com/)

## Packages Used

- Lerna
- Prettier
- Serverless

## Repository structure

This repository uses [lerna](https://lernajs.io/) and yarn workspaces to handle dependencies.

The API Gateway sits under `apigateway/`.

The Serverless services sit under `packages/`.

Shared services code is under `packages/common/`.

## Setup

Install Dependencies

```bash
yarn install
```

CI/CD is setup for 3 different environments: `dev` (for local development), `qa` (for integration tests) and `prod` (production).

## Deployment

Development environment

```bash
yarn deploy:dev # deploys services
```

QA environment will be deployed automatically on each commit to master

Production environment will be deployed automatically on each version tag push, for example the following will trigger a production deployment:

```bash
git tag "v0.0.1"
git push --tags
```

## Run Tests

```bash
yarn test
```

```bash
yarn coverage
```
