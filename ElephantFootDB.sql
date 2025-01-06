CREATE TABLE [User] (
    UserID INT PRIMARY KEY IDENTITY(1,1),
    UserName NVARCHAR(255) NOT NULL,
    Email NVARCHAR(255) NOT NULL UNIQUE,
    Password NVARCHAR(MAX) NOT NULL,
    Address NVARCHAR(255),
    Phone NVARCHAR(15) CHECK (Phone LIKE '[0-9]%'),
    Role NVARCHAR(50) DEFAULT 'Customer' CHECK (Role IN ('Admin', 'Customer')),
    Available BIT DEFAULT 1
);

INSERT INTO User (UserName, Email, Password, Address, Phone, Role, Available)
VALUES 
('John Smith', 'john.smith@example.com', 'hashed_password1', '123 Main St', '0123456789', 'Customer', 1),
('Jane Doe', 'jane.doe@example.com', 'hashed_password2', '456 Elm St', '0987654321', 'Admin', 1),
('Alice Johnson', 'alice.johnson@example.com', 'hashed_password3', '789 Maple St', '0192837465', 'Customer', 1),
('Bob Brown', 'bob.brown@example.com', 'hashed_password4', '321 Oak St', '0918273645', 'Customer', 1),
('Carol White', 'carol.white@example.com', 'hashed_password5', '654 Pine St', '0812345678', 'Admin', 0),
('David Black', 'david.black@example.com', 'hashed_password6', '987 Cedar St', '0712345678', 'Customer', 1),
('Eve Green', 'eve.green@example.com', 'hashed_password7', '111 Birch St', '0612345678', 'Admin', 1),
('Frank Grey', 'frank.grey@example.com', 'hashed_password8', '222 Walnut St', '0512345678', 'Customer', 0),
('Grace Brown', 'grace.brown@example.com', 'hashed_password9', '333 Chestnut St', '0412345678', 'Customer', 1),
('Hank Blue', 'hank.blue@example.com', 'hashed_password10', '444 Redwood St', '0312345678', 'Customer', 1),
('Ivy Gold', 'ivy.gold@example.com', 'hashed_password11', '555 Spruce St', '0212345678', 'Admin', 1),
('Jack Silver', 'jack.silver@example.com', 'hashed_password12', '666 Cypress St', '0112345678', 'Customer', 1),
('Kate Copper', 'kate.copper@example.com', 'hashed_password13', '777 Sequoia St', '0102030405', 'Customer', 1),
('Leo Zinc', 'leo.zinc@example.com', 'hashed_password14', '888 Willow St', '0911223344', 'Admin', 0),
('Mia Quartz', 'mia.quartz@example.com', 'hashed_password15', '999 Poplar St', '0988112233', 'Customer', 1),
('Nina Pearl', 'nina.pearl@example.com', 'hashed_password16', '1010 Sycamore St', '0977112233', 'Admin', 1),
('Owen Jet', 'owen.jet@example.com', 'hashed_password17', '1111 Aspen St', '0966112233', 'Customer', 1),
('Paul Jade', 'paul.jade@example.com', 'hashed_password18', '1212 Hickory St', '0955112233', 'Customer', 0),
('Quinn Onyx', 'quinn.onyx@example.com', 'hashed_password19', '1313 Fir St', '0944112233', 'Admin', 1),
('Rose Ruby', 'rose.ruby@example.com', 'hashed_password20', '1414 Alder St', '0933112233', 'Admin', 1);

CREATE TABLE Category (
    CategoryId INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(255) NOT NULL
);

INSERT INTO Category (Name) VALUES
('Fiction'),
('Non-Fiction'),
('Science'),
('History'),
('Fantasy'),
('Biography'),
('Romance'),
('Mystery'),
('Thriller'),
('Self-Help');

CREATE TABLE Author (
    AuthorId INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(255) NOT NULL,
    Biography NVARCHAR(MAX)
);

INSERT INTO Author (Name, Biography) VALUES
('J.K. Rowling', 'Author of the Harry Potter series'),
('George R.R. Martin', 'Author of A Song of Ice and Fire series'),
('Isaac Newton', 'Physicist and mathematician, author of Principia Mathematica'),
('Yuval Noah Harari', 'Author of Sapiens: A Brief History of Humankind'),
('Jane Austen', 'Author of Pride and Prejudice and Sense and Sensibility'),
('Mark Twain', 'Author of The Adventures of Tom Sawyer and Huckleberry Finn'),
('Agatha Christie', 'Author of detective novels, including Hercule Poirot and Miss Marple'),
('Harper Lee', 'Author of To Kill a Mockingbird'),
('J.R.R. Tolkien', 'Author of The Lord of the Rings and The Hobbit'),
('Stephen King', 'Author of horror novels such as It, The Shining, and Carrie');



CREATE TABLE Book (
    BookId INT PRIMARY KEY IDENTITY(1,1),
    Title NVARCHAR(255) NOT NULL,
    Description NVARCHAR(MAX),
    PublicationDate DATE,
	Price DECIMAL(18, 2) NOT NULL DEFAULT 0.00,
    Quantity INT DEFAULT 0 CHECK (Quantity >= 0),
	Available BIT NOT NULL DEFAULT 1,
    CategoryId INT NOT NULL,
    AuthorId INT NOT NULL,
    CONSTRAINT FK_Book_Category FOREIGN KEY (CategoryId) REFERENCES Category(CategoryId),
    CONSTRAINT FK_Book_Author FOREIGN KEY (AuthorId) REFERENCES Author(AuthorId)
);

INSERT INTO Book (Title, Description, PublicationDate, Price, Quantity, Available, CategoryId, AuthorId) VALUES
-- Books by J.K. Rowling
('Harry Potter and the Philosopher''s Stone', 'The first book in the Harry Potter series.', '1997-06-26', 19.99, 50, 1, 1, 1),
('Harry Potter and the Chamber of Secrets', 'The second book in the Harry Potter series.', '1998-07-02', 19.99, 45, 1, 1, 1),

-- Books by George R.R. Martin
('A Game of Thrones', 'The first book in A Song of Ice and Fire series.', '1996-08-06', 24.99, 30, 1, 2, 2),
('A Clash of Kings', 'The second book in A Song of Ice and Fire series.', '1998-11-16', 24.99, 25, 1, 2, 2),

-- Books by Isaac Newton
('Philosophiæ Naturalis Principia Mathematica', 'Newton''s work on the laws of motion and universal gravitation.', '1687-07-05', 99.99, 10, 1, 3, 3),

-- Books by Yuval Noah Harari
('Sapiens: A Brief History of Humankind', 'An exploration of the history and impact of humanity.', '2011-01-01', 29.99, 40, 1, 4, 4),
('Homo Deus: A Brief History of Tomorrow', 'A speculative look at the future of humanity.', '2015-01-01', 29.99, 35, 1, 4, 4),

-- Books by Jane Austen
('Pride and Prejudice', 'A romantic novel of manners.', '1813-01-28', 14.99, 60, 1, 5, 5),
('Sense and Sensibility', 'A novel about love and social standings.', '1811-10-30', 14.99, 55, 1, 5, 5),

-- Books by Mark Twain
('The Adventures of Tom Sawyer', 'A novel about a young boy growing up along the Mississippi River.', '1876-06-01', 12.99, 50, 1, 6, 6),
('Adventures of Huckleberry Finn', 'A story about the adventures of Huck Finn and his friend Jim.', '1885-12-10', 13.99, 45, 1, 6, 6),

-- Books by Agatha Christie
('Murder on the Orient Express', 'A famous Hercule Poirot detective novel.', '1934-01-01', 9.99, 70, 1, 7, 7),
('The Murder of Roger Ackroyd', 'A classic whodunit novel by Christie.', '1926-01-01', 9.99, 65, 1, 7, 7),

-- Books by Harper Lee
('To Kill a Mockingbird', 'A novel about racial injustice in the Deep South.', '1960-07-11', 18.99, 80, 1, 8, 8),

-- Books by J.R.R. Tolkien
('The Hobbit', 'A fantasy novel about Bilbo Baggins and his adventure.', '1937-09-21', 15.99, 100, 1, 9, 9),
('The Lord of the Rings: The Fellowship of the Ring', 'The first book in The Lord of the Rings trilogy.', '1954-07-29', 20.99, 90, 1, 9, 9),

-- Books by Stephen King
('The Shining', 'A horror novel about the Overlook Hotel.', '1977-01-28', 19.99, 40, 1, 10, 10),
('It', 'A horror novel about a shape-shifting entity.', '1986-09-15', 21.99, 35, 1, 10, 10);


CREATE TABLE [Order] (
    OrderId INT PRIMARY KEY IDENTITY(1,1), 
    OrderDate DATETIME NOT NULL DEFAULT GETDATE(), 
    UserId INT NOT NULL,
    TotalAmount DECIMAL(18, 2) NOT NULL CHECK (TotalAmount >= 0),
    CONSTRAINT FK_Order_User FOREIGN KEY (UserId) REFERENCES [User](UserID)
);

INSERT INTO [Order] (OrderDate, UserId, TotalAmount)
VALUES
('2024-12-01', 1, 250.00),
('2024-12-02', 2, 180.50),
('2024-12-03', 3, 320.00), 
('2024-12-04', 4, 150.75),  
('2024-12-05', 5, 500.60), 
('2024-12-06', 6, 120.20), 
('2024-12-07', 7, 220.10), 
('2024-12-08', 8, 410.90),  
('2024-12-09', 9, 300.00),  
('2024-12-10', 10, 450.40); 

CREATE TABLE OrderDetail (
    OrderDetailId INT PRIMARY KEY IDENTITY(1,1),
    OrderId INT NOT NULL, 
    BookId INT NOT NULL, 
    Quantity INT NOT NULL CHECK (Quantity > 0), 
    Price DECIMAL(18, 2) NOT NULL, 
    CONSTRAINT FK_OrderDetail_Order FOREIGN KEY (OrderId) REFERENCES [Order](OrderId), 
    CONSTRAINT FK_OrderDetail_Book FOREIGN KEY (BookId) REFERENCES Book(BookId) 
);

INSERT INTO OrderDetail (OrderId, BookId, Quantity, Price)
VALUES
(1, 1, 2, 25.00), 
(1, 2, 1, 50.00),  
(1, 3, 3, 40.00), 
(1, 4, 1, 30.00), 
(2, 1, 2, 25.00),  
(2, 2, 1, 50.00),  
(2, 5, 3, 45.00),  
(2, 6, 1, 35.00), 
(3, 3, 2, 40.00), 
(3, 4, 2, 30.00), 
(3, 5, 1, 45.00), 
(3, 7, 1, 25.00),  
(4, 2, 3, 50.00), 
(4, 3, 1, 40.00),  
(4, 6, 2, 35.00), 
(4, 8, 1, 60.00), 
(5, 1, 4, 25.00), 
(5, 5, 2, 45.00), 
(5, 9, 1, 50.00),  
(5, 10, 3, 40.00), 
(6, 4, 1, 30.00),  
(6, 2, 2, 50.00),  
(6, 7, 3, 25.00),  
(7, 3, 1, 40.00), 
(7, 6, 2, 35.00), 
(7, 8, 1, 60.00),  
(8, 5, 1, 45.00),  
(8, 9, 2, 50.00),  
(8, 10, 1, 40.00), 
(9, 2, 2, 50.00),  
(9, 3, 1, 40.00),  
(9, 7, 3, 25.00),  
(10, 1, 5, 25.00); 