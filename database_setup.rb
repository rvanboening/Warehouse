DATABASE = SQLite3::Database.new("farmyard.db")

DATABASE.results_as_hash = true

DATABASE.execute("CREATE TABLE IF NOT EXISTS item (id INTEGER PRIMARY KEY, 
                  item_name TEXT, category INTEGER, location INTEGER, 
                  quanity INTEGER, cost INTEGER, description TEXT)")
                  
DATABASE.execute("CREATE TABLE IF NOT EXISTS categories (id INTEGER PRIMARY KEY, 
                  name TEXT)")
                  
DATABASE.execute("CREATE TABLE IF NOT EXISTS location (id INTEGER PRIMARY KEY, 
                  name TEXT)")
                  
