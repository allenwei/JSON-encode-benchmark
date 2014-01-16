require 'json'

start = Time.now
hash = JSON File.read("/tmp/test.json")
puts Time.now - start

start = Time.now
JSON(hash)
puts Time.now - start

