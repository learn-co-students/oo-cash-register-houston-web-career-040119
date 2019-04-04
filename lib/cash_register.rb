
require 'pry'

class CashRegister

attr_reader :discount, :list_of_stuff, :price, :quanitity, :title
attr_accessor :total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title,price,quantity = 1)
    @price = price
    @quantity = quantity
    quantity.times do
      @items << title
    end
    @total += price * quantity
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = self.total * (100 - @discount)/100
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @quantity * @price 
  end

end

# binding.pry
0
