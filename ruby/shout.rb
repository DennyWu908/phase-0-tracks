module Shout
	def self.yell_angrily(words)
    	words + "!!!" + " :("
  	end

  	def self.yelling_happily(phrase)
  		phrase.upcase + "!" + ":)"
	end
end

require_relative 'shout'

Shout.yell_angrily('Assignments suck, but they are necessary for learning')

Shout.yelling_happily('I am almost done with my assignments')