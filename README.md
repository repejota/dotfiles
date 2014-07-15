# Dotfiles

**Everybody has a couple of them!**



## Introduction

Those files, are a collection of [dotfiles](http://dotfiles.github.io) for my personal use on OSX.

Sadly for me, I'm really lazy, and I tend to forget things. So I have one rule that my dotfiles must follow. They must be as much as simple and self documented as possible. This rule forces to take some points in consideration:

* I don't use any framework to manage these files, only plain shell scripts.
* Promote `~/.bin/command` scripts in favor of complex `.bashrc` or `.zshrc`   functions or aliases.

## Download

I do not provide *packaged* binaries for this project. The best way to download my dotfiles is using git itself and clone the entire project.

To clone this project on your machine use this:

`$ git clone https://github.com/repejota/dotfiles.git`

Two branches are available on the repo. First a *master* branch where all stable features are merged and from I build new releases. And secondly a *develop* branch where all in-progress work are committed.

In most of cases using the master ( or any release ) should be enough for your purposes. In case you want to use the *develop* branch you can clone it like this:

`$ git clone https://github.com/repejota/dotfiles.git#develop`

## Installation

Currently I don't have any build/installation system. I'm planning to do this but on a future release.

As I'm trying to maintain this bunch of files as much simple as I can, I still have not decided how to manage its installation and building flow. I would not like to use any framework or thirth party tool, and a possible valid choice could be using [auto-tools](http://en.wikipedia.org/wiki/GNU_build_system).

For now, if you want to use those files just symlink them. For example:

`ln -s .inputrc ~/.inputrc`

## Contributing & Feedback

This project is tracked as a open [Github](https://github.com/repejota/dotfiles) repository. So feel free to *fork* it for your own purposes and send me *pull-requests* if you add something cool. I will really appreciate any feedback :)

Also if you find some file that could be more documented or some option that is not clear, just [open an issue](https://github.com/repejota/dotfiles/issues) and I will try to explain it further.
