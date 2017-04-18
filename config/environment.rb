require 'bundler'
Bundler.require

require 'pry'
require 'rake'
require 'active_record'
require 'sqlite3'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')


# Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}
require_all 'app'
