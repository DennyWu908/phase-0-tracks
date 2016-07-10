# module Shout
#	def self.yell_angrily(words)
#   	words + "!!!" + " :("
#  	end

#  	def self.yelling_happily(phrase)
#  		phrase.upcase + "!" + ":)"
#	end
# end

# require_relative 'shout'

# Shout.yell_angrily('Assignments suck, but they are necessary for learning')

# Shout.yelling_happily('I am almost done with my assignments')

module Shout

	def yell_angrily(words)
   		words + "!!!" + " :("
  	end

  	def yelling_happily(phrase)
  		phrase.upcase + "!" + ":)"
	end

end

class Teacher

	def ready
		puts "I'm feeling relatively enthusiastic today."
	end

	include Shout

end

class Student

	def not_ready
		puts "I'm not feeling enthusiastic today."
	end

	include Shout

end

teacher = Teacher.new
teacher.yelling_happily('is everyone ready for another day of school?')

student = Student.new
student.yell_angrily('Not really')

teacher.yell_angrily('Are you sure?')

student.yelling_happily('maybe I am ready')