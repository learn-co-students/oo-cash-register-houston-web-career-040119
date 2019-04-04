
class CashRegister
  attr_accessor :discount, :total, :last_tranaction

  def initialize(discount = 0)
    @total = 0.0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(item_name, price, quantity = 1)
    quantity.times do |i|
      @items << item_name
      @total += price.to_f
    end
    @last_tranaction = price * quantity
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total -= @total * @discount / 100
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_tranaction
  end



end
