class ItemsRepository
  def items
    items_array = [Item.new(1, "Item1"),
                   Item.new(2, "Item2"),
                   Item.new(3, "Item3")]
    items_array
  end
end