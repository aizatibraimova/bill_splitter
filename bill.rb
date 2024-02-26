class Bill
  attr_accessor :total_amount, :num_people, :tip_percentage

  def initialize(total_amount, num_people, tip_percentage)
    @total_amount = total_amount.to_f
    @num_people = num_people.to_f
    @tip_percentage = tip_percentage.to_f
  end

  def calculate_bill_per_person
    total_with_tip = @total_amount * (1 + @tip_percentage / 100.0)
    (total_with_tip / @num_people).round
  end
end
