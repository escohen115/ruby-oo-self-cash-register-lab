



class CashRegister
    attr_accessor :discount, :total
    def initialize (discount = 0) 
        @total = 0
        @discount = discount
        @items = []
        @last_total = 0

    end
    def add_item(title, price, quantity = 1)
        @last_total = @total
        quantity.times {@items << title }
        @total += (quantity * price)
    end

    def apply_discount
        if discount != 0
        @total -= @total * (discount.to_f/100)
        "After the discount, the total comes to $#{@total.to_i}."
        else
        "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total = @last_total
    end

end





