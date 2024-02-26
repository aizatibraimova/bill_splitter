require_relative "bill"

class Total
  def run
    total_amount = get_input("Enter the total amount of the bill: ").to_f
    num_people = get_input("Enter the number of people: ").to_f
    tip_percentage = get_tip_percentage

    bill = Bill.new(total_amount, num_people, tip_percentage)
    bill_per_person = bill.calculate_bill_per_person

    puts "Each person needs to pay: $#{bill_per_person}"
  end

  private

  def get_tip_percentage
    puts "Choose tip percentage:"
    puts "1. 0%"
    puts "2. 15%"
    puts "3. 20%"
    puts "4. 25%"
    tip_option = get_input("Enter your choice (1-4): ").to_i

    case tip_option
    when 1 then 0
    when 2 then 15
    when 3 then 20
    when 4 then 25
    else
      0
    end
  end

  def get_input(prompt)
    print prompt
    gets.chomp
  end
end
