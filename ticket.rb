class Ticket
  def initialize(venue)
    @venue = venue
  end
  def date=(new_date)
    if valid_date_format?(new_date)
      @date = new_date
    else
      puts "Please submit the date in the format 'yyyy-mm-dd'."
    end
  end
  # etc.
  def set_price(amount)
    @price = amount
  end
  def price=(amount)
    if (amount * 100).to_i == amount * 100
      @price = amount
    else
      puts "The price seems to be malformed"
    end
  end
  def price
    @price
  end
  def venue
    @venue
  end
  def discount(amount)
    discounted_final_price = @price - (amount / 100.00 * @price)
    formatted_discounted_price = format("%.2f", discounted_final_price)
  end
  def valid_date_format?(date)
    /^\d{4}-\d{2}-\d{2}$/.match?(date)
  end
    
end

th = Ticket.new("Town Hall")
th.set_price(100.00)
puts "The ticket costs $#{"%.2f" % th.price}."
puts "The ticket for #{th.venue} has been discounted 15% to #{th.discount(15)}"
th.date = "2013-11-12"
th.date = "13-11-12"
