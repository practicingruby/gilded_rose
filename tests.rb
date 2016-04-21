
require_relative "gilded_rose"
require "minitest/autorun"

describe "Gilded Rose" do
  it "items have names" do
    items = [Item.new("foo", 0, 0)]
    assert_equal items[0].name, "foo"
  end
end