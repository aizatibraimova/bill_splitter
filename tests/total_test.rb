require 'minitest/autorun'
require_relative '../bill'

class TotalTest < Minitest::Test
  def setup
    @bill = nil
  end

  def test_calculate_bill_per_person_with_user_input
    def @bill.get_input(prompt)
      case prompt
      when "Enter the total amount of the bill: "
        "100\n"
      when "Enter the number of people: "
        "4\n" 
      when "Choose tip percentage:\n1. 0%\n2. 15%\n3. 20%\n4. 25%\nEnter your choice (1-4): "
        "2\n" 
      else
        ""
      end
    end

    @bill = Bill.new(100, 4, 15)
    bill_per_person = @bill.calculate_bill_per_person

    assert_equal 29, bill_per_person
  end
end
