
def translate(str)
 
  vowel= "aeiou" 
  array = str.split
    if vowel.include?(str[0]) == true
      return str.concat("ay")
    elsif vowel.include?(str[0]) == false && vowel.include?(str[1]) == true
      return "#{str[1..-1]}#{str[0]}".concat("ay")
    elsif  vowel.include?(str[0]) == false && vowel.include?(str[1]) == false
      return "#{str[2..-1]}#{str[0..1]}".concat("ay")
    end  
end


=begin
  str= "jrapple"
  vowel= "aeiou"
  str.split.map! do |word|
    word_size = word.size.to_i
    until word_size > 0
      if vowel.include?(str[0])
        x = word.index(/[aeiou]/)
        puts x
        word[0] = word[1..-1] 
        add_word = word[0..1]
        word_size -= 1
      end  
     
    end
      #puts "#{word[1..-1]}#{word[0..1]}".concat("ay")
    
  end  
=end   