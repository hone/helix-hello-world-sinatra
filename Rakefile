desc "Compile Helix Modules"
task "assets:precompile" do
  require 'helix_runtime/build_task'
  HelixRuntime::BuildTask.new("turbo_blank")
  Dir.chdir "crates/turbo_blank" do
    Rake::Task["build"].invoke
  end
end
