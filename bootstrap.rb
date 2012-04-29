#!/usr/bin/env ruby
require 'rubygems'
require 'bundler/setup'
require 'data_mapper'
require 'yaml'

begin
  @@conf = YAML::load open(File.dirname(__FILE__)+'/config.yml').read
rescue => e
  STDERR.puts e
  STDERR.puts "config.yml load error!!"
  exit 1
end

DataMapper.setup(:default, @@conf['db'])

Dir.glob(File.dirname(__FILE__)+'/models/*.rb').each do |rb|
  puts "loading #{rb}"
  require rb
end

DataMapper::Logger.new($stdout, :debug)
DataMapper.finalize
