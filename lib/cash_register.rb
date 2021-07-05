class CashRegister # defining the CashRegister class

  attr_accessor :items, :discount, :total, :last_transaction # using the accessor to create method for these symbbols - these

  def initialize(discount=0) # use the initialize method to pass argument of discount which is default to 0% unless set otherwise
    @total = 0 # this instant variable set the current total - this total will always be 0 untill items are added
    @discount = discount # setting discount to also be an instant varibale / passed as 0 discount unless set otherwise
    @items = [] # setting items to be an instant variable which is set to an empty array. which we will later push items into
  end # end of initilazlize

  def add_item(title, amount, quantity=1) # this instant method allows us to add out items in to our item array which starts of empty - when adding a new item we need three bit of information to pass: we need the title(product name), amount(the prince of the product) and the quantity( how many of the products to we want) - we set the default of quantity to 1 - hence unless we state otherwise the it will assume we just want one of the particular item.
    self.total += amount * quantity #use the self method to bring in our current total then we add the "amount" of the new product times the "quantity" of how many we want
    quantity.times do # then we use this function in the case when we are adding more than one of the same product to our array - hench it will use the .times method to repeat for the amount of quantity we want
      items << title # then push the title('s) of the product('s) in to the array and due to the above line it will add the title as many times as the quantity required is.
    end # end the .time do command
    self.last_transaction = amount * quantity # the last_transaction method will tell us the amount just of the most recent transaction made - this was defined at the top in the accessor - we again use the self. method to call upon our current instance (our current transactions) which we are calling upon  - of course the last transaction will be the total of the amount of the product passed in the argument time the quantity of them we want. - this would indicate to us how much we are adding to our total.
  end # end of the add time method

  def apply_discount # this instant method  is going to be the part where discount will be applied if it applicable
    if discount != 0 # we use the conditional statement if to see if the discount "is not" equal to 0 ( but using the not equal sign != - this negates it being equal) - hench if there is a discount it will be a number other than 0 and then we will go ahead and apply this - but if it is equal to 0 we will continue with the else statement
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i # using the self method to bring in our current total of our instance and setting this equal the discount being taken off - we will times our title by this (100.0 - discount.to_f)/100) which is just defining the percentage taken, by pulling in the discount method and setting it to a float number. - then after this discount is made and times by total we set the number back to an integer by using to_i( simply cause this whats the test asks for )
      "After the discount, the total comes to $#{self.total}." # this string will then be printed bring in the new discounted total from above
    else # if discount is = to 0 then we do this...
      "There is no discount to apply." # print this string
    end # end of conditional statements
  end # end of applying discount method

  def void_last_transaction # This method will be used to back track and removed the last transaction from the total
    self.total = self.total - self.last_transaction # use self to bring in our current (instance) of our total and set this equal again out current total minus the total of our last transaction which was defined in the add item method.
  end  # end of the void instance method
end # end of cash register class
