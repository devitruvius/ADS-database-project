-- SISTEMA ACADÊMICO

-- Tabela "students"
CREATE TABLE IF NOT EXISTS students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    gender CHAR(1)
);

-- Tabela "instructors"
CREATE TABLE IF NOT EXISTS instructors (
    instructor_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    hire_date DATE,
    department VARCHAR(50)
);

-- Tabela "courses"
CREATE TABLE IF NOT EXISTS courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    credits INT,
    instructor_id INT,
    FOREIGN KEY (instructor_id) REFERENCES instructors(instructor_id)
);

-- Tabela "enrollments"
CREATE TABLE IF NOT EXISTS enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    enrollment_date DATE,
    grade DECIMAL(3, 2),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- GERENCIAMENTO DE LIVRARIA

-- Tabela "books"
CREATE TABLE IF NOT EXISTS books (
    book_id INT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    author VARCHAR(100),
    publication_date DATE,
    genre VARCHAR(50),
    price DECIMAL(10, 2) NOT NULL
);

-- Tabela "book_reviews"
CREATE TABLE IF NOT EXISTS book_reviews (
    review_id INT PRIMARY KEY,
    book_id INT NOT NULL,
    student_id INT NOT NULL,
    review_date DATE,
    rating INT,
    review_text TEXT NOT NULL,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

-- Tabela "employees"
CREATE TABLE IF NOT EXISTS employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    job_title VARCHAR(50) NOT NULL,
    hire_date DATE,
    salary DECIMAL(10, 2)
);

-- Tabela "bookstore_departments"
CREATE TABLE IF NOT EXISTS bookstore_departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    manager_id INT,
    location VARCHAR(100),
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
);

-- Tabela "customers"
CREATE TABLE IF NOT EXISTS customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    address VARCHAR(200),
    age INT
);

-- Tabela "orders"
CREATE TABLE IF NOT EXISTS orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    shipping_address VARCHAR(200),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Tabela "order_items"
CREATE TABLE IF NOT EXISTS order_items (
    item_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);