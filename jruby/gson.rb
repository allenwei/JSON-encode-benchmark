require 'gson'

hash = Gson::Decoder.new.decode(File.read("/tmp/test.json"))

start = Time.now
Gson::Encoder.new.encode hash
puts Time.now - start
