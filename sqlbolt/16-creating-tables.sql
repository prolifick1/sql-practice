-- SQLBolt 16: CREATING TABLES

-- Create a new table named Database with the following columns: Name -- a string, Version -- a number (floating point) of the latest version of this database, Download_count -- an integer count of the number of times this database was downloaded

CREATE TABLE Database (
    Name TEXT,
    Version FLOAT,
    Download_count INTEGER
);