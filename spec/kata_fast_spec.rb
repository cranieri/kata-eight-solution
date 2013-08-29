require 'spec_helper'

describe ::KataFast do
  describe ".find_matches" do
    it "find matches in the words list" do
      kata_fast = KataFast.new("#{Rails.root}/spec/support/test_file.txt")
      expect(kata_fast.find_matches).to eq ["al + bums => albums\n", "bar + ely => barely\n"]
    end
  end
end
