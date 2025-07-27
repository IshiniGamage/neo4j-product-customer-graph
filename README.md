# neo4j-product-customer-graph
A simple graph database that models customers, products, and their purchases using Neo4j and Cypher.


# Neo4j Product & Customer Graph

This project models a basic e-commerce system using Neo4j. It includes:

- `Customer` nodes
- `Product` nodes
- `PURCHASED` relationships

## 📦 Example Use Case

This graph allows us to answer questions like:

- Which customers purchased which products?
- What products are popular among customers?
- Are there common products bought by multiple customers?

## 📊 Data Structure

- `(:Customer {id, name})`
- `(:Product {id, name, category})`
- `(:Customer)-[:PURCHASED {date}]->(:Product)`

## 🚀 How to Use

1. Open Neo4j Browser (e.g., Neo4j Aura Free)
2. Run the script in `cypher/setup.cypher`
3. Query your graph!

## 🔗 Example Queries

```cypher
// Find all products bought by Ishini
MATCH (c:Customer {name: "Ishini"})-[:PURCHASED]->(p:Product)
RETURN p;

// Find all customers who bought laptops
MATCH (p:Product {category: "Laptop"})<-[:PURCHASED]-(c:Customer)
RETURN c.name;
