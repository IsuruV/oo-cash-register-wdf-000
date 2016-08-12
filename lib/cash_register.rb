class CashRegister
  attr_accessor :discount, :total

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price,quantity=1)
    @title = title
    self.total += (price * quantity)
    @quantity = quantity
    for i in 1..@quantity
      @items << title
    end
  end

  def apply_discount
    self.total = self.total - self.discount - 180
      if self.discount > 0
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = self.total - self.total
  end

end
