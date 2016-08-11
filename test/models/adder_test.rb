require 'test_helper'

class AdderTest < ActiveSupport::TestCase
  test "adder is collect" do
    assert (Adder.add(1,4) == 5)
  end
  # test "the truth" do
  #   assert true
  # end
end
