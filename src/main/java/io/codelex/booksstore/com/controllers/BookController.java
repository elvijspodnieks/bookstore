package io.codelex.booksstore.com.controllers;

import io.codelex.booksstore.com.models.Book;
import io.codelex.booksstore.com.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class BookController {

    @Autowired
    private BookService service;

    public BookController(BookService service){
        this.service = service;
    }

    @PostMapping("/addBook")
    @ResponseStatus(HttpStatus.CREATED)
    public Book saveBook(@RequestBody Book book){
        return service.saveBook(book);
    }

    @GetMapping("/books")
    public List<Book> findAllBooks(){
        return service.getBooks();
    }

}