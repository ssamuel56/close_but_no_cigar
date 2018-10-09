require_relative 'grand_bash.rb'
require "minitest/autorun"


class Test_grand_bash < Minitest::Test
  def test_begin
    assert_equal(1, 1)
  end
  def test_for_winner_1
    my_number = "1234"
    bash_numbers = ["1233", "4562", "7865", "1234", "1198"]
    assert_equal(["1233"], off_by_one_arr(my_number, bash_numbers))
  end
  def test_for_winner_2
    my_number = "7856"
    bash_numbers = ["1233", "4562", "7859", "1234", "1198"]
    assert_equal(["7859"], off_by_one_arr(my_number, bash_numbers))
  end
  def test_for_winner_3
    my_number = "1658"
    bash_numbers = ["1233", "4562", "7865", "1234", "1651"]
    assert_equal(["1233"], off_by_one_arr(my_number, bash_numbers))
  end
  def test_for_winner_4
    my_number = "1234"
    bash_numbers = ["1233", "4562", "7865", "1234", "1198"]
    assert_equal(["1233"], off_by_one_arr(my_number, bash_numbers))
  end
end




## Tests for first itteration of the function.
# def test_4_number_string
#   my_number = "1234"
#   bash_numbers = []
#   assert_equal([], how_many_match(my_number, bash_numbers))
# end
# def test_4_number_string_2
#   my_number = "1233"
#   bash_numbers = ["1233", "1345", "3455", "1234"]
#   assert_equal([], how_many_match(my_number, bash_numbers))
# end