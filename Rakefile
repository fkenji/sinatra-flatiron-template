task :console do

  $:.unshift('app')
  require 'bundler/setup'
  Bundler.require(:default)

  require 'flatiron-template/register_tilt'

  Pry.start
end