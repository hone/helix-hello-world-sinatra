$LOAD_PATH << File.expand_path("lib", __dir__)

require "sinatra"
require "turbo_blank"

get "/" do
  params['blank'].to_s.blank?.to_s
end

run Sinatra::Application
