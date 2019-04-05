class CashRegister
attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price*quantity
    @new_item_cost = price*quantity
    quantity.times do
      items << title
    end
  end

  def apply_discount
    if discount > 0
      self.total = total - total * discount / 100.00
      "After the discount, the total comes to $#{total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= @new_item_cost
  end

end
