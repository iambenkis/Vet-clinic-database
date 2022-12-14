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

INSERT INTO vets (name, date_of_graduation, age) VALUES ('William Tatcher','2000-04-23', 45 );
INSERT INTO vets (name, date_of_graduation, age) VALUES ('Maisy Smith','2019-01-17', 26);
INSERT INTO vets (name, date_of_graduation, age) VALUES ('Stephanie Mendez','1981-05-04', 64);
INSERT INTO vets (name, date_of_graduation, age) VALUES ('Jack Harkness','2008-06-08', 38);

INSERT INTO specializations (vets_id, species_id) VALUES
(1,1),
(3,1),
(3,2),
(4,1);

Gabumon visited Jack Harkness on Feb 2nd, 2021.
Pikachu visited Maisy Smith on Jan 5th, 2020.
Pikachu visited Maisy Smith on Mar 8th, 2020.
Pikachu visited Maisy Smith on May 14th, 2020.
Devimon visited Stephanie Mendez on May 4th, 2021.
Charmander visited Jack Harkness on Feb 24th, 2021.
Plantmon visited Maisy Smith on Dec 21st, 2019.
Plantmon visited William Tatcher on Aug 10th, 2020.
Plantmon visited Maisy Smith on Apr 7th, 2021.
Squirtle visited Stephanie Mendez on Sep 29th, 2019.
Angemon visited Jack Harkness on Oct 3rd, 2020.
Angemon visited Jack Harkness on Nov 4th, 2020.
Boarmon visited Maisy Smith on Jan 24th, 2019.
Boarmon visited Maisy Smith on May 15th, 2019.
Boarmon visited Maisy Smith on Feb 27th, 2020.
Boarmon visited Maisy Smith on Aug 3rd, 2020.
Blossom visited Stephanie Mendez on May 24th, 2020.
Blossom visited William Tatcher on Jan 11th, 2021.

INSERT INTO visits (animals_id,vets_id,date_of_visit) VALUES
  (1, 1, '2020-05-24'),
  (1, 3, '2020-07-22'),
  (2, 4, '2021-02-02'),
  (3, 2, '2020-01-05'),
  (3, 2, '2020-03-08'),
  (3, 2, '2020-05-14'),
  (4, 3, '2021-05-04'),
  (5, 4, '2021-02-24'),
  (6, 2, '2019-12-21'),
  (6, 1, '2020-08-10'),
  (6, 2, '2021-04-07'),
  (7, 3, '2019-09-29'),
  (8, 4, '2020-10-03'),
  (8, 4, '2020-11-04'),
  (9, 2, '2019-01-24'),
  (9, 2, '2019-05-15'),
  (9, 2, '2020-02-27'),
  (9, 2, '2020-08-03'),
  (10, 3, '2020-05-24'),
  (10, 1, '2021-01-11');

