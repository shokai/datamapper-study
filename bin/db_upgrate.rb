#!/usr/bin/env ruby
require File.expand_path '../bootstrap', File.dirname(__FILE__)
require 'dm-migrations'

DataMapper.auto_upgrade!
