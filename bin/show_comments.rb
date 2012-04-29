#!/usr/bin/env ruby
require File.dirname(__FILE__)+'/../bootstrap'

total = Comment.count
Comment.get_latests(20).each do |c|
  puts "(#{c.id}/#{total}) #{c}"
end
