# frozen_string_literal: true

require 'dart-sass'

opts = {
  sourcefile: "vendor/bootstrap/scss/bootstrap.scss",
}

result, sourcemap = DartSass.new(opts).compile
puts result.length
puts '---- bootstrap end ---'

opts = {
  sourcefile: "vendor/foundation/assets/foundation.scss",
}

result, sourcemap = DartSass.new(opts).compile
puts result.length
puts '---- foundation end ---'