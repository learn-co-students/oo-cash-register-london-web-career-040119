require "pry"

class CashRegister

  attr_accessor :discount, :total


  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items =[]
    @items_price = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total += price*quantity
    quantity.times do
      @items.push(title)
    end
    @items_price.push(title, price)
  end

  def apply_discount
    if @discount > 0
      @total -= @discount/100.to_f * @total
      "After the discount, the total comes to $800."
    else
      "There is no discount to apply."
    end

  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @items_price[-1].to_f
  end




end
