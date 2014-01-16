require 'oj'

hash = Oj.load(File.read("/tmp/test.json"))

start = Time.now

Oj.dump hash

puts Time.now - start
