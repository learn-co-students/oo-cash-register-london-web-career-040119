require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction
  @@last_transaction = {:title => "", :price => 0}

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 0)
    if quantity == 0
      self.total += price
      @items << title
      @@last_transaction[:title] = title
      @@last_transaction[:price] = price
    else
      self.total += (price*quantity)
      quantity.times do
        @items << title
      end
    end
  end

  def apply_discount
    if self.discount > 0
      self.total = (self.total*((100 - self.discount).to_f/100.0)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= (@@last_transaction[:price])
    @items.delete(@@last_transaction[:item])
  end

end
