require 'ripper'
require 'pp'

puts ">> Ripper.sexp('1+1')"
pp Ripper.sexp("1+1")

puts 

puts ">> pp RubyVM::InstructionSequence.compile(''1+1').to_a"
pp RubyVM::InstructionSequence.compile("1+1").to_a
