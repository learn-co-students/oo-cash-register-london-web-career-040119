class CashRegister

  attr_accessor :total, :discount, :items
  attr_reader :title, :price, :quantity, :last_transaction

  # ITEMS = []

  def initialize(discount=0)
    self.total = 0
    self.discount = discount
    self.items = []
    #@item_details = []
    @last_transaction = 0
  end

  def add_item(title, price, quantity=1)
    @last_transaction = price*quantity
    @total += @last_transaction

    quantity.times{items << title}
  end

  def apply_discount
    if discount != 0
      @total = (total * ((100.0 - discount.to_i)/100)).to_i
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
