require 'file_compare/version'
require 'digest/sha2'

module FileCompare
  # Public: Returns SHA-1 finger print of provided file
  #
  # file_path  - Path to the file
  #
  # Examples
  #  FileCompare.get_fingerprint(file_path)
  #  => 069f850d97ac8e2d731aaad52b0d090e47c483ee
  #
  # Returns string
  def self.get_fingerprint(file_path)
    Digest::SHA256.file(file_path).hexdigest
  end
end
