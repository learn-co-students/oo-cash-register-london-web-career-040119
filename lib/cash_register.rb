class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @quantity = quantity
    @price = price
    @title = title
    @total += price * quantity
    quantity.times do
      items << title
    end
    @last_transaction = self.total
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    elsif @discount > 0
      @total = total - total * discount / 100.00
      "After the discount, the total comes to $#{total.to_i}."
    end
  end
  def void_last_transaction
    self.total = self.total - last_transaction
  end
end
