class Item
  attr_accessor :item_name, :item_cat, :item_loc, :item_quant, :item_price, :item_desc
  
  def initialize(item_name,item_cat,item_loc,item_quant,item_price,item_desc)
    @item_name = item_name
    @item_cat = item_cat
    @item_loc = item_loc
    @item_quant = item_quant
    @item_price = item_price
    @item_desc = item_desc
  end
  
  def insert
    attributes = []
    instance_variables.each { |i|
      attributes << i.to_s.delete("@")
    }
    
    query_components_array = []
    attributes.each { |x|
      value = self.send(x)
      
      if value.is_a?(Integer)
        query_components_array << "#{value}"
      else
        query_components_array << "'#{value}'"
      end
    }
    
    query_string = query_components_array.join(", ")
    puts query_string
    
    DATABASE.execute("INSERT INTO items (name, category, location, quantity, cost, description) VALUES (#{query_string})")  
    
    puts "Inserted successfully!"  
  end
  
  #DELETE Method
  def self.delete(value)
    
    if value.is_a?(Integer) 
      DATABASE.execute("DELETE FROM items WHERE id = #{value}")
    else
      DATABASE.execute("DELETE FROM items WHERE name = '#{value}'")
    end
  end
  
  #lists all items name and details
  def self.list_items
    list = DATABASE.execute("SELECT id, name FROM items")
  end
  
  #list all items information
  def self.list_item_details
      DATABASE.execute("SELECT * FROM items")
  end
  
  def self.fetch_item_by(input,num)
    if num == 1
      DATABASE.execute("Select * FROM items WHERE id = #{input}")
    elsif num == 2
      DATABASE.execute("Select * FROM items WHERE name = '#{input}'")
    elsif num == 3
      DATABASE.execute("Select * FROM items WHERE category = '#{input}'")
    else num == 4
      DATABASE.execute("Select * FROM items WHERE location = '#{input}'")
    end
  end

  
end