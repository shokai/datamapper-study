#!/usr/bin/env ruby
require File.expand_path '../bootstrap', File.dirname(__FILE__)

if ARGV.empty?
  puts 'error : comment required'
  puts "e.g.  ruby #{$0} \"hello world\""
  exit 1
end

begin
  c = Comment.new(:name => `whoami`.strip, :body => ARGV.join(' '))
  c.save
rescue => e
  STDERR.puts e
  exit 1
end

total = Comment.count
Comment.get_latests(5).each do |c|
  puts "(#{c.id}/#{total}) #{c}"
end
