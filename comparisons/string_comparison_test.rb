gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'

class StringComparisonsTest < Minitest::Test
  def test_equality
    s1 = "abc"
    s2 = "abc"
    refute  s1.object_id == s2.object_id
    assert s1 == s2
  end

  def test_greater_or_less_than
    s1 = "abc"
    s2 = "xyz"
    assert s1 < s2
    refute s1 > s2
  end

  def test_similar_strings
    s1 = "abc"
    s2 = "abd"
    refute s1 == s2
    assert s1 < s2
    refute s1 > s2
    assert s1 <= s2
    refute s1 >= s2
  end

  def test_compare_upper_and_lower_case
    s1 = "abc"
    s2 = "XYZ"
    refute s1 < s2
    assert s1 > s2
    refute s1 <= s2
    assert s1 >= s2
  end

  def test_compare_capitalized_with_upper_case
    s1 = "Abc"
    s2 = "ABC"
    refute s1 < s2
    assert s1 > s2
    refute s1 <= s2
    assert s1 >= s2
  end

  def test_the_name_number
    s1 = "1"
    s2 = "1.0"
    assert s1 < s2
    refute s1 > s2
    assert s1 <= s2
    refute s1 >= s2
  end

  def test_different_numbers
    s1 = "2.0"
    s2 = "10.0"
    refute s1 < s2
    assert s1 > s2
    refute s1 <= s2
    assert s1 >= s2
  end

  def test_between
    abc = "abc"
    prq = "prq"
    xyz = "xyz"
    refute abc.between?(prq, xyz)
    assert prq.between?(abc, xyz)
    refute prq.between?(xyz, abc)
  end

  def test_sort_fruit
    strings = ["apple", "BANANA", "cherry", "Date"]
    assert_equal ["BANANA", "Date", "apple", "cherry"], strings.sort
  end

  def test_sort_prices
    prices = ["9.99", "10.15", "2.75", "1.01"]
    assert_equal ["1.01", "10.15", "2.75", "9.99"], prices.sort
  end
end
