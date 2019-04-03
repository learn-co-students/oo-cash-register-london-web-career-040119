require 'pry'

class CashRegister
  attr_reader :discount
  attr_accessor :total, :items

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times { @items << title }
    @last_items_price = price
  end

  def apply_discount
    return 'There is no discount to apply.' if @discount.nil?

    @total -= (@total / 100 * @discount)
    "After the discount, the total comes to $#{@total}."
  end

  def void_last_transaction
    @total -= @last_items_price
  end

end
