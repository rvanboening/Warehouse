# # require_relative "main.rb"
#
# class Item
#   attr_reader :id
#   attr_accessor :name
#
#   def initialize(options)
#     @name = options[:name]
#     @category = options[:category]
#     @location = options[:location]
#     @serial_num = options[:serial_num]
#     @quanity = options[:quanity]
#     @cost = options[:cost]
#     @description = [:description]
#   end
#   #
#   # def sync
#   #   attribute = ["name", "age", ""]
#   #
#   #   DATABASE.ex
#   # take the attributes for this object and make sure those are the values in the objects corresponding row in the "products" table.
#   def sync
#     DATABASE.exectute("UPDATE products SET name = '#{name}' WHERE = #{id}")
#   end
#
#
#   def name
#     DATABASE.execute("SELECT * FROM products WHERE name = #{@name}")
#   end
# end
#
