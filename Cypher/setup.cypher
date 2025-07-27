// Create Products
CREATE (p1:Product {id: 1, name: "Macbook Air", category: "Laptop"});
CREATE (p2:Product {id: 2, name: "Smartphone", category: "Phone"});
CREATE (p3:Product {id: 3, name: "Wireless Earbuds", category: "Audio"});
CREATE (p4:Product {id: 4, name: "Gaming Laptop", category: "Laptop"});
CREATE (p5:Product {id: 5, name: "Smartwatch", category: "Wearable"});

// Create Customers
CREATE (c1:Customer {id: 101, name: "Ishini"});
CREATE (c2:Customer {id: 102, name: "Gamage"});
CREATE (c3:Customer {id: 103, name: "Tom"});
CREATE (c4:Customer {id: 104, name: "Jane"});

// Create PURCHASED Relationships
CREATE (c1)-[:PURCHASED {date: date("2024-01-10")}]->(p1);
CREATE (c1)-[:PURCHASED {date: date("2024-01-12")}]->(p3);
CREATE (c2)-[:PURCHASED {date: date("2024-01-13")}]->(p2);
CREATE (c3)-[:PURCHASED {date: date("2024-01-14")}]->(p1);
CREATE (c3)-[:PURCHASED {date: date("2024-01-15")}]->(p4);
CREATE (c4)-[:PURCHASED {date: date("2024-01-16")}]->(p5);
CREATE (c4)-[:PURCHASED {date: date("2024-01-17")}]->(p2);
