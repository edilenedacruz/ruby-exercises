gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'

class ShovelArrayTest < Minitest::Test
  def test_array_equality
    a1 = []
    a2 = []
    refute a1.object_id == a2.object_id
    assert a1 == a2
  end

  def test_shovel_into_array
    a1 = []
    a2 = a1
    a2 << "a"
    a2 << "b"
    a2 << "c"
    assert_equal ["a", "b", "c"], a2
    assert_equal ["a", "b", "c"], a1

    # Explain in English what `<<` does to an array.
    #It adds the element to the end of the array, modifying it
  end

  def test_add_two_arrays
    a1 = []
    a2 = a1
    a2 = a2 + ["a"]
    a2 = a2 + ["b"]
    a2 = a2 + ["c"]
    assert_equal ["a", "b", "c"], a2
    assert_equal [], a1
  end

  # How is shoveling different from adding?
  #Shovelling permanently modifies the original and the copy array while adding only modifies the specified array.

  def test_shovel_on_array_inside_hash
    hash = {"letters" => [], "numbers" => []}

    hash["letters"] << "a"
    hash["letters"] << "b"
    hash["letters"] << "c"

    hash["numbers"] << 1
    hash["numbers"] << 2
    hash["numbers"] << 3

    assert_equal ["a", "b", "c"], hash["letters"]
    assert_equal [1, 2, 3], hash["numbers"]
  end
end
