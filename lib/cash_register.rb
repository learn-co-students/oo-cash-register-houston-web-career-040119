require "pry"

class CashRegister

  attr_accessor :discount
  attr_writer :total, :items

  def initialize(discount = nil)
    @discount = discount
    @total = 0
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    quantity.times do
      if @items
        @items.push(item)
      else
        @items = [item]
      end

    end
    @total += price * quantity
  end

  def apply_discount
    if @discount
      @total = (@total * (1 - @discount / 100.0)).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = 0.0
  end




end



















# binding.pry
puts "dsifa"
