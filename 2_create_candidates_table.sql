-- Create the candidates table
CREATE TABLE IF NOT EXISTS candidates (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL UNIQUE
);

-- Insert default candidates into the candidates table
INSERT INTO candidates (name) VALUES ('Alice');
INSERT INTO candidates (name) VALUES ('Bob');
INSERT INTO candidates (name) VALUES ('Charlie');
