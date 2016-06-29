# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

 "iNvEsTiGaTiOn".swapcase
 "iNvEsTiGaTiOn".swapcase!
 => “InVeStIgAtIoN”
 # Below is an example of calling these methods, and the result.
 "HeLlO".swapcase
 "HeLlO".swapcase!
 => "hElLo"

 "zom".insert(index, other_str)
 "zom".insert(1, 'o')
 => “zoom”
 "desert".insert(2, 's')
 => “dessert”

 "enhance".center(width, padstr=' ')
 "enhance".center(15)
 => "    enhance    "
 "addition".center(15)
 => "   addition    "
 "addition".center(15, 'plus')
 => "pluadditionplus"

 "Stop! You’re under arrest!".upcase
 "Stop! You’re under arrest!".upcase!
 => "STOP! YOU’RE UNDER ARREST!"
 "Good Morning!".upcase
 "Good Morning!".upcase!
 => "GOOD MORNING!"

 "the usual" << integer
 "the usual" << obj
 "the usual" << " suspects"
 => "the usual suspects"
 "you're a" << " wizard, harry"
 => "you're a wizard, harry"

 " suspects".<???>
 => "the usual suspects"

 "The case of the disappearing last letter".<???>
 => "The case of the disappearing last lette"

 "The mystery of the missing first letter".<???>
 => "he mystery of the missing first letter"

 "Elementary,    my   dear        Watson!".<???>
 => "Elementary, my dear Watson!"

 "z".<???>
 => 122 
 (What is the significance of the number 122 in relation to the character z?)

 "How many times does the letter 'a' appear in this string?".<???>
 => 4