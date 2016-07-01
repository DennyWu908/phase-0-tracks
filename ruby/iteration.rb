def confirmation
	arg1 = "primary"
	arg2 = "secondary"
	arg3 = "tertiary"
	puts "Yes, this is a method."
	4.times { yield(arg1, arg2) }
end

confirmation { |arg1, arg2, arg3| puts "This, on the other hand, is a block. The arguments from the method are #{arg1}, #{arg2}, and #{arg3}. This string will print 4 times." }