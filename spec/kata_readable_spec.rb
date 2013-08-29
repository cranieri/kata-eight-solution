require 'spec_helper'

describe ::KataReadable do
  describe ".find_matches" do
    let(:kata_readable) { KataFast.new("#{Rails.root}/spec/support/test_file.txt") }
    it "find matches in the words list" do
      expect(kata_readable.find_matches).to eq ["al + bums => albums\n", "bar + ely => barely\n"]
    end
  end
end
