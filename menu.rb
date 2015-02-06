class Menu
  
  def self.launch
    loop do
      puts "What do you want to do.", "1. Add", "2. Delete", "3. Fetch", "4. Edit"
      @action = gets.chomp.to_i
      break if [1,2,3,4].include? @action
    end
  
    @action_text= "Add" if @action == 1
    @action_text= "Delete" if @action == 2
    @action_text= "Fetch" if @action == 3
    @action_text= "Edit" if @action == 4
  
    loop do
       puts "#{@action_text}...", "1. Product", "2. Category", "3. Location"
       @pcl = gets.chomp.to_i
       break if [1,2,3].include? @pcl
     end
   
     @pcl_text= "Item" if @pcl == 1
     @pcl_text= "Category" if @pcl == 2
     @pcl_text= "Location" if @pcl == 3


    #add Product
    if @action == 1
      if @pcl== 1
        puts "Enter item name"
        item_name=gets.chomp
        puts "Enter item category."
        item_cat=gets.chomp
        puts "Enter item location."
        item_loc=gets.chomp
        puts "Enter item quanity."
        item_quant=gets.chomp.to_i
        puts "Enter item price." 
        item_price=gets.chomp.to_f
        puts "Enter a description"
        item_desc=gets.chomp
      end
    
      #add category
      if @pcl == 2
        puts "#{@action_text} category."
        cat_name=gets.chomp
      end
    
      #add Location
      if @pcl == 3
        puts "#{@action_text} location."
        loc_name=gets.chomp
      end 
    end  
  
    #Delete Item
    if @action == 2
      if @pcl == 1
        id, name = action_by
      end 

      #Delete Category
      if @pcl == 2
        id, name = action_by
      end
    
      #Delete Location
      if @pcl == 3
        id, name = action_by
        
      end
    end
  
    #Fetch Read item
    if @action == 3
      if @pcl == 1
        id, name = action_by
      end 
   
      #Fetch Category
      if @pcl == 2
        id, name = action_by
      end
    
      #Fetch Location
      if @pcl == 3
        id, name = action_by
      end
    end  
  
    #Edit Item
    if @action == 4
      if @pcl == 1
        id, name = action_by
      end
    
      #Edit Category
      if @pcl == 2
        id, name = action_by
      end
    
      #Edit Location
      if @pcl == 3
        id, name = action_by
      end
    end
  end
  
  def self.action_by
      puts " #{@action_text} #{@pcl_text} by..",  "1. ID", "2. Name"
      by = gets.chomp.to_i
    if by == 1
      puts "Enter #{@pcl_text} id"
      id = gets.chomp.to_i
    else
      puts "Enter #{@pcl_text} name."
      name=gets.chomp
    end 
  
    return id, name
  end
end
  

  


  