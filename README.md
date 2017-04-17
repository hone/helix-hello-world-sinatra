# Helix Hello World in Sinatra
[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

## Deployment to Heroku
In this demo app, we'll be using [`turbo_blank`](https://github.com/tildeio/helix/tree/master/examples/turbo_blank) from `helix` examples.

In order to get this to build on Heroku, it has to compile the rust code. We can do this by hooking into the `assets:precompile` rake task.

```ruby
task "assets:precompile" => "build"
```

You'll need a heroku app to deploy to if you don't have one already.

```
$ heroku create
```

With that, we can deploy. On Heroku, we'll need to setup the Rust toolchain and we can do that by using [this Rust Buildpack](https://github.com/emk/heroku-buildpack-rust). We don't want the Rust tools to run since that will happen in the `assets:precompile` rake task defined above. We can tell the rust buildpack to do this, by writing out `RustConfig` at root.

```
RUST_SKIP_BUILD=1
```

Then add the buildpack to the first position

```
$ heroku buildpacks:add https://github.com/emk/heroku-buildpack-rust --index 1
```

Next, we'll need the Heroku Ruby buildpack to do the normal Ruby bits, if it's not already set.

```
$ heroku buildpacks:add heroku/ruby
```

Finally deploy:

```
$ git push heroku master
```
