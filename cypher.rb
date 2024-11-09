def caesar_cipher(string,num)
  return_statement=''
  string.chars.map do |char| 
    char.ord.between?(65,90)? return_statement+=((char.ord-'A'.ord+num)%26+'A'.ord).chr :
    char.ord.between?(97,122)? return_statement+=((char.ord-'a'.ord+num)%26+'a'.ord).chr :
    return_statement+=char
  end
  return_statement
end
puts caesar_cipher("What a string!", 5)