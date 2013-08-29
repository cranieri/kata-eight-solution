class Matcher
  attr_accessor :matcher

  def initialize(matcher)
    @matcher = matcher
  end

  def find_matches
    @matcher.find_matches
  end
end