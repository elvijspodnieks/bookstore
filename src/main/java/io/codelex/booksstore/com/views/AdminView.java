package io.codelex.booksstore.com.views;

import com.vaadin.flow.component.Component;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.button.ButtonVariant;
import com.vaadin.flow.component.grid.Grid;
import com.vaadin.flow.component.html.H1;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.textfield.TextField;
import com.vaadin.flow.data.binder.Binder;
import com.vaadin.flow.data.binder.ValidationException;
import com.vaadin.flow.router.Route;
import io.codelex.booksstore.com.controllers.BookController;
import io.codelex.booksstore.com.models.Book;
import io.codelex.booksstore.com.service.BookService;
import jakarta.annotation.security.RolesAllowed;

import java.util.List;

@Route("admin")
@RolesAllowed("ADMIN")
public class AdminView extends VerticalLayout {
    private final BookController bookController;
    private final TextField title = new TextField("Title");
    private final TextField author = new TextField("Author");
    private final Grid<Book> grid = new Grid<>(Book.class, false);
    private final Binder<Book> binder = new Binder<>(Book.class);

    public AdminView(BookController controller) {
        this.bookController = controller;

        add(new H1("Bookstore.com Admin"));
        Grid<Book> grid = new Grid<>(Book.class, false);
        grid.addColumn(Book::getTitle).setHeader("Title");
        grid.addColumn(Book::getAuthor).setHeader("Author");
        grid.setHeight("600px");
        List<Book> books = bookController.findAllBooks();
        grid.setItems(books);
        add(getForm(), grid);
    }

    private Component getForm() {
        var layout = new HorizontalLayout();
        layout.setAlignItems(Alignment.BASELINE);

        var addButton = new Button("Add");
        addButton.addThemeVariants(ButtonVariant.LUMO_PRIMARY);
        layout.add(title, author, addButton);

        binder.bindInstanceFields(this);
        addButton.addClickListener(click -> {

            try {
                var book = new Book();
                binder.writeBean(book);
                bookController.saveBook(book);
                refreshGrid();
                title.clear();
                author.clear();
            } catch (ValidationException ignored) {
            }
        });
        return layout;
    }

    private void refreshGrid() {
        grid.setItems(bookController.findAllBooks());
    }
}