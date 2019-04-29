class CashRegister
<<<<<<< HEAD
  attr_accessor :total
=======
  attr_accessor :item, :price, :quantity, :total
  @previous_total = 0
  @@items = []
>>>>>>> ec5cb9358d5ed3c8e133e3f01aaf388436ab47c4
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
<<<<<<< HEAD
    @items = []
=======
>>>>>>> ec5cb9358d5ed3c8e133e3f01aaf388436ab47c4
  end
  
  def self.total
    @total
  end
  
  def discount
    @discount
  end
  
  def apply_discount
    if discount > 0
      @total = (@total - @discount.to_f / 100 * @total).to_i
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def add_item(item, price, quantity = 1)
<<<<<<< HEAD
    @previous = price
    quantity.times{@items << item}
    @total += price * quantity
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total -= @previous
=======
    @@previous_total = @total
    @@items << item
    @total += price * quantity
  end
  
  def item
    @@items
  end
  
  def void_last_transaction
    last = @total - @previous_total
    @total - last
>>>>>>> ec5cb9358d5ed3c8e133e3f01aaf388436ab47c4
  end
  
end
