# $LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
# $LOAD_PATH.unshift(File.dirname(__FILE__))
Dir[File.join(File.dirname(__FILE__), "..", "lib" , "**.rb")].each do |f|
  require f
end
require 'rspec'

RSpec.configure do |config|
  config.order = 'random'
end

RSpec.configure do |config|
  config.order = 'random'
  config.expect_with :rspec do |c|
    c.syntax = :should
  end
end