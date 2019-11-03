# Second Variation on Caesar Cipher
def decode(v)
  encoded_message = v.join[2..-1]
  decoded_message = ''
  encoded_message.chars do |char|
    if char.match?(/[a-zA-Z]/)
      decoded_message << (char.ord - 1).chr
    else
      decoded_message << char
    end
  end
  decoded_message
end

def encode_str(u, rotate)
  prefix = u[0].downcase + (u[0].downcase.ord + rotate).chr
  shifted_message = ''
  u.chars do |char|
    if char.match?(/[a-zA-Z]/)
      shifted_message << (char.ord + 1).chr
    else
      shifted_message << char
    end
  end
  encoded_message = prefix + shifted_message
  encoded_message.scan(/.{1,#{((u.size + 2) / 5.0).ceil}}/)
end
