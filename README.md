# Serverless Blueprint

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

![Test Status](https://github.com/jluterek/serverless-blueprint/workflows/deploy/badge.svg)

This repository was used in conjunction with a conference session at [All Things Open](https://allthingsopen.org/). All Things Open is an amazing tech conference located in Raleigh, NC focused on open-source code, hardware, and community.

[![preview](https://raw.githubusercontent.com/jluterek/serverless-blueprint/master/presentation/preview.jpg)](https://raw.githubusercontent.com/jluterek/serverless-blueprint/master/presentation/slides.pdf)

## About

This application contains a Lerna monorepo. Within the repository there is a single shared API Gateway and three example services. All items are configured and deployed to AWS with Serverless.

A CI/CD pipeline is configured using github actions. Each github branch deploys a new deployment stage for testing purposes. The stage will follow the same name as the git branch. Master will represent production and utilize the stage "prod".

With the exception of master/production deployments will be removed and deleted when a branch is deleted.

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

The API Gateway sits under `gateway/`.

The Serverless services sit under `services/`.

## Setup

Install Dependencies

```bash
npm install
```

## Deployment

Development environment

```bash
npm deploy:dev # deploys services
```

Production environment

```bash
npm deploy:dev # deploys services
```

## Run Tests

```bash
npm test
```
