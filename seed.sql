-- Create `users` table
CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE
);

-- Insert initial data into `users` table
INSERT INTO users (name, email) VALUES
('John Doe', 'john@example.com'),
('Jane Doe', 'jane@example.com'),
('Alice Smith', 'alice.smith@example.com'),
('Bob Johnson', 'bob.johnson@example.com'),
('Charlie Brown', 'charlie.brown@example.com'),
('David Davis', 'david.davis@example.com'),
('Edward Martin', 'edward.martin@example.com'),
('Frank Thomas', 'frank.thomas@example.com'),
('George King', 'george.king@example.com'),
('Harry Wilson', 'harry.wilson@example.com'),
('Ivan Thompson', 'ivan.thompson@example.com'),
('Jack Taylor', 'jack.taylor@example.com'),
('Kevin White', 'kevin.white@example.com'),
('Louis Harris', 'louis.harris@example.com'),
('Michael Clark', 'michael.clark@example.com');