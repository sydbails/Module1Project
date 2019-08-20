require 'bundler/setup'
require 'pry'
require 'sinatra/activerecord'

Bundler.require
# gives ability to require lines 1-3

ActiveRecord::Base.establish_connection({adapter: 'sqlite3', database: 'db/chucks_jokes.db'})