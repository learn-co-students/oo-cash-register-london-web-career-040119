class CashRegister

  attr_accessor :total, :items, :last_transaction
  attr_reader :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @total += price*quantity
    quantity.times do
      @items << title
    end
    self.last_transaction = price * quantity
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      self.total = (total/100*(100-self.discount))
      "After the discount, the total comes to $#{total}."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end
end
