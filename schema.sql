-- schema.sql

-- Drop existing table if it exists
DROP TABLE IF EXISTS votes;

-- Table to store votes
CREATE TABLE votes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    candidate TEXT NOT NULL,
    voted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Optional: Table to list available candidates
DROP TABLE IF EXISTS candidates;

CREATE TABLE candidates (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE
);

-- Insert default candidates
INSERT INTO candidates (name) VALUES ('Alice');
INSERT INTO candidates (name) VALUES ('Bob');
INSERT INTO candidates (name) VALUES ('Charlie');
