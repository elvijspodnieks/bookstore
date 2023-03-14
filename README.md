# Bookstore
---
### Project Description

Java spring web application for book database with a function where the administrator can add new ones.

---
### Front-end:
Vaadin

### Back-end:
Spring Boot, Spring Security, Hibernate, MySQL

### Tools:
Maven

## Functionalities implemented:
### For users:
1. List of books

### For admin:
1. List of books
2. Login
3. Add new book

### Admin login information:
username: admin
password: admin

## Create and import a data sample
Extract the download file.<br>
Create and change your database information follow `src/main/resources/application.properties` file
```
  spring.datasource.url = jdbc:mysql://localhost:3306/booksstore
  spring.datasource.username = root
  spring.datasource.password = password
```

Import `booksstore_books.sql` file into your database system.

Copy this project: `git@github.com:elvijspodnieks/bookstore.git`

### Requirements:
1. Have Java installed on your system. You can download it here https://www.java.com/download/
2. Has Apache Maven installed on your system. You can download it from the official website at https://maven.apache.
   org/download.cgi <br />
   
   
### Launch from your IDE
You can run the app from a IDE that supports Apache Maven, such as IntelliJ IDEA,
Eclipse, or NetBeans. To do this, You can import your Maven-based Spring Boot project into the IDE and use the IDE's built-in support for Maven to run the application.

Application is using a port 8080


![bookstore](https://user-images.githubusercontent.com/84780001/225000870-a024e48c-dfe6-45c2-8baf-53ec276bcac1.gif)

---
