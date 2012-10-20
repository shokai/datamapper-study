#!/usr/bin/env ruby
require File.expand_path '../bootstrap', File.dirname(__FILE__)

total = Comment.count
Comment.get_latests(20).each do |c|
  puts "(#{c.id}/#{total}) #{c}"
end
