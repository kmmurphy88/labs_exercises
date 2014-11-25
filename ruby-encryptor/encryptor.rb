class Encryptor
  def cipher(rotation)
    characters = (' '..'z').to_a
    rotated_characters = characters.rotate(rotation)
    Hash[characters.zip(rotated_characters)]
  end

  def encrypt_letter(letter, rotation)
    cipher_for_rotation = cipher(rotation)
    cipher_for_rotation[letter]
  end

  def encrypt(string, rotation)
    letters = string.split("")
    results = []
    results = letters.collect do |letter|
      encrypted_letter = encrypt_letter(letter, rotation)
      # results.push(encrypted_letter)
      end
      results = results.join
  end

  def decrypt(string, rotation)
    rotation = -rotation
    letters = string.split("")
    results = []
    results = letters.collect do |letter|
    encrypted_letter = encrypt_letter(letter, rotation)
    # results.push(encrypted_letter)
    end
    results = results.join
  end

  def encrypt_file(filename, rotation)
  # Create the file handle to the input file
  file = File.open(filename, "r")
  # Read the text of the input file
  contents = file.read
  file.close
  # Encrypt the text
  encrypted_contents = encrypt(contents, rotation)
  # Create a name for the output file
  # Create an output file handle
  new_file = File.open(filename + ".encrypted", "w")
  # Write out the text
  new_file.write(encrypted_contents)
  # Close the file
  new_file.close
  end

  def decrypt_file(filename, rotation)
  # Create the file handle to the encrypted file
  message = File.open(filename, "r")
  # Read the encrypted text
  content = message.read
  message.close
  # Decrypt the text by passing in the text and rotation
  decrypted_contents = decrypt(content, rotation)
  # Create a name for the decrypted file
  decrypted_message = filename.gsub("encrypted", "decrypted")
  new_message = File.open(filename + ".decrypted", "w")
  new_message.write(decrypted_contents)
  # Create an output file handle
  # Write out the text
  # Close the file
  new_message.close
  decrypted_contents
  end
end
