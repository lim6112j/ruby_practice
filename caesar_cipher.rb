# odin project assignment
def caesar_cipher(txt, num)
  ciphered = txt.each_char.map do |char|
    if char.match?(/[a-z]/)
      new_ord = char.ord + num
      if new_ord > 'z'.ord
        new_ord = 'a'.ord + (new_ord - 'z'.ord - 1)
      end
      new_ord.chr
    elsif char.match?(/[A-Z]/)
      new_ord = char.ord + num
      if new_ord > 'Z'.ord
        new_ord = 'A'.ord + (new_ord - 'Z'.ord - 1)
      end
      new_ord.chr
    else
      char
    end
  end.join
  p ciphered
end
caesar_cipher("What a string!", 5)
