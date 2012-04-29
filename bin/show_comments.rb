#!/usr/bin/env ruby
require File.dirname(__FILE__)+'/../bootstrap'

Comment.all.each do |c|
  puts c
end
