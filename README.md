# PHPStorm in a Docker
[![CircleCI Build Status](https://img.shields.io/circleci/project/pozgo/docker-phpstorm.svg)](https://circleci.com/gh/pozgo/docker-phpstorm/tree/latest)
[![GitHub Open Issues](https://img.shields.io/github/issues/pozgo/docker-phpstorm.svg)](https://github.com/pozgo/docker-phpstorm/issues)
[![GitHub Stars](https://img.shields.io/github/stars/pozgo/docker-phpstorm.svg)](https://github.com/pozgo/docker-phpstorm)
[![GitHub Forks](https://img.shields.io/github/forks/pozgo/docker-phpstorm.svg)](https://github.com/pozgo/docker-phpstorm)

[![Stars on Docker Hub](https://img.shields.io/docker/stars/polinux/phpstorm.svg)](https://hub.docker.com/r/polinux/phpstorm)
[![Pulls on Docker Hub](https://img.shields.io/docker/pulls/polinux/phpstorm.svg)](https://hub.docker.com/r/polinux/phpstorm)

[![](https://images.microbadger.com/badges/version/polinux/phpstorm.svg)](http://microbadger.com/images/polinuxphpstorm)
[![](https://images.microbadger.com/badges/license/polinux/phpstorm.svg)](http://microbadger.com/images/polinux/phpstorm)
[![](https://images.microbadger.com/badges/image/polinux/phpstorm.svg)](http://microbadger.com/images/polinux/phpstorm)

This is PHPStorm [polinux/phpstorm](https://registry.hub.docker.com/u/polinux/phpstorm/) Docker image using X11.
This Image is using [polinux/php](https://registry.hub.docker.com/u/polinux/php/) Docker image as base. for more details on whatr version of php and NODEJS please see [this repo](https://github.com/pozgo/docker-php).

### Requirements
This image require an X11 to be present in the system. By default all Linux distros that come with desktop environment have it installed. For Windows I would recmmend [Cygwin/X](https://x.cygwin.com/) and for macOS [XQuartz](https://www.xquartz.org/).

Another requirement is to have a prperly configured X11 environemnt that would work with Docker. For this purpose I highle recommend using small program called [nut](https://github.com/matthieudelaro/nut) by [matthieudelaro](https://github.com/matthieudelaro) whuich is redirecting X11 to work with Docker. For this purpose I added `nut.yml` file for easy deployment of this image with working environment.


For different PHP versions, look up different branches of this repository.
On Docker Hub you can find them under different tags:

* `polinux/phpstorm:latest` - PHP 7.1 built from master branch [![Circle CI](https://circleci.com/gh/pozgo/docker-phpstorm.svg?style=svg)](https://circleci.com/gh/pozgo/docker-phpstorm)
* `polinux/phpstorm:5.4` - PHP 5.4 built from 5.4 branch [![Circle CI](https://circleci.com/gh/pozgo/docker-phpstorm/tree/5.4.svg?style=svg)](https://circleci.com/gh/pozgo/docker-phpstorm)
* `polinux/phpstorm:5.5` - PHP 5.5 built from 5.5 branch [![Circle CI](https://circleci.com/gh/pozgo/docker-phpstorm/tree/5.5.svg?style=svg)](https://circleci.com/gh/pozgo/docker-phpstorm)
* `polinux/phpstorm:5.6` - PHP 5.6 built from 5.6 branch [![Circle CI](https://circleci.com/gh/pozgo/docker-phpstorm/tree/5.6.svg?style=svg)](https://circleci.com/gh/pozgo/docker-phpstorm)
* `polinux/phpstorm:7.0` - PHP 7.0 built from 7.0 branch [![Circle CI](https://circleci.com/gh/pozgo/docker-phpstorm/tree/7.0.svg?style=svg)](https://circleci.com/gh/pozgo/docker-phpstorm)
* `polinux/phpstorm:7.1` - PHP 7.0 built from 7.1 branch [![Circle CI](https://circleci.com/gh/pozgo/docker-phpstorm/tree/7.1.svg?style=svg)](https://circleci.com/gh/pozgo/docker-phpstorm)

### Directories
There are two directories that are important for the user.

  > `phpstorm-home` - PHPStorm home directory with all program settings and license (`/home/developer/.PhpStorm2016.3/` inside of the Docker image)
  > `projects` - All projects that are shared with the host OS. (`/home/developer/PhpstormProjects/` inside of the Docker image)

## Usage

Pull Image

    docker pull polinux/phpstorm

Or, if you prefer to build it on your own:

    docker build -t polinux/phpstorm .

Run the image:
Use nut to deploy this image with X11 support.

    nut run

*Change options in `nut.yml` file if necessery*

![Run](https://raw.githubusercontent.com/pozgo/docker-phpstorm/master/images/run.gif)

---
## Author
Przemyslaw Ozgo (<linux@ozgo.info>)
