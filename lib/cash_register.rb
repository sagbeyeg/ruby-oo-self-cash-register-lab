require 'pry'
class CashRegister
    attr_accessor :total, :items, :discount, :last_transaction
    
    def initialize(discount=0, total=0)
        @total = total
        @discount = discount
        @items = []
        # @all << self
    end

    def add_item (title, price, quantity = 1)
       self.total += price * quantity
       quantity.times {items << title}
       self.last_transaction = price * quantity
    #    binding.pry
    end

    def apply_discount
        if @discount > 0
        @total = @total - @discount * 10
        "After the discount, the total comes to $#{@total}."
        else
        "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total = self.total - self.last_transaction
        # binding.pry
    end
end
