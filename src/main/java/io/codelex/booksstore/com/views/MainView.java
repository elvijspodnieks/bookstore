package io.codelex.booksstore.com.views;

import com.vaadin.flow.component.grid.Grid;
import com.vaadin.flow.component.html.H1;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.Route;
import com.vaadin.flow.router.RouterLink;
import com.vaadin.flow.server.auth.AnonymousAllowed;
import io.codelex.booksstore.com.models.Book;
import io.codelex.booksstore.com.service.BookService;

import java.util.List;

@Route("")
@AnonymousAllowed
public class MainView extends VerticalLayout {
    private final BookService service;

    public MainView(BookService service) {
        this.service = service;

        H1 users = new H1("Bookstore.com");
        users.getStyle().set("margin", "0 auto 0 0");
        RouterLink link = new RouterLink("Login", AdminView.class);
        HorizontalLayout header = new HorizontalLayout(users, link);
        header.setAlignItems(Alignment.CENTER);
        header.getThemeList().clear();

        Grid<Book> grid = new Grid<>(Book.class, false);
        grid.addColumn(Book::getTitle).setHeader("Title");
        grid.addColumn(Book::getAuthor).setHeader("Author");
        grid.setHeight("600px");

        List<Book> books = service.getBooks();
        grid.setItems(books);
        setAlignItems(Alignment.STRETCH);
        add(header, grid);
    }
}