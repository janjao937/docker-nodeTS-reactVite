-- สร้างฐานข้อมูล (ถ้ายังไม่มี)
CREATE DATABASE IF NOT EXISTS e-comerce-db;

-- ใช้งานฐานข้อมูล
USE e-comerce-db;

-- สร้างตาราง `users`
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- เพิ่มข้อมูลตัวอย่าง
INSERT INTO users (username, email, password) VALUES
    ('boonyakit', 'boonyakit@example.com', 'hashed_password_123'),
    ('johndoe', 'john@example.com', 'hashed_password_456');
