/**
 * MIT License
 * <p>
 * Copyright (c) 2023 Sérgio Lopes
 * https:www.sergiolopes.eu, knitter.is@gmail.com
 * <p>
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * <p>
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 * <p>
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */
package eu.sergiolopes.codices.controllers;

import eu.sergiolopes.codices.models.Author;
import eu.sergiolopes.codices.models.Item;
import eu.sergiolopes.codices.models.Publisher;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.Label;
import javafx.scene.layout.BorderPane;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

public class AudioBookController extends BorderPane {

    private Item book;
    @FXML
    private Label itemTitle;
    @FXML
    private Label itemAuthor;
    @FXML
    private Label itemPublisher;
    @FXML
    private Label itemDate;
    @FXML
    private Label itemDescription;

    public AudioBookController() {
        URL path = getClass().getResource("audiobook-details.fxml");
        FXMLLoader fxmlLoader = new FXMLLoader(path);
        fxmlLoader.setRoot(this);
        fxmlLoader.setController(this);

        try {
            fxmlLoader.load();
        } catch (IOException exception) {
            throw new RuntimeException(exception);
        }
    }

    private void clearDetailsData() {
        //TODO: ... check if needed, delete if not
    }

    public void setDetailsData(Item book) {
        this.book = book;

        itemTitle.setText(book.getTitle());
        List<Author> authors = book.getAuthors();
        String authorsString = "?";
        if (authors != null && !authors.isEmpty()) {
            List names = new ArrayList(authors.size());
            for (Author author : authors) {
                names.add(author.getFullName());
            }

            authorsString = String.join("; ", names);
        }
        itemAuthor.setText("by " + authorsString);

        Publisher publisher = book.getPublisher();
        if (publisher != null) {
            itemPublisher.setText("published by " + publisher.getName());
        }

        String description = book.getPlot() != null ? book.getPlot() : "";
        if (description.isBlank()) {
            description = "No description provided.";
        }

        itemDescription.setText(description);
    }
}