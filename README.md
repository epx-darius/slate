# EpxApi Documentation

## Installing Requirements

- install [slate](https://github.com/epx-darius/slate) our forked version of the popular markdown documentation generator

Getting Started with [Slate](https://github.com/lord/slate)
------------------------------

### Prerequisites

You're going to need:

- **Linux or macOS** — Windows may work, but is unsupported.
- **Ruby, version 2.3.1 or newer**
- **Bundler** — If Ruby is already installed, but the `bundle` command doesn't work, just run `gem install bundler` in a terminal.

### Getting Set Up

1. Fork this repository on GitHub.
2. Clone to your hard drive with `git clone https://github.com/YOURUSERNAME/slate.git`
3. `cd slate`
4. Initialize and start Slate. You can either do this locally, or with Vagrant:

```shell
# either run this to run locally
bundle install
bundle exec middleman server

# OR run this to run with vagrant
vagrant up
```

You can now see the docs at http://localhost:4567. Whoa! That was fast!

**Production / Static Site Build**

```shell
bundle exec middleman build --clean
```
