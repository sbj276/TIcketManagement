DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS suppliers;


-- Creating the tables (if not already created)
CREATE TABLE IF NOT EXISTS categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS suppliers (
    supplier_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    contact_info VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    category_id INT,
    supplier_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id),
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);

-- Insert Categories (10 distinct categories)
INSERT INTO categories (name) VALUES
    ('Electronics'), ('Clothing'), ('Books'), ('Home Appliances'), ('Groceries'),
    ('Toys'), ('Sports'), ('Furniture'), ('Tools'), ('Gardening');

-- Insert Suppliers (10 distinct suppliers)
INSERT INTO suppliers (name, contact_info) VALUES
    ('Tech Solutions Inc.', 'contact@techsolutions.com'),
    ('Fashion World Ltd.', 'sales@fashionworld.com'),
    ('Bookworm Publishers', 'info@bookworm.com'),
    ('Appliance Masters', 'support@appliancemasters.com'),
    ('Fresh Foods Corp.', 'orders@freshfoods.com'),
    ('Toy Galaxy', 'toys@galaxy.com'),
    ('Sports Zone', 'sports@zone.com'),
    ('Home Furnishers', 'furniture@home.com'),
    ('Tool Time Inc.', 'tools@time.com'),
    ('Green Thumb Supplies', 'garden@green.com');

-- Insert Products (50 rows)
INSERT INTO products (name, description, quantity, price, category_id, supplier_id) VALUES
    ('Laptop', 'High-performance laptop', 10, 1200.00, 1, 1),
    ('Smartphone', 'Latest model smartphone', 20, 800.00, 1, 1),
    ('T-Shirt', 'Cotton t-shirt', 50, 25.00, 2, 2),
    ('Jeans', 'Denim jeans', 30, 50.00, 2, 2),
    ('Novel', 'Fiction novel', 100, 15.00, 3, 3),
    ('Cookbook', 'Vegetarian cookbook', 20, 30.00, 3, 3),
    ('Refrigerator', 'Large refrigerator', 5, 1000.00, 4, 4),
    ('Washing Machine', 'Automatic washing machine', 8, 700.00, 4, 4),
    ('Apples', 'Fresh apples', 200, 2.00, 5, 5),
    ('Bread', 'Whole wheat bread', 150, 3.50, 5, 5),
    ('Action Figure', 'Superhero action figure', 80, 12.00, 6, 6),
    ('Board Game', 'Family board game', 40, 25.00, 6, 6),
    ('Basketball', 'Official size basketball', 30, 35.00, 7, 7),
    ('Running Shoes', 'Athletic running shoes', 25, 60.00, 7, 7),
    ('Sofa', 'Leather sofa', 10, 800.00, 8, 8),
    ('Dining Table', 'Wooden dining table', 15, 500.00, 8, 8),
    ('Hammer', 'Heavy duty hammer', 60, 18.00, 9, 9),
    ('Screwdriver Set', 'Precision screwdriver set', 45, 22.00, 9, 9),
    ('Garden Hose', '50-foot garden hose', 35, 28.00, 10, 10),
    ('Plant Seeds', 'Variety of flower seeds', 120, 5.00, 10, 10),
    ('Laptop', 'Basic laptop', 25, 900.00, 1, 1),
    ('Smartphone', 'Mid-range smartphone', 35, 600.00, 1, 6),
    ('Dress Shirt', 'Formal dress shirt', 40, 40.00, 2, 2),
    ('Skirt', 'Denim skirt', 20, 30.00, 2, 2),
    ('Mystery Novel', 'Suspense novel', 90, 18.00, 3, 3),
    ('Baking Book', 'Dessert baking book', 15, 28.00, 3, 3),
    ('Oven', 'Electric oven', 3, 900.00, 4, 4),
    ('Blender', 'High-speed blender', 12, 150.00, 4, 4),
    ('Oranges', 'Fresh oranges', 250, 1.50, 5, 5),
    ('Pasta', 'Whole wheat pasta', 180, 2.80, 5, 5),
    ('Remote Control Car', 'Electric RC car', 50, 30.00, 6, 6),
    ('Puzzle', '1000-piece puzzle', 30, 15.00, 6, 6),
    ('Soccer Ball', 'Regulation soccer ball', 40, 25.00, 7, 7),
    ('Yoga Mat', 'Non-slip yoga mat', 30, 20.00, 7, 7),
    ('Coffee Table', 'Glass coffee table', 8, 250.00, 8, 8),
    ('Bookcase', 'Wooden bookcase', 12, 300.00, 8, 8),
    ('Wrench Set', 'Adjustable wrench set', 55, 25.00, 9, 9),
    ('Drill', 'Cordless drill', 20, 80.00, 9, 9),
    ('Lawn Mower', 'Electric lawn mower', 10, 200.00, 10, 10),
    ('Fertilizer', 'Organic fertilizer', 80, 10.00, 10, 10),
    ('Monitor', '27 inch monitor', 15, 250.00, 1, 1),
    ('Tablet', '10 inch tablet', 20, 300.00, 1, 6),
    ('Winter Coat', 'Water resistant winter coat', 25, 100.00, 2, 2),
    ('Socks', 'Cotton socks, 6 pack', 60, 12.00, 2, 2),
    ('Thriller', 'Psychological thriller book', 80, 17.00, 3, 3),
    ('Dessert Cookbook', 'French dessert recipe', 18, 32.00, 3, 3),
    ('Dishwasher', 'Energy efficient dishwasher', 6, 750.00, 4, 4),
    ('Microwave', 'Countertop microwave', 15, 120.00, 4, 4),
    ('Bananas', 'Ripe bananas', 300, 1.00, 5, 5),
    ('Rice', 'Long grain rice', 200, 4.00, 5, 5);