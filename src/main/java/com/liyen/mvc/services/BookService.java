package com.liyen.mvc.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.liyen.mvc.models.Book;
import com.liyen.mvc.repositories.BookRepository;

@Service
public class BookService {
	private final BookRepository bookRepository;
	
	public BookService(BookRepository bookRepository) {
		this.bookRepository = bookRepository;
	}
	
    // returns all the books
    public List<Book> allBooks() {
        return bookRepository.findAll();
    }
    // creates a book
    public Book createBook(Book b) {
        return bookRepository.save(b);
    }
    // retrieves a book
    public Book findBook(Long id) {
        Optional<Book> optionalBook = bookRepository.findById(id);
        if(optionalBook.isPresent()) {
            return optionalBook.get();
        } else {
            return null;
        }
    }
    
    //update a book
    public Book updateBook(Long id, String title, String desc, String lang, int pages) {
    	Book book = findBook(id);
    	book.setTitle(title);
    	book.setDescription(desc);
    	book.setLanguage(lang);
    	book.setNumberOfPages(pages);
    	return bookRepository.save(book);
    }
    
    //delete a book by id
    public void deleteBook(Long id) {
    	bookRepository.deleteById(id);
    }
	
	
}
