#!/usr/bin/env ruby
#
# Connect to a MQTT server, send message and disconnect again.
#

require 'rubygems'
require 'mqtt'

MQTT::Client.connect('mqtt://yangkang:123456789@localhost') do |client|
  p "sent msg The time is: #{Time.now} to topic demo"
  client.publish('demo', "The time is: #{Time.now}")
end