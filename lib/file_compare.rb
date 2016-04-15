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

    # Public: Returns true/false if files match
    #
    # left_file_path  - Path to the left file
    # right_file_path  - Path to the right file
    #
    # Examples
    #  FileCompare.compare_files(left_file_path, right_file_path)
    #  => true/false
    #
    # Returns bool
    def self.compare_files(left_file_path, right_file_path)
      left_digest = get_fingerprint(left_file_path)
      right_digest = get_fingerprint(right_file_path)
      left_digest == right_digest
    end
end
