# frozen_string_literal: true

require 'base64'
# This helper is here to simply the 64 encoding
#   for the Trip Parser API
module Encoder
  # This helper will encode in base 64 any text you pass to it
  #
  # @return [String] Base 64 version of the text passed in param
  #
  def self.text2base64(text)
    Base64.strict_encode64(text)
  end

  # This helper will encode in base 64 any file you pass to it
  #  very useful for the Trip Parser API to parse pdf, emails, html files
  # @return [String] Base 64 version of the file passed in param
  #
  def self.file2base64(file_path)
    file = File.open(file_path)
    Base64.strict_encode64(file.read)
  end
end
