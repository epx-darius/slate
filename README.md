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
2. Clone *your forked repository* (not our original one) to your hard drive with `git clone https://github.com/YOURUSERNAME/slate.git`
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

Now that Slate is all set up on your machine, you'll probably want to learn more about [editing Slate markdown](https://github.com/lord/slate/wiki/Markdown-Syntax), or [how to publish your docs](https://github.com/lord/slate/wiki/Deploying-Slate).

If you'd prefer to use Docker, instructions are available [in the wiki](https://github.com/lord/slate/wiki/Docker).

- install [widdershins](https://github.com/epx-darius/widdershins) by running `npm install -g widdershins`

## Updating Slate w/ newer OpenAPI yaml.
If we update the yaml representing our open api specification we can run the below function to quickly have widdershins recompile our `markdown`.
- run `./update_swagger_docs.sh`