# frozen_string_literal: true

require 'dart-sass'

puts '---- bootstrap with stdin output ---'
opts = {
  sourcefile: "vendor/bootstrap/scss/bootstrap.scss",
}

result, sourcemap = DartSass.new(opts).compile
puts result.length
puts '---- bootstrap stdin end ---'

puts '---- foundation with stdin output ---'
opts = {
  sourcefile: "vendor/foundation/assets/foundation.scss",
}

result, sourcemap = DartSass.new(opts).compile
puts result.length
puts '---- foundation end ---'

puts '---- foundation with output to file ---'
opts = {
  sourcefile: "vendor/foundation/assets/foundation.scss",
  output: "/tmp/foundation.css"
}

result, sourcemap = DartSass.new(opts).compile
puts result.length
puts '---- foundation end ---'