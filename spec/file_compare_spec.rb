require 'simplecov'
SimpleCov.start
require 'spec_helper'

describe FileCompare do

  let(:test_text_file) { 'spec/support/test_text.txt' }
  let(:left_matching_file) { 'spec/support/left_file.txt' }
  let(:right_matching_file) { 'spec/support/right_file.txt' }

  it 'has a version number' do
    expect(FileCompare::VERSION).not_to be nil
  end

  describe 'get_fingerprint' do
    it 'should not raise a NoMethodError' do
      expect { FileCompare.get_fingerprint(test_text_file) }.not_to raise_error
    end

    context 'given a valid file path' do
      it 'should return an SHA256 hash as a string' do
        f = FileCompare.get_fingerprint(test_text_file)
        expect(f).to be_a String
        expect(f).to eq(Digest::SHA256.file(test_text_file).hexdigest)
      end
    end
  end
end
