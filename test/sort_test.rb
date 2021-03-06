require "test_helper"

class SortTest < ActiveSupport::TestCase
  test "it is initialized with the a param and a type" do
    sort = Sift::Sort.new("hi", :int, "hi")

    assert_equal "hi", sort.param
    assert_equal :int, sort.type
    assert_equal "hi", sort.parameter.internal_name
  end

  test "it raises if the type is unknown" do
    assert_raise RuntimeError do
      Sift::Sort.new("hi", :foo, "hi")
    end
  end

  test "it raises if the scope params is not an array" do
    assert_raise RuntimeError do
      Sift::Sort.new("hi", :int, "hi", :direction)
    end
  end
end
