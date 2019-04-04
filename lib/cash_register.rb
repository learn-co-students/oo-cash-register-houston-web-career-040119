class CashRegister
    attr_reader :discount
    attr_accessor :total, :items, :last_transaction_price 
    attr_accessor :last_transaction_quantity

    def initialize(discount = 0)
        @total = 0
        @discount = discount 
        @items = []
        @last_transaction_price = nil
        @last_transaction_quantity = nil
    end

    def add_item(title,price, quantity = 1)
        self.total += price * quantity
        quantity.times do 
            self.items << title 
        end  
        self.last_transaction_price = price
        self.last_transaction_quantity = quantity 
    end

    def apply_discount
        self.total -= self.discount * self.total / 100
        if self.discount == 0
            "There is no discount to apply."
        else
            "After the discount, the total comes to $#{self.total}."
        end
    end

    def void_last_transaction
        if self.last_transaction_price != nil
            self.last_transaction_quantity.times do
                self.items.pop
                self.total -= self.last_transaction_price 
            end 
            self.last_transaction_price = nil 
            self.last_transaction_quantity = nil
        end
    end
end

