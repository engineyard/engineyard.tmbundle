#!/usr/bin/env ruby

begin
  require "rubygems"
  gem 'launchy'
  require 'launchy'
  def open_url(url)
    Launchy.open(url)
  end
rescue LoadError => e
  def open_url(url)
    %x[open "#{url}"]
  end
end

open_url "http://engineyard.com"