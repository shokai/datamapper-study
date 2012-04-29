#!/usr/bin/env ruby
require File.dirname(__FILE__)+'/../bootstrap'

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

Comment.all.each do |c|
  puts c
end
