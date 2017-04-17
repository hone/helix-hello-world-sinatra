require 'bundler/setup'
require 'helix_runtime/build_task'

HelixRuntime::BuildTask.new("turbo_blank")

# For Heroku
task "assets:precompile" => :build

task :default => :build
