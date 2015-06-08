## Instructions

# A lot of times we need to deal with user input in our programs. Unfortunately, users don't always give us the input the way we expect it.
# To fix this we'll need to write methods that take user input and always output the output we expect.
# In this todo you'll be formatting an ugly phone number input like this: 5194557018 into a prety phone number output, 
# like this: (519) 455-7018 # this is 14 characters if using length
# Define a method named normalize_phone_number that takes one string argument and returns a string in the format
# (XXX) XXX-XXXX if possible, and just returns the input string if not
# should format a number without spaces or special characters 
# should format a phone number with parenthesis 
# should format a phone number with spaces 
# should format a phone number with one hyphen 
# should format a phone number with hyphens and no parenthesis 
# should not format an invalid phone number // so only number that have 9 integers -- just let it be returned
def normalize_phone_number(string)
  
  string_to_test = string.scan(/\d/) #scans for and returns all digit
  if string_to_test.length != 10 # also can use unless, while...
    string
  else
    "(#{string_to_test.join("")[0..2]}) #{string_to_test.join("")[3..5]}"+"-"+"#{string_to_test.join("")[6..9]}"
    # not 'puts'
  end
end


# prompt user for input 
# check if input is too little? or too long? 
# if it checks out, format it into specified format, else put error message
# Scanning a string means remembering the position of a scan pointer, which is just an index. 
# When you scan for a pattern (a regular expression), the match must occur at the character after the scan pointer.

# (123)-456-7890