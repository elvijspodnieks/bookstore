package io.codelex.booksstore.com.service;

import io.codelex.booksstore.com.models.Book;
import io.codelex.booksstore.com.repository.BookRepository;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookService {
    private final BookRepository bookRepository;

    public BookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    public Book saveBook(Book book) {
        if (checkIfAlreadyInList(book)) {
            throw new RuntimeException("Book already exists");
        } else {
            bookRepository.save(book);
        }
        return book;
    }

    public List<Book> getBooks() {
        return bookRepository.findAll(Sort.by(Sort.Direction.DESC, "time"));
    }

    public boolean checkIfAlreadyInList(Book book) {
        return bookRepository
                .findAll()
                .stream()
                .anyMatch(b -> b.getTitle().equals(book.getTitle()));
    }
}