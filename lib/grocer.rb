require "pry"

def find_item_by_name_in_collection(name, collection)
  collection.map do |key|
      #binding.pry
    return key if key[:item]==name
  end
  return nil
  end
  find_item_by_name_in_collection("AVOCADO", collection=[
    {:item => "AVOCADO", :price => 3.00, :clearance => true},
    {:item => "KALE", :price => 3.00, :clearance => false},
    {:item => "BLACK_BEANS", :price => 2.50, :clearance => false},
    {:item => "ALMONDS", :price => 9.00, :clearance => false},
    {:item => "TEMPEH", :price => 3.00, :clearance => true},
    {:item => "CHEESE", :price => 6.50, :clearance => false},
    {:item => "BEER", :price => 13.00, :clearance => false},
    {:item => "PEANUTBUTTER", :price => 3.00, :clearance => true},
    {:item => "BEETS", :price => 2.50, :clearance => false},
    {:item => "SOY MILK", :price => 4.50, :clearance => true}
  ])

  def consolidate_cart(cart)
    new_array = []
  cart.map do |i|
    new_item = find_item_by_name_in_collection(i[:item], new_array)
  if new_item != nil
    new_item[:count] += 1
  else
    new_item = {
      :item => i[:item],
      :price =>i[:price],
      :clearance => i[:clearance],
      :count => 1
    }
  end
    new_array << new_item
  end
  p new_array
  end
  consolidate_cart(cart = [
    { :item => "DOG FOOD" },
    { :item => "WINE" },
    { :item => "STRYCHNINE"}
  ])
