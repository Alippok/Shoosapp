require('minitest/autorun')
require('minitest/rg')
require_relative('../models/shoe_order.rb')

class TestShoeOrder < MiniTest::Test

  def setup
    params = {
      "first_name" => "Johnny",
      "last_name" => "Bloggs",
      "first_address_line" => "23 Crag Street",
      "city" => "Edinburgh",
      "postcode" => "EH3 12TY",
      "quantity" => "2",
      "size" => "9"
    }
    @shoe_order = Shoe_order.new(params)

  end

  def test_first_name
    assert_equal("Johnny", @shoe_order.first_name)
  end

  def test_second_name
    assert_equal("Bloggs", @shoe_order.last_name)
  end

  def test_full_name
    assert_equal("Johnny Bloggs", @shoe_order.full_name)
  end

  def test_address
    assert_equal("23 Crag Street, Edinburgh, EH3 12TY", @shoe_order.address)
  end
 
  def test_quantity_is_a_fixnum
    assert_equal(2, @shoe_order.quantity)
  end





end 