#Take in user input consisting of string to encrypt and the key to use
#Use ASCII to shift characters by key input
#Encryption ignores punctuation, uppercase and lowercase characters remain as their respective case
#Prints encrypted string

class CaesarCipher
	def encrypt(message, key)
		if key > 26
			key = key % 26
		end	
		encrypted_chars = message.split("").map do |char|
			char_no = char.ord
			if (char_no >= 65 && char_no <= 90)
				shifted_char = (char_no + key)
				if shifted_char > 90 
					shifted_char = (shifted_char % 90 + 64)
				end
				new_char = shifted_char.chr
			elsif (char_no >= 97 && char_no <= 122)
				shifted_char = (char_no + key) 
				if shifted_char > 122
					shifted_char = (shifted_char % 122 + 97)
				end
				new_char = shifted_char.chr
			else
				char
			end	
		end	
		encrypted_message = encrypted_chars.join
		return encrypted_message
	end
end	