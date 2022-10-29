/* Populate database with sample data. */
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Agumon', '2020-02-03', 0, TRUE, 10.23 );
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Gabumon', '2018-11-15', 2, TRUE, 8 );
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Pikachu', '2021-01-07', 1, FALSE, 15.04 );
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Devimon', '2017-05-12', 5, TRUE, 11 );

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Charmander', '2020-02-08', 0, FALSE, -11 );
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Plantmon', '2021-11-15', 2, TRUE, -5.7 );
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Squirtle', '1993-04-02', 3, FALSE, -12.13 );
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Angermon', '2005-06-12', 1, TRUE, -45 );
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Boarmon', '2005-06-07', 7, TRUE, 20.4 );
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Blossom', '1998-10-13', 3, TRUE, 17 );
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Ditto', '2022-05-14', 4, TRUE, 22 );

-- Insert data into the owners table
INSERT INTO owners (full_name, age) VALUES ('Sam Smith', 34 );
INSERT INTO owners (full_name, age) VALUES ('Jennifer Orwell', 19 );
INSERT INTO owners (full_name, age) VALUES ('Bob', 45);
INSERT INTO owners (full_name, age) VALUES ('Melody Pond', 77 );
INSERT INTO owners (full_name, age) VALUES ('Dean Winchester', 14 );
INSERT INTO owners (full_name, age) VALUES ('Jodie Whittaker', 38 );

-- Insert data into the species table
INSERT INTO species (full_name) VALUES ('Pokemon');
INSERT INTO species (full_name) VALUES ('Digimon');

-- Update inserted animals so it include species_id
UPDATE animals SET species_id = 1 WHERE name LIKE '%mon%';
UPDATE animals SET species_id = 2 WHERE name NOT LIKE '%mon%';

-- Update inserted animals so it include owner_id
UPDATE animals SET owner_id = 11 WHERE name = 'Agumon';
UPDATE animals SET owner_id = 12 WHERE name = 'Gabumon' or name = 'Pikachu';
UPDATE animals SET owner_id = 13 WHERE name = 'Devimon' or name = 'Plantmon';
UPDATE animals SET owner_id = 14 WHERE name = 'Charmander' or name = 'Squirtle' or name = 'Blossom';
UPDATE animals SET owner_id = 15 WHERE name = 'Angemon' or name = 'Boarmon';
