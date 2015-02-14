# My dotfiles

This repo and these dotfiles are based on a fork of [holman/dotfiles](https://github.com/holman/dotfiles/fork).

## Why this repo

The main difference with the original repo is that I rely on oh-my-zsh for my zsh configuration. Consequently, I cleaned a lot of nice features that were included in the original repo.

I like the idea of having my own configuration tools (dotfiles) saved on github for sharing and easy reuse but, most most of all, I like the idea of having a configuration as light as possible.

This is the reason I try to use the tool I installed with their default configuration.

## Install

Run this:

```sh
git clone https://github.com/benoitvallon/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

`dot` is a simple script that installs some dependencies, sets sane OS X
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

## Topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## What's inside

A lot of stuff. Check the original repo if you want even more of them.
[Fork it](https://github.com/holman/dotfiles/fork), remove what you don't use, and build on what you do use.

## Components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.
