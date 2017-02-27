$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'http_decoders'

RSpec.configure do |config|
  if ENV['CI']
    config.before(:example, :focus) { raise "Do not commit focused specs" }
  else
    config.filter_run_including :focus => true
    config.run_all_when_everything_filtered = true
  end

  config.warnings = true
end
