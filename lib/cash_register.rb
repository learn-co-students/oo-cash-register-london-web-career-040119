class CashRegister

  def initialize(total=0, discount=0)
    @total = total
    @discount = discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity=0)
    if quantity == 0
      @total = @total+price
    else
      @total = @total+(price*quantity)
    end
  end

  def apply_discount
    if @discount != 0
      #apply apply discount here
      discounted = ((100-@discount)*@total)/100
      return "After the discount, the total comes to $#{discounted}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    items = []
    items.push(add_item.title)
    items
  end


  def void_last_transaction
  end

end
