package io.codelex.booksstore.com.views;

import com.vaadin.flow.component.Composite;
import com.vaadin.flow.component.login.LoginOverlay;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;

@Route("login")
@PageTitle("Login | Vaadin CRM")
public class LoginView extends Composite<LoginOverlay> {
    public LoginView(){
        getContent().setOpened(true);
        getContent().setAction("login");
    }
}
