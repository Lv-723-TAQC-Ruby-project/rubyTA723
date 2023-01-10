# frozen_string_literal: true

require 'yaml'

class Configuration
  def self.[](key)
    @@config[key]
  end

  def self.load(name)
    @@config = nil
    io = File.open("#{File.dirname(__FILE__)}/config.yml")
    YAML.load_stream(io) { |doc| @@config = doc[name] }
    raise "Could not locate a configuration named \"#{name}\"" unless @@config
  end

  def self.[]=(key, value)
    @@config[key] = value
  end
end

Configuration.load('ebay')
