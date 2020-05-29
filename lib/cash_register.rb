require 'pry'

class CashRegister
  attr_accessor :total, :discount, :last_tx_amount
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def discount
    @discount = 20
  end

  def add_item(item, price, quantity = 1)
    if quantity > 1
      i = 0
      while i < quantity
        @items << item
        i += 1
      end
    else
      @items << item
    end
    @total += price * quantity
    @last_tx_amount = @total
    @total
  end

  def apply_discount
    if @discount > 0
      @discount = @discount/100.to_f
      @total -= @total * @discount
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= @last_tx_amount
  end
end
