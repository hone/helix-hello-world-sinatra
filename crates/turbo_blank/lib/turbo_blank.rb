require "helix_runtime"

RubyString = String

require "turbo_blank/native"

class String
  alias blank? is_blank
end
