require 'bundler'
require 'pry'
require_relative './environment.rb'
require 'sinatra/activerecord/rake'

Bundler.require

Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'

require_relative '../app/models/result.rb'
