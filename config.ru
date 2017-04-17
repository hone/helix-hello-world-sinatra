require "sinatra"
$: << File.expand_path("crates/turbo_blank/lib")
require "turbo_blank"

get "/" do
  params['blank'].to_s.blank?.to_s
end

run Sinatra::Application
