require 'minitest/autorun'
require_relative '../bill'

class BillTest < Minitest::Test
  def test_calculate_bill_per_person
    total_amount = 100
    num_people = 4
    tip_percentage = 15
    bill = Bill.new(total_amount, num_people, tip_percentage)

    bill_per_person = bill.calculate_bill_per_person

    assert_equal 29, bill_per_person
  end
end
