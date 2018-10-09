require_relative 'close_but_no_cigar.rb'
require 'minitest/autorun'

class Test_close_but_no_cigar < Minitest::Test
  def test_1
    assert_equal(1, 1)
  end
  def test_4_number_string
    my_number = "1234"
    bash_numbers = []
    assert_equal([], grand_bash(my_number, bash_numbers))
  end
  def test_4_1234
    my_number = "1234"
    bash_numbers = ["1234"]
    assert_equal(["1234"], grand_bash(my_number, bash_numbers))
  end
  def test_4_three_numbers
    my_number = "1234"
    bash_numbers = ["1233", "1345", "3455"]
    assert_equal(["1234"], grand_bash(my_number, bash_numbers))
  end
  def test_4_four_numbers_
    my_number = "1234"
    bash_numbers = ["1273", "4645", "8455", "7945"]
    assert_equal(["1234"], grand_bash(my_number, bash_numbers))
  end
  def test_4_five_numbers
    my_number = "1234"
    bash_numbers = ["1233", "1345", "3455", "7945", "2345"]
    assert_equal([], grand_bash(my_number, bash_numbers))
  end
  def test_4_five_numbers_second
    my_number = "1234"
    bash_numbers = ["1345", "7564", "1234", "7654", "8513"]
    assert_equal(["1234"], grand_bash(my_number, bash_numbers))
  end
  def test_4_six_numbers
    my_number = "1234"
    bash_numbers = ["1233", "1345", "3455", "7654", "1234", "4585"]
    assert_equal(["1234"], grand_bash(my_number, bash_numbers))
  end
  def test_4_six_numbers_second
    my_number = "1234"
    bash_numbers = ["1233", "1345", "3455", "1234", "5468", "2946"]
    assert_equal(["1234"], grand_bash(my_number, bash_numbers))
  end
  def test_4_ten_numbers
    my_number = "1234"
    bash_numbers = ["1233", "1345", "3455", "1234", "7568", "4158", "8634", "7652", "1234", "4652"]
    assert_equal(["1234"], grand_bash(my_number, bash_numbers))
  end
end
