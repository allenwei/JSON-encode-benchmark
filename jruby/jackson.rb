require 'jrjackson'
hash = JrJackson::Json.load File.read("/tmp/test.json")
start = Time.now
JrJackson::Json.dump(hash)
puts Time.now - start
