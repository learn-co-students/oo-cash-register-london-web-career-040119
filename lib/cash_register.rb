class CashRegister

  attr_accessor :total, :discount, :items


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @employee_discount = 20
    @items = []
    @last_transaction = 0
  end

  def add_item(title, price, quantity = 1)
    @last_transaction = price * quantity
    @total += @last_transaction
      quantity.times { @items << title }
  end

  def apply_discount
    if @discount <= 0
      "There is no discount to apply."
    elsif @employee_discount
      @total = @total * 0.8
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @total -= @last_transaction
  end


end

#
# tweet_messages
#     tweets.map { |tweet| tweet.message }
