class CashRegister

  attr_accessor :total, :discount, :items, :transactions

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @transactions = []
  end

  def add_item(name, price, quantity=1)
    @total += price * quantity
    quantity.times do
      @items << name
    end
    @transactions << price
  end

  def apply_discount
    if discount > 0
      @total -= 10 * discount
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
     @total -= transactions[-1]
   end

end
