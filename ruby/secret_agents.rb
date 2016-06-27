def encrypt(x)
    word = x
    index = 0
        while index < word.length
        word[index] = word[index].next!
            if word[index] == "a"
                word[index] = ""
            end
        index += 1
        end
    puts word
    return word
end

def decrypt(y)
    word = y
    index = 0
    alphabet = "abcdefghijklmnopqrstuvwxyz"
        while index < word.length
            word[index] = alphabet[alphabet.index(word[index])-1]
        index += 1
        end
    puts word
    return word
end

decrypt(encrypt("swordfish"))

# Note: The nested method call works because of the order in which the method calls are evaluated. The "encrypt" method is called first, then 
# the "decrypt" method. As such, the characters in the string "swordfish" will be changed according to the code of the "encrypt" method first.
# After that, the characters of the resulting string ("txpsegjti") will be changed back to "swordfish" using the "decrypt" method. The nested 
# method call allows us to see the results of using both methods.

begin
    puts "Welcome, agent. Please select a function (encrypt or decrypt)."
    function = gets.chomp
    if function == "encrypt"
        puts "Please enter the password you wish to encrypt."
        password = gets.chomp
        puts encrypt(password)
    elsif function == "decrypt"
        puts "Please enter the password you wish to decrypt."
        password = gets.chomp
        puts decrypt(password)
    else
        puts "Please enter a valid response."
    end
end until function.downcase == "encrypt" || function.downcase == "decrypt"