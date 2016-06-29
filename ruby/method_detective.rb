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

 "The case of the disappearing last letter".chop
 "The case of the disappearing last letter".chop!
 => "The case of the disappearing last lette"
 "okay".chop
 "okay".chop!
 => "oka"

 "The mystery of the missing first letter"[index]
 "The mystery of the missing first letter"[start, length]
 "The mystery of the missing first letter"[range]
 "The mystery of the missing first letter"[regexp]
 "The mystery of the missing first letter"[regexp, capture]
 "The mystery of the missing first letter"[match_str]
 "The mystery of the missing first letter"[1, 38]
 => "he mystery of the missing first letter"
 "laptop"[1, 5]
 => "aptop"

 "Elementary,    my   dear        Watson!".squeeze
 => "Elementary, my dear Watson!"
 "Use  the  stairs.".squeeze
 => "Use the stairs."

 "z".ord
 => 122 
 (What is the significance of the number 122 in relation to the character z?)
 "y".ord
 => 121

 "How many times does the letter 'a' appear in this string?".<???>
 => 4