def starts_with_a_vowel?(word)#returns true for words starting with a vowel, returns false if they start with a consonant
word.match(/^[aeiouAEIOU]\w+/) ? true : false
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/un\w+ing\b/)# any word that starts with un plus ends with ing specifically (\b/ says must match - can't be ings or anything else)
end

def words_five_letters_long(text)
text.scan(/\b\w{5}\b/) # you need to put in the /b\ and \b/ to state that the word needs to be exactly 5 letters long from beginning to end
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text.match(/^[A-Z].+[\.!?]$/) ? true : false # returns a true for a match and a false if no match
end

def valid_phone_number?(phone)
phone.match(/([0-9] *?){10}|(\([0-9]{3}\)(([0-9]{3}-[0-9]{4})|[0-9]{7})\b)/) ? true : false
end
